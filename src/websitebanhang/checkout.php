<?php
session_start();
require_once 'connect.php';

// Kiểm tra đăng nhập
if (!isset($_SESSION['user_id'])) {
    $_SESSION['redirect_after_login'] = 'checkout.php';
    header('Location: login_page.php');
    exit();
}

// Kiểm tra giỏ hàng
if (empty($_SESSION['cart'])) {
    header('Location: cart.php');
    exit();
}

$error = '';
$success = '';

// Xử lý đặt hàng
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $ho_ten = trim($_POST['ho_ten']);
    $dia_chi = trim($_POST['dia_chi']);
    $so_dien_thoai = trim($_POST['so_dien_thoai']);
    $ghi_chu = trim($_POST['ghi_chu'] ?? '');

    if (empty($ho_ten) || empty($dia_chi) || empty($so_dien_thoai)) {
        $error = 'Vui lòng điền đầy đủ thông tin giao hàng';
    } else {
        try {
            $conn->beginTransaction();

            // Tạo đơn hàng mới
            $stmt = $conn->prepare("INSERT INTO don_hang (id_nguoi_dung, ho_ten, dia_chi, so_dien_thoai, ghi_chu, trang_thai) 
                                  VALUES (?, ?, ?, ?, ?, 'Chờ xác nhận')");
            $stmt->execute([$_SESSION['user_id'], $ho_ten, $dia_chi, $so_dien_thoai, $ghi_chu]);
            $order_id = $conn->lastInsertId();

            // Thêm chi tiết đơn hàng
            $stmt = $conn->prepare("INSERT INTO chi_tiet_don_hang (id_don_hang, id_san_pham, so_luong, gia) 
                                  VALUES (?, ?, ?, ?)");

            foreach ($_SESSION['cart'] as $product_id => $item) {
                $stmt->execute([
                    $order_id,
                    $product_id,
                    $item['quantity'],
                    $item['price']
                ]);
            }

            $conn->commit();
            
            // Xóa giỏ hàng sau khi đặt hàng thành công
            unset($_SESSION['cart']);
            
            $success = 'Đặt hàng thành công! Chúng tôi sẽ sớm liên hệ với bạn.';
            header("refresh:2;url=orders.php");
        } catch (PDOException $e) {
            $conn->rollBack();
            $error = 'Có lỗi xảy ra, vui lòng thử lại sau';
            error_log($e->getMessage());
        }
    }
}

// Tính tổng tiền
$total = 0;
foreach ($_SESSION['cart'] as $item) {
    $total += $item['price'] * $item['quantity'];
}
?>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thanh toán - Fashion Store</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: #f4f6f9;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 1200px;
            margin: 80px auto 20px;
            padding: 0 20px;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
        }

        @media (max-width: 768px) {
            .container {
                grid-template-columns: 1fr;
            }
        }

        .checkout-form,
        .order-summary {
            background: white;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            padding: 20px;
        }

        .section-title {
            color: #333;
            margin-bottom: 20px;
            padding-bottom: 10px;
            border-bottom: 2px solid #eee;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            color: #555;
            font-weight: bold;
        }

        .form-group input,
        .form-group textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 16px;
        }

        .form-group textarea {
            height: 100px;
            resize: vertical;
        }

        .order-item {
            display: flex;
            align-items: center;
            padding: 10px 0;
            border-bottom: 1px solid #eee;
        }

        .order-item img {
            width: 60px;
            height: 60px;
            object-fit: cover;
            border-radius: 4px;
            margin-right: 15px;
        }

        .item-details {
            flex-grow: 1;
        }

        .item-name {
            font-weight: bold;
            margin-bottom: 5px;
        }

        .item-price {
            color: #666;
        }

        .total-amount {
            font-size: 1.2em;
            font-weight: bold;
            color: #28a745;
            margin: 20px 0;
            text-align: right;
        }

        .btn-order {
            background: #28a745;
            color: white;
            border: none;
            padding: 15px 30px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
        }

        .btn-order:hover {
            background: #218838;
        }

        .error-message {
            background: #ffe6e6;
            color: #dc3545;
            padding: 10px;
            border-radius: 4px;
            margin-bottom: 20px;
        }

        .success-message {
            background: #e6ffe6;
            color: #28a745;
            padding: 10px;
            border-radius: 4px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="checkout-form">
            <h2 class="section-title">Thông tin giao hàng</h2>

            <?php if ($error): ?>
                <div class="error-message"><?php echo htmlspecialchars($error); ?></div>
            <?php endif; ?>

            <?php if ($success): ?>
                <div class="success-message"><?php echo htmlspecialchars($success); ?></div>
            <?php endif; ?>

            <form method="POST" action="">
                <div class="form-group">
                    <label for="ho_ten">Họ và tên người nhận</label>
                    <input type="text" id="ho_ten" name="ho_ten" required>
                </div>

                <div class="form-group">
                    <label for="dia_chi">Địa chỉ giao hàng</label>
                    <textarea id="dia_chi" name="dia_chi" required></textarea>
                </div>

                <div class="form-group">
                    <label for="so_dien_thoai">Số điện thoại</label>
                    <input type="tel" id="so_dien_thoai" name="so_dien_thoai" required>
                </div>

                <div class="form-group">
                    <label for="ghi_chu">Ghi chú (tùy chọn)</label>
                    <textarea id="ghi_chu" name="ghi_chu"></textarea>
                </div>

                <button type="submit" class="btn-order">
                    <i class="fas fa-shopping-bag"></i> Đặt hàng
                </button>
            </form>
        </div>

        <div class="order-summary">
            <h2 class="section-title">Đơn hàng của bạn</h2>
            
            <?php foreach ($_SESSION['cart'] as $item): ?>
                <div class="order-item">
                    <img src="<?php echo htmlspecialchars($item['image']); ?>" 
                         alt="<?php echo htmlspecialchars($item['name']); ?>">
                    <div class="item-details">
                        <div class="item-name"><?php echo htmlspecialchars($item['name']); ?></div>
                        <div class="item-price">
                            <?php echo number_format($item['price'], 0, ',', '.'); ?>đ x <?php echo $item['quantity']; ?>
                        </div>
                    </div>
                    <div class="item-total">
                        <?php echo number_format($item['price'] * $item['quantity'], 0, ',', '.'); ?>đ
                    </div>
                </div>
            <?php endforeach; ?>

            <div class="total-amount">
                Tổng tiền: <?php echo number_format($total, 0, ',', '.'); ?>đ
            </div>
        </div>
    </div>
</body>
</html>

<?php
require_once 'connect.php';

// Lấy danh mục từ database
try {
    $stmt_categories = $conn->prepare("SELECT * FROM danh_muc");
    $stmt_categories->execute();
    $categories = $stmt_categories->fetchAll(PDO::FETCH_ASSOC);
} catch(PDOException $e) {
    echo "Lỗi truy vấn danh mục: " . $e->getMessage();
}

// Lấy sản phẩm từ database với thông tin danh mục
try {
    $sql = "SELECT sp.*, dm.ten_danh_muc 
            FROM san_pham sp
            INNER JOIN danh_muc dm ON sp.id = dm.id";
            
    $stmt_products = $conn->prepare($sql);
    $stmt_products->execute();
    $products = $stmt_products->fetchAll(PDO::FETCH_ASSOC);
} catch(PDOException $e) {
    echo "Lỗi truy vấn sản phẩm: " . $e->getMessage();
}

// Thêm vào đầu file
error_reporting(E_ALL);
ini_set('display_errors', 1);

// Trong phần xử lý phản hồi, thêm log
error_log("POST data: " . print_r($_POST, true));
// Cấu hình database và upload
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', '');
define('DB_NAME', 'ban_hang'); // Sửa từ 'chua_khmer' thành 'ban_hang'
define('UPLOAD_DIR', 'uploads/');
define('MAX_FILE_SIZE', 5 * 1024 * 1024); // 5MB

// Kết nối CSDL
$conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
if ($conn->connect_error) {
    die("Kết nối thất bại: " . $conn->connect_error);
}
$conn->set_charset("utf8mb4");
?>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sản Phẩm - Fashion Store</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&family=Playfair+Display:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            padding: 20px;
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #d4cce6 0%, #e6d4d4 25%, #e6d4c0 50%, #d4e3f0 75%, #d4cce6 100%);
            background-attachment: fixed;
        }

        .products-container {
            max-width: 1200px;
            margin: 0 auto;
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 25px;
            padding: 20px;
            animation: fadeIn 1s ease-out;
        }

        .product-card {
            background: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
            transition: all 0.3s ease;
            height: 600px;
            display: flex;
            flex-direction: column;
        }

        .product-card:hover {
            transform: translateY(-10px) scale(1.02);
            box-shadow: 0 15px 30px rgba(0,0,0,0.2);
        }

        .product-image {
            width: 100%;
            height: 380px;
            position: relative;
            overflow: hidden;
            background: #f9f9f9;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .product-img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: all 0.3s ease;
        }

        .product-image:hover .product-img {
            transform: scale(1.05);
        }

        .product-overlay {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: rgba(0,0,0,0.5);
            display: flex;
            justify-content: center;
            align-items: center;
            opacity: 0;
            transition: opacity 0.3s ease;
        }

        .product-card:hover .product-overlay {
            opacity: 1;
        }

        .quick-view-btn {
            background: white;
            color: #333;
            padding: 10px 20px;
            border-radius: 25px;
            text-decoration: none;
            transform: translateY(20px);
            transition: all 0.3s ease;
        }

        .product-card:hover .quick-view-btn {
            transform: translateY(0);
        }

        .product-info {
            padding: 15px;
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .product-name {
            font-size: 1.2em;
            color: #333;
            margin: 0 0 10px 0;
            position: relative;
            display: inline-block;
        }

        .product-name::after {
            content: '';
            position: absolute;
            bottom: -5px;
            left: 0;
            width: 0;
            height: 2px;
            background: linear-gradient(to right, #d4cce6, #e6d4d4);
            transition: width 0.3s ease;
        }

        .product-card:hover .product-name::after {
            width: 100%;
        }

        .product-price {
            font-size: 1.1em;
            color: #666;
            margin: 10px 0;
        }

        .add-to-cart {
            background: linear-gradient(135deg, #d4cce6, #e6d4d4);
            color: #333;
            border: none;
            padding: 10px 25px;
            border-radius: 25px;
            cursor: pointer;
            transition: all 0.3s ease;
            font-weight: 500;
        }

        .add-to-cart:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        @keyframes slideUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Animation delays for cards */
        .product-card:nth-child(1) { animation-delay: 0.1s; }
        .product-card:nth-child(2) { animation-delay: 0.2s; }
        .product-card:nth-child(3) { animation-delay: 0.3s; }
        .product-card:nth-child(4) { animation-delay: 0.4s; }
        /* ... thêm delay cho các card khác */

        @media (max-width: 768px) {
            .products-container {
                grid-template-columns: repeat(auto-fill, minmax(240px, 1fr));
                gap: 20px;
                padding: 10px;
            }

            .product-image {
                height: 320px;
            }
            
            .product-card {
                height: 550px;
            }
        }

        /* Style cho header và menu */
        .header {
            background: white;
            padding: 15px 0;
            position: sticky;
            top: 0;
            z-index: 1000;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }

        .header-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        .search-cart-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .search-bar {
            display: flex;
            align-items: center;
            background: #f5f5f5;
            padding: 10px 20px;
            border-radius: 25px;
            width: 400px;
        }

        .search-bar input {
            border: none;
            background: none;
            outline: none;
            width: 100%;
            padding: 5px;
            font-size: 1em;
        }

        .search-bar i {
            color: #666;
            cursor: pointer;
        }

        .cart-buttons {
            display: flex;
            gap: 15px;
        }

        .cart-icon {
            position: relative;
            cursor: pointer;
            font-size: 1.5em;
        }

        .cart-count {
            position: absolute;
            top: -8px;
            right: -8px;
            background: #ff4757;
            color: white;
            border-radius: 50%;
            width: 20px;
            height: 20px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 12px;
        }

        .buy-now-btn {
            background: #ff4757;
            color: white;
            padding: 8px 20px;
            border: none;
            border-radius: 25px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .buy-now-btn:hover {
            background: #ff2e44;
            transform: translateY(-2px);
        }

        .categories-bar {
            display: flex;
            gap: 20px;
            overflow-x: auto;
            padding: 10px 0;
            margin-bottom: 20px;
        }

        .category-item {
            white-space: nowrap;
            padding: 8px 20px;
            background: white;
            border-radius: 20px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .category-item:hover,
        .category-item.active {
            background: #ff4757;
            color: white;
        }

        /* Chỉnh sửa style cho nút thêm vào giỏ và mua ngay trong product-card */
        .product-buttons {
            display: flex;
            gap: 10px;
            margin-top: 15px;
        }

        .add-to-cart,
        .buy-now {
            flex: 1;
            padding: 10px;
            border: none;
            border-radius: 25px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .add-to-cart {
            background: #f5f5f5;
            color: #333;
        }

        .buy-now {
            background: #ff4757;
            color: white;
        }

        .add-to-cart:hover,
        .buy-now:hover {
            transform: translateY(-2px);
        }

        .header-top {
            background: linear-gradient(135deg, #d4cce6 0%, #e6d4d4 100%);
            padding: 20px 0;
            text-align: center;
            margin-bottom: 20px;
        }

        .store-name {
            font-family: 'Dancing Script', cursive;
            font-size: 3em;
            color: #333;
            margin: 0;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.1);
        }

        .store-slogan {
            font-family: 'Playfair Display', serif;
            font-size: 1.2em;
            color: #666;
            margin: 10px 0;
            letter-spacing: 1px;
        }

        .header-nav {
            display: flex;
            justify-content: center;
            gap: 30px;
            margin: 15px 0;
        }

        .nav-link {
            font-family: 'Playfair Display', serif;
            color: #333;
            text-decoration: none;
            font-size: 1.1em;
            position: relative;
            transition: all 0.3s ease;
        }

        .nav-link::after {
            content: '';
            position: absolute;
            bottom: -5px;
            left: 0;
            width: 0;
            height: 2px;
            background: #d4cce6;
            transition: width 0.3s ease;
        }

        .nav-link:hover::after {
            width: 100%;
        }

        .nav-link:hover {
            color: #d4cce6;
        }

        /* Cập nhật style cho search-bar */
        .search-bar {
            background: white;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            border: 1px solid #eee;
        }

        .search-bar input {
            font-family: 'Playfair Display', serif;
            font-size: 1em;
        }

        .search-bar i {
            color: #d4cce6;
        }

        @media (max-width: 768px) {
            .store-name {
                font-size: 2.5em;
            }
            
            .store-slogan {
                font-size: 1em;
            }
            
            .header-nav {
                gap: 15px;
                flex-wrap: wrap;
            }
        }

        /* Thêm animation cho loading ảnh */
        .product-img {
            opacity: 0;
            animation: fadeIn 0.5s ease forwards;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        /* Style đặc biệt cho sản phẩm quần */
        .product-card[data-category="Quần"] .product-image,
        .product-card .product-image img[alt*="Quần"] {
            height: 400px; /* Điều chỉnh chiều cao phù hợp */
            background: #fff;
        }

        .product-card[data-category="Quần"] .product-img,
        .product-card .product-image img[alt*="Quần"] {
            object-fit: contain;
            max-height: 100%;
            padding: 10px;
            transition: transform 0.3s ease;
        }

        /* Đảm bảo hình ảnh không bị méo */
        .product-card[data-category="Quần"] .product-img:hover {
            transform: scale(1.05);
        }

        /* Responsive cho màn hình nhỏ */
        @media (max-width: 768px) {
            .product-card[data-category="Quần"] .product-image {
                height: 350px;
            }
        }
    </style>
</head>
<body>
    <header class="header">
        <div class="header-top">
            <h1 class="store-name">Fashion Store</h1>
            <p class="store-slogan">Nơi Phong Cách Được Định Nghĩa</p>
            <nav class="header-nav">
                <a href="trangchu1.php" class="nav-link">Trang Chủ</a>
                <a href="sanpham.php" class="nav-link">Sản Phẩm</a>
                <a href="gioithieu.php" class="nav-link">Giới Thiệu</a>
                <a href="lienhe.php" class="nav-link">Liên Hệ</a>
            </nav>
        </div>
        <div class="header-container">
            <div class="search-cart-container">
                <div class="search-bar">
                    <input type="text" placeholder="Tìm kiếm sản phẩm yêu thích của bạn...">
                    <i class="fas fa-search"></i>
                </div>
                <div class="cart-buttons">
                    <div class="cart-icon">
                        <i class="fas fa-shopping-cart"></i>
                        <span class="cart-count">0</span>
                    </div>
                </div>
            </div>
            <div class="categories-bar">
                <div class="category-item active">Tất cả sản phẩm</div>
                <?php foreach($categories as $category): ?>
                    <div class="category-item"><?php echo htmlspecialchars($category['ten_danh_muc']); ?></div>
                <?php endforeach; ?>
            </div>
        </div>
    </header>
    <div class="products-container">
        <?php foreach($products as $product): ?>
            <div class="product-card" data-category-id="<?php echo $product['id']; ?>">
                <div class="product-image">
                    <img src="<?php echo htmlspecialchars($product['hinh_anh']); ?>" 
                         alt="<?php echo htmlspecialchars($product['ten_san_pham']); ?>" 
                         loading="lazy" 
                         class="product-img">
                </div>
                <div class="product-info">
                    <div class="product-category"><?php echo htmlspecialchars($product['ten_danh_muc']); ?></div>
                    <h3 class="product-title"><?php echo htmlspecialchars($product['ten_san_pham']); ?></h3>
                    <div class="product-price"><?php echo number_format($product['gia_ban'], 0, ',', '.'); ?>₫</div>
                    <div class="product-buttons">
                        <button class="add-to-cart" onclick="addToCart(this)" 
                                data-id="<?php echo $product['ma_san_pham']; ?>"
                                data-price="<?php echo $product['gia_ban']; ?>">
                            <i class="fas fa-cart-plus"></i> Thêm vào giỏ
                        </button>
                        <button class="buy-now" onclick="buyNow(this)"
                                data-id="<?php echo $product['ma_san_pham']; ?>"
                                data-price="<?php echo $product['gia_ban']; ?>">
                            <i class="fas fa-shopping-bag"></i> Mua ngay
                        </button>
                    </div>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
    <script>
        function addToCart(button) {
            const productCard = button.closest('.product-card');
            const productInfo = {
                ma_san_pham: button.dataset.id,
                image: productCard.querySelector('.product-image img').src,
                title: productCard.querySelector('.product-title').textContent,
                price: parseFloat(button.dataset.price),
                quantity: 1
            };
            
            let cart = JSON.parse(localStorage.getItem('cart')) || [];
            const existingProductIndex = cart.findIndex(item => item.ma_san_pham === productInfo.ma_san_pham);
            
            if (existingProductIndex > -1) {
                cart[existingProductIndex].quantity++;
            } else {
                cart.push(productInfo);
            }
            
            localStorage.setItem('cart', JSON.stringify(cart));
            updateCartCount();
            alert('Đã thêm sản phẩm vào giỏ hàng!');
        }

        // Hàm cập nhật số lượng trên icon giỏ hàng
        function updateCartCount() {
            const cart = JSON.parse(localStorage.getItem('cart')) || [];
            const totalItems = cart.reduce((sum, item) => sum + item.quantity, 0);
            document.querySelector('.cart-count').textContent = totalItems;
        }

        // Thêm sự kiện click cho icon giỏ hàng
        document.querySelector('.cart-icon').addEventListener('click', function() {
            window.location.href = 'cart.php';
        });

        // Cập nhật số lượng khi trang được tải
        document.addEventListener('DOMContentLoaded', updateCartCount);

        function buyNow(button) {
            const productCard = button.closest('.product-card');
            const productTitle = productCard.querySelector('.product-title').textContent;
            const productPrice = productCard.querySelector('.product-price').textContent;
            
            if(confirm(`Xác nhận mua sản phẩm:\n${productTitle}\nGiá: ${productPrice}`)) {
                window.location.href = 'checkout.php';
            }
        }

        // Xử lý tìm kiếm
        const searchInput = document.querySelector('.search-bar input');
        searchInput.addEventListener('input', function(e) {
            const searchTerm = e.target.value.toLowerCase();
            const products = document.querySelectorAll('.product-card');
            
            products.forEach(product => {
                const title = product.querySelector('.product-title').textContent.toLowerCase();
                const category = product.querySelector('.product-category').textContent.toLowerCase();
                
                if(title.includes(searchTerm) || category.includes(searchTerm)) {
                    product.style.display = 'block';
                } else {
                    product.style.display = 'none';
                }
            });
        });

        // Xử lý lọc danh mục
        const categoryItems = document.querySelectorAll('.category-item');
        categoryItems.forEach(item => {
            item.addEventListener('click', function() {
                // Xóa active class từ tất cả các items
                categoryItems.forEach(i => i.classList.remove('active'));
                // Thêm active class cho item được click
                this.classList.add('active');
                
                const category = this.textContent.toLowerCase();
                const products = document.querySelectorAll('.product-card');
                
                products.forEach(product => {
                    const productCategory = product.querySelector('.product-category').textContent.toLowerCase();
                    if(category === 'tất cả sản phẩm' || productCategory === category) {
                        product.style.display = 'block';
                    } else {
                        product.style.display = 'none';
                    }
                });
            });
        });
    </script>
</body>
</html>

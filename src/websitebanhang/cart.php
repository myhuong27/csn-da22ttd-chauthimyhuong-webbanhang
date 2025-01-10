<?php
session_start();
?>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giỏ Hàng - Fashion Store</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 20px;
            background: #f4f6f9;
        }

        .cart-container {
            max-width: 1200px;
            margin: 0 auto;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        .cart-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
            padding-bottom: 10px;
            border-bottom: 2px solid #eee;
        }

        .cart-items {
            margin-bottom: 20px;
        }

        .cart-item {
            display: flex;
            align-items: center;
            padding: 15px 0;
            border-bottom: 1px solid #eee;
        }

        .cart-item img {
            width: 100px;
            height: 100px;
            object-fit: cover;
            margin-right: 15px;
        }

        .item-details {
            flex: 1;
        }

        .item-quantity {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .quantity-btn {
            padding: 5px 10px;
            border: none;
            background: #eee;
            cursor: pointer;
        }

        .remove-btn {
            color: #dc3545;
            border: none;
            background: none;
            cursor: pointer;
        }

        .cart-total {
            text-align: right;
            font-size: 1.2em;
            margin-top: 20px;
        }

        .checkout-btn {
            background: #28a745;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            float: right;
            margin-top: 10px;
        }

        .empty-cart {
            text-align: center;
            padding: 40px;
        }

        .back-to-shop {
            display: inline-block;
            margin-top: 20px;
            color: #007bff;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="cart-container">
        <div class="cart-header">
            <h1>Giỏ Hàng</h1>
            <a href="sanpham.php" class="back-to-shop">
                <i class="fas fa-arrow-left"></i> Tiếp tục mua sắm
            </a>
        </div>
        <div id="cart-items" class="cart-items">
            <!-- Các sản phẩm sẽ được thêm vào đây bằng JavaScript -->
        </div>
        <div class="cart-total">
            Tổng cộng: <span id="total-amount">0 VNĐ</span>
        </div>
        <button class="checkout-btn" onclick="checkout()">Thanh toán</button>
    </div>

    <script>
        function loadCart() {
            const cartContainer = document.getElementById('cart-items');
            const cart = JSON.parse(localStorage.getItem('cart')) || [];
            
            if (cart.length === 0) {
                cartContainer.innerHTML = `
                    <div class="empty-cart">
                        <i class="fas fa-shopping-cart" style="font-size: 48px; color: #ddd;"></i>
                        <h2>Giỏ hàng trống</h2>
                        <p>Hãy thêm sản phẩm vào giỏ hàng của bạn</p>
                    </div>
                `;
                document.querySelector('.checkout-btn').style.display = 'none';
                return;
            }

            cartContainer.innerHTML = cart.map((item, index) => `
                <div class="cart-item">
                    <img src="${item.image}" alt="${item.title}">
                    <div class="item-details">
                        <h3>${item.title}</h3>
                        <p>${item.price}</p>
                        <div class="item-quantity">
                            <button class="quantity-btn" onclick="updateQuantity(${index}, -1)">-</button>
                            <span>${item.quantity}</span>
                            <button class="quantity-btn" onclick="updateQuantity(${index}, 1)">+</button>
                            <button class="remove-btn" onclick="removeItem(${index})">
                                <i class="fas fa-trash"></i>
                            </button>
                        </div>
                    </div>
                </div>
            `).join('');

            updateTotal();
        }

        function updateQuantity(index, change) {
            const cart = JSON.parse(localStorage.getItem('cart')) || [];
            cart[index].quantity = Math.max(1, cart[index].quantity + change);
            localStorage.setItem('cart', JSON.stringify(cart));
            loadCart();
        }

        function removeItem(index) {
            const cart = JSON.parse(localStorage.getItem('cart')) || [];
            cart.splice(index, 1);
            localStorage.setItem('cart', JSON.stringify(cart));
            loadCart();
        }

        function updateTotal() {
            const cart = JSON.parse(localStorage.getItem('cart')) || [];
            const total = cart.reduce((sum, item) => {
                const price = parseInt(item.price.replace(/[^\d]/g, ''));
                return sum + (price * item.quantity);
            }, 0);
            document.getElementById('total-amount').textContent = 
                new Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' })
                    .format(total);
        }

        function checkout() {
            // Thêm logic thanh toán ở đây
            alert('Chức năng thanh toán đang được phát triển');
        }

        // Load giỏ hàng khi trang được tải
        document.addEventListener('DOMContentLoaded', loadCart);
    </script>
</body>
</html>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sản Phẩm - Fashion Store</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Montserrat', sans-serif;
        }

        body {
            background: #f5f5f5;
        }

        /* Header & Navigation */
        .header {
            background: white;
            padding: 15px 0;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .nav-container {
            max-width: 1200px;
            margin: 0 auto;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 20px;
        }

        .search-bar {
            display: flex;
            align-items: center;
            background: #f5f5f5;
            padding: 8px 15px;
            border-radius: 25px;
            width: 300px;
        }

        .search-bar input {
            border: none;
            background: none;
            outline: none;
            width: 100%;
            padding: 5px;
        }

        .cart-icon {
            position: relative;
            cursor: pointer;
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

        /* Category Filter */
        .category-filter {
            max-width: 1200px;
            margin: 20px auto;
            padding: 0 20px;
            display: flex;
            gap: 15px;
            overflow-x: auto;
        }

        .category-btn {
            padding: 10px 20px;
            border: none;
            border-radius: 25px;
            background: white;
            cursor: pointer;
            transition: all 0.3s ease;
            white-space: nowrap;
        }

        .category-btn.active {
            background: #ff4757;
            color: white;
        }

        /* Products Grid */
        .products-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 30px;
        }

        .product-card {
            background: white;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            transition: transform 0.3s ease;
        }

        .product-card:hover {
            transform: translateY(-5px);
        }

        .product-image {
            width: 100%;
            height: 300px;
            object-fit: cover;
        }

        .product-info {
            padding: 20px;
        }

        .product-category {
            color: #666;
            font-size: 0.9em;
            margin-bottom: 5px;
        }

        .product-title {
            font-size: 1.1em;
            margin: 10px 0;
            color: #333;
        }

        .product-price {
            font-size: 1.2em;
            color: #ff4757;
            font-weight: 600;
            margin: 10px 0;
        }

        .add-to-cart {
            width: 100%;
            padding: 12px;
            background: #ff4757;
            color: white;
            border: none;
            border-radius: 25px;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        .add-to-cart:hover {
            background: #ff2e44;
        }

        /* Shopping Cart Popup */
        .cart-popup {
            position: fixed;
            top: 0;
            right: -400px;
            width: 400px;
            height: 100vh;
            background: white;
            box-shadow: -2px 0 10px rgba(0,0,0,0.1);
            transition: right 0.3s ease;
            z-index: 1001;
        }

        .cart-popup.active {
            right: 0;
        }

        .cart-header {
            padding: 20px;
            border-bottom: 1px solid #eee;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .cart-items {
            padding: 20px;
            max-height: calc(100vh - 200px);
            overflow-y: auto;
        }

        .cart-item {
            display: flex;
            gap: 15px;
            margin-bottom: 20px;
        }

        .cart-item img {
            width: 80px;
            height: 80px;
            object-fit: cover;
            border-radius: 8px;
        }

        .cart-total {
            padding: 20px;
            border-top: 1px solid #eee;
            position: absolute;
            bottom: 0;
            width: 100%;
            background: white;
        }

        .checkout-btn {
            width: 100%;
            padding: 15px;
            background: #ff4757;
            color: white;
            border: none;
            border-radius: 25px;
            cursor: pointer;
            margin-top: 10px;
        }

        @media (max-width: 768px) {
            .cart-popup {
                width: 100%;
            }
            
            .search-bar {
                width: 200px;
            }
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header class="header">
        <div class="nav-container">
            <div class="search-bar">
                <input type="text" placeholder="Tìm kiếm sản phẩm...">
                <i class="fas fa-search"></i>
            </div>
            <div class="cart-icon" onclick="toggleCart()">
                <i class="fas fa-shopping-cart"></i>
                <span class="cart-count">0</span>
            </div>
        </div>
    </header>

    <!-- Category Filter -->
    <div class="category-filter">
        <button class="category-btn active">Tất cả</button>
        <button class="category-btn">Váy đầm</button>
        <button class="category-btn">Áo kiểu nữ</button>
        <button class="category-btn">Chân váy</button>
        <button class="category-btn">Set đồ</button>
    </div>

    <!-- Products Grid -->
    <div class="products-container">
        <!-- Váy đầm -->
        <div class="product-card">
            <img src="images/products/vay1.jpg" alt="Váy đầm" class="product-image">
            <div class="product-info">
                <div class="product-category">Váy đầm</div>
                <h3 class="product-title">Váy Đầm Dự Tiệc Xòe Tay Phồng</h3>
                <div class="product-price">890.000₫</div>
                <button class="add-to-cart" onclick="addToCart(this)">Thêm vào giỏ hàng</button>
            </div>
        </div>

        <!-- Áo kiểu -->
        <div class="product-card">
            <img src="images/products/ao1.jpg" alt="Áo kiểu" class="product-image">
            <div class="product-info">
                <div class="product-category">Áo kiểu nữ</div>
                <h3 class="product-title">Áo Kiểu Nữ Công Sở Tay Bồng</h3>
                <div class="product-price">450.000₫</div>
                <button class="add-to-cart" onclick="addToCart(this)">Thêm vào giỏ hàng</button>
            </div>
        </div>

        <!-- Chân váy -->
        <div class="product-card">
            <img src="images/products/chanvay1.jpg" alt="Chân váy" class="product-image">
            <div class="product-info">
                <div class="product-category">Chân váy</div>
                <h3 class="product-title">Chân Váy Xếp Ly Dáng Dài</h3>
                <div class="product-price">390.000₫</div>
                <button class="add-to-cart" onclick="addToCart(this)">Thêm vào giỏ hàng</button>
            </div>
        </div>

        <!-- Thêm các sản phẩm khác tương tự -->
    </div>

    <!-- Shopping Cart Popup -->
    <div class="cart-popup" id="cartPopup">
        <div class="cart-header">
            <h3>Giỏ hàng</h3>
            <i class="fas fa-times" onclick="toggleCart()"></i>
        </div>
        <div class="cart-items" id="cartItems">
            <!-- Cart items will be added here dynamically -->
        </div>
        <div class="cart-total">
            <h4>Tổng cộng: <span id="cartTotal">0₫</span></h4>
            <button class="checkout-btn" onclick="checkout()">Thanh toán</button>
        </div>
    </div>

    <script>
        let cartCount = 0;
        let cartTotal = 0;
        const cartItems = [];

        function toggleCart() {
            document.getElementById('cartPopup').classList.toggle('active');
        }

        function addToCart(button) {
            const productCard = button.closest('.product-card');
            const productInfo = {
                image: productCard.querySelector('.product-image').src,
                title: productCard.querySelector('.product-title').textContent,
                price: productCard.querySelector('.product-price').textContent,
            };

            cartItems.push(productInfo);
            cartCount++;
            updateCartUI();
        }

        function updateCartUI() {
            document.querySelector('.cart-count').textContent = cartCount;
            
            const cartItemsContainer = document.getElementById('cartItems');
            cartItemsContainer.innerHTML = '';
            cartTotal = 0;

            cartItems.forEach((item, index) => {
                const price = parseInt(item.price.replace(/\D/g, ''));
                cartTotal += price;

                const itemElement = document.createElement('div');
                itemElement.className = 'cart-item';
                itemElement.innerHTML = `
                    <img src="${item.image}" alt="${item.title}">
                    <div>
                        <h4>${item.title}</h4>
                        <p>${item.price}</p>
                        <button onclick="removeFromCart(${index})">Xóa</button>
                    </div>
                `;
                cartItemsContainer.appendChild(itemElement);
            });

            document.getElementById('cartTotal').textContent = cartTotal.toLocaleString() + '₫';
        }

        function removeFromCart(index) {
            cartItems.splice(index, 1);
            cartCount--;
            updateCartUI();
        }

        function checkout() {
            alert('Cảm ơn bạn đã mua hàng! Tổng thanh toán: ' + cartTotal.toLocaleString() + '₫');
            cartItems.length = 0;
            cartCount = 0;
            cartTotal = 0;
            updateCartUI();
            toggleCart();
        }

        // Filter functionality
        const categoryButtons = document.querySelectorAll('.category-btn');
        categoryButtons.forEach(button => {
            button.addEventListener('click', () => {
                categoryButtons.forEach(btn => btn.classList.remove('active'));
                button.classList.add('active');
                // Add filter logic here
            });
        });
    </script>
</body>
</html>

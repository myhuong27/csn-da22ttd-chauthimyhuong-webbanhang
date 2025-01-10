<?php
session_start();
// Thêm vào đầu file
function checkImage($imagePath) {
    if (file_exists($imagePath)) {
        return $imagePath;
    } else {
        return 'images/default.jpg'; // Ảnh mặc định nếu không tìm thấy
    }
}
?>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fashion Store - Trang chủ</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(
                135deg, 
                #ffecd2 0%,
                #fcb69f 25%,
                #ffdde1 50%,
                #c2e9fb 75%,
                #e6f3ff 100%
            );
            background-attachment: fixed;
        }

        /* Header Styles */
        .header {
            background: rgba(255, 255, 255, 0.95);
            padding: 15px 0;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
        }

        .nav-container {
            max-width: 1200px;
            margin: 0 auto;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 20px;
        }

        .logo-container {
            display: flex;
            align-items: center;
            gap: 15px;
        }

        .logo-image {
            width: 50px;
            height: 50px;
            background: linear-gradient(45deg, #ff4081, #ff6b9b);
            border-radius: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 24px;
            font-weight: bold;
            letter-spacing: 1px;
            box-shadow: 0 4px 15px rgba(255, 64, 129, 0.2);
        }

        .logo-text {
            display: flex;
            flex-direction: column;
        }

        .brand-name {
            font-size: 24px;
            font-weight: bold;
            color: #333;
            letter-spacing: 1px;
        }

        .brand-slogan {
            font-size: 12px;
            color: #666;
            letter-spacing: 2px;
            text-transform: uppercase;
        }

        .nav-menu {
            display: flex;
            gap: 30px;
            align-items: center;
        }

        .nav-link {
            text-decoration: none;
            color: #333;
            font-weight: 500;
            transition: color 0.3s ease;
        }

        .nav-link:hover {
            color: #ff4081;
        }

        .nav-link i {
            font-size: 18px;
            transition: transform 0.3s ease;
        }

        .nav-link i:hover {
            transform: scale(1.1);
        }

        /* Hero Section */
        .hero {
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            padding: 80px 20px;
            background: url('images/hero-bg.jpg') center/cover;
            position: relative;
        }

        .hero::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0,0,0,0.4);
        }

        .hero-content {
            position: relative;
            color: white;
            max-width: 800px;
            text-align: center;
        }

        .hero-title {
            font-family: 'Playfair Display', serif;
            font-size: 55px;
            font-weight: 700;
            letter-spacing: 2px;
            margin-bottom: 25px;
            text-shadow: 2px 2px 15px rgba(0, 0, 0, 0.3);
            animation: fadeInDown 1s ease-out;
        }

        .hero-subtitle {
            font-family: 'Montserrat', sans-serif;
            font-size: 20px;
            font-weight: 300;
            letter-spacing: 4px;
            text-transform: uppercase;
            margin-bottom: 30px;
            text-shadow: 1px 1px 10px rgba(0, 0, 0, 0.3);
            animation: fadeInUp 1s ease-out;
        }

        .cta-button {
            display: inline-block;
            padding: 15px 40px;
            background: #ff4081;
            color: white;
            text-decoration: none;
            border-radius: 30px;
            font-weight: bold;
            transition: transform 0.3s ease;
        }

        .cta-button:hover {
            transform: translateY(-3px);
        }

        /* Featured Categories */
        .featured-categories {
            padding: 120px 20px 80px;
            max-width: 1200px;
            margin: 0 auto;
        }

        .section-title {
            text-align: center;
            font-size: 36px;
            margin-bottom: 40px;
            color: #333;
        }

        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
        }

        .category-card {
            position: relative;
            height: 400px;
            border-radius: 15px;
            overflow: hidden;
            cursor: default;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
            transition: transform 0.3s ease;
            background: #fff;
        }

        .category-card:hover {
            transform: none;
        }

        .category-image {
            width: 100%;
            height: 100%;
            object-fit: cover;
            object-position: center;
            transition: transform 0.3s ease;
        }

        .category-card:hover .category-image {
            transform: none;
        }

        .category-overlay {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            padding: 25px 20px;
            background: linear-gradient(transparent, rgba(0,0,0,0.8));
            color: white;
            transition: all 0.3s ease;
        }

        .category-name {
            font-size: 22px;
            margin-bottom: 12px;
            font-weight: 600;
            text-shadow: 1px 1px 3px rgba(0,0,0,0.3);
        }

        .product-price {
            font-size: 20px;
            font-weight: bold;
            color: #ff4081;
        }

        /* Footer */
        .footer {
            background: #333;
            color: white;
            padding: 60px 20px 30px;
        }

        .footer-content {
            max-width: 1200px;
            margin: 0 auto;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 40px;
        }

        .footer-section h3 {
            margin-bottom: 20px;
            font-size: 20px;
        }

        .footer-links {
            list-style: none;
        }

        .footer-links li {
            margin-bottom: 10px;
        }

        .footer-links a {
            color: #ddd;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .footer-links a:hover {
            color: #ff4081;
        }

        .social-links {
            display: flex;
            gap: 15px;
            margin-top: 20px;
        }

        .social-links a {
            color: white;
            font-size: 20px;
            transition: color 0.3s ease;
        }

        .social-links a:hover {
            color: #ff4081;
        }

        .copyright {
            text-align: center;
            margin-top: 40px;
            padding-top: 20px;
            border-top: 1px solid #444;
            color: #888;
        }

        /* Thêm style cho submenu tài khoản */
        .nav-item {
            position: relative;
        }

        .submenu {
            position: absolute;
            top: 100%;
            right: 0;
            background: white;
            border-radius: 8px;
            box-shadow: 0 2px 15px rgba(0,0,0,0.1);
            padding: 10px 0;
            min-width: 200px;
            opacity: 0;
            visibility: hidden;
            transform: translateY(10px);
            transition: all 0.3s ease;
        }

        .nav-item:hover .submenu {
            opacity: 1;
            visibility: visible;
            transform: translateY(0);
        }

        .submenu a {
            display: flex;
            align-items: center;
            padding: 10px 20px;
            color: #333;
            text-decoration: none;
            transition: background 0.3s ease;
        }

        .submenu a:hover {
            background: #f5f5f5;
            color: #ff4081;
        }

        .submenu i {
            width: 20px;
            margin-right: 10px;
        }

        /* Điều chỉnh header */
        .header {
            background: rgba(255, 255, 255, 0.95);
            padding: 15px 0;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
        }

        .nav-container {
            max-width: 1200px;
            margin: 0 auto;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 20px;
        }

        .nav-menu {
            display: flex;
            gap: 30px;
            align-items: center;
        }

        .nav-link {
            text-decoration: none;
            color: #333;
            font-weight: 500;
            transition: color 0.3s ease;
        }

        .nav-link:hover {
            color: #ff4081;
        }

        /* Responsive adjustments */
        @media (max-width: 768px) {
            .submenu {
                position: static;
                box-shadow: none;
                display: none;
            }
            
            .nav-item:hover .submenu {
                display: block;
            }

            .brand-slogan {
                display: none;
            }
            
            .logo-image {
                width: 40px;
                height: 40px;
                font-size: 20px;
            }
            
            .brand-name {
                font-size: 20px;
            }
        }

        /* Thêm style cho user-account */
        .user-account {
            display: flex;
            align-items: center;
            gap: 5px;
        }

        .user-account i {
            font-size: 18px;
        }

        .user-account span {
            font-size: 15px;
        }

        /* Cập nhật hover effect */
        .user-account:hover {
            color: #ff4081;
        }

        .user-account:hover i {
            transform: scale(1.1);
        }

        /* Xóa các style liên quan đến new-arrivals và products-slider */
        .new-arrivals,
        .products-slider,
        .product-card {
            display: none;
        }

        /* Cập nhật style, bỏ các hiệu ứng hover cho liên kết */
        .category-card {
            cursor: default;
        }

        .category-card:hover {
            transform: none;
        }

        .category-image:hover {
            transform: none;
        }

        /* Xóa style cho cta-button vì không còn sử dụng */
        .cta-button {
            display: none;
        }

        /* Style mới cho hero section */
        @import url('https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;700&family=Montserrat:wght@300;400;500&display=swap');

        /* Thêm animations */
        @keyframes fadeInDown {
            from {
                opacity: 0;
                transform: translateY(-30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Responsive adjustments */
        @media (max-width: 768px) {
            .hero-title {
                font-size: 35px;
                letter-spacing: 1px;
            }
            
            .hero-subtitle {
                font-size: 15px;
                letter-spacing: 3px;
            }
        }

        .category-card {
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            overflow: hidden;
            transition: transform 0.3s ease;
            width: 100%;
            max-width: 300px;
            margin: 15px;
        }

        .category-card:hover {
            transform: translateY(-5px);
        }

        .product-image-container {
            width: 100%;
            height: 250px;
            overflow: hidden;
        }

        .product-image {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.3s ease;
        }

        .category-card:hover .product-image {
            transform: scale(1.05);
        }

        .product-info {
            padding: 15px;
        }

        .product-category {
            color: #666;
            font-size: 14px;
            margin-bottom: 8px;
        }

        .product-title {
            font-size: 16px;
            font-weight: 600;
            color: #333;
            margin: 8px 0;
        }

        .product-price {
            font-size: 18px;
            font-weight: bold;
            color: #e94560;
        }

        /* User Account Dropdown */
        .user-account {
            position: relative;
            cursor: pointer;
        }

        .user-dropdown {
            display: none;
            position: absolute;
            top: 100%;
            right: 0;
            background: white;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            border-radius: 4px;
            padding: 10px 0;
            min-width: 150px;
            z-index: 1000;
        }

        .user-account:hover .user-dropdown {
            display: block;
        }

        .user-dropdown a {
            display: block;
            padding: 8px 20px;
            color: #333;
            text-decoration: none;
            transition: background 0.3s;
        }

        .user-dropdown a:hover {
            background: #f5f5f5;
        }

        .welcome-text {
            padding: 8px 20px;
            color: #666;
            border-bottom: 1px solid #eee;
            margin-bottom: 5px;
        }
    </style>
</head>

<body>
    <!-- Header -->
    <header class="header">
        <div class="nav-container">
            <div class="logo-container">
                <div class="logo-image">FS</div>
                <div class="logo-text">
                    <span class="brand-name">Fashion Store</span>
                    <span class="brand-slogan">Style & Elegance</span>
                </div>
            </div>
            <nav class="nav-menu">
                <a href="trangchu1.php" class="nav-link">Trang chủ</a>
                <a href="sanpham.php" class="nav-link">Sản phẩm</a>
                <a href="gioithieu.php" class="nav-link">Giới thiệu</a>
                <a href="lienhe.php" class="nav-link">Liên hệ</a>
                <a href="cart.php" class="nav-link"><i class="fas fa-shopping-cart"></i></a>
                <div class="user-account nav-link">
                    <i class="fas fa-user"></i>
                    <span>Tài khoản</span>
                    <div class="user-dropdown">
                        <?php if (isset($_SESSION['user_id'])): ?>
                            <div class="welcome-text">Xin chào, <?php echo htmlspecialchars($_SESSION['username']); ?></div>
                            <a href="profile.php"><i class="fas fa-user-circle"></i> Thông tin tài khoản</a>
                            <a href="logout.php"><i class="fas fa-sign-out-alt"></i> Đăng xuất</a>
                        <?php else: ?>
                            <a href="login_page.php"><i class="fas fa-sign-in-alt"></i> Đăng nhập</a>
                            <a href="register.php"><i class="fas fa-user-plus"></i> Đăng ký</a>
                        <?php endif; ?>
                    </div>
                </div>
            </nav>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="hero">
        <div class="hero-content">
            <h1 class="hero-title">THỜI TRANG CAO CẤP</h1>
            <p class="hero-subtitle">NÂNG TẦM PHONG CÁCH THỜI THƯỢNG</p>
        </div>
    </section>

    <!-- Featured Categories -->
    <section class="featured-categories">
        <h2 class="section-title">Sản Phẩm Mới</h2>
        <div class="categories-grid">
            <div class="category-card">
                <img src="images/image/h1.jpg" alt="Váy Mùa Hè" class="category-image">
                <div class="category-overlay">
                    <h3 class="category-name">Váy Mùa Hè</h3>
                    <p class="product-price">750.000đ</p>
                </div>
            </div>
            <div class="category-card">
                    <img src="images/image/h2.jpg" alt="Áo sơ mi" class="category-image">
                    <div class="category-overlay">
                    <h3 class="category-name">Áo Sơ Mi Nữ Công Sở</h3>
                    <div class="product-price">420.000₫</div>
                </div>
            </div>
            <div class="category-card">
                <img src="images/image/h3.jpg" alt="Váy mới" class="category-image">
                <div class="category-overlay">
                    <h3 class="category-name">Váy Xòe Vintage</h3>
                    <p class="product-price">490.000đ</p>
                </div>
            </div>
        </div>
    </section>

    <script>
    document.addEventListener('DOMContentLoaded', function() {
        // Thêm class add-to-cart cho các nút thêm vào giỏ
        const addToCartButtons = document.querySelectorAll('.category-card');
        
        addToCartButtons.forEach(card => {
            card.addEventListener('click', function() {
                const productName = this.querySelector('.category-name').textContent;
                const productPrice = this.querySelector('.product-price').textContent;
                
                // Hiển thị thông báo
                alert(`Đã thêm ${productName} vào giỏ hàng!\nGiá: ${productPrice}`);
            });
        });
    });
    </script>
</body>
</html>
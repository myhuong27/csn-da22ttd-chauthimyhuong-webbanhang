<?php
session_start();
if (!isset($_SESSION['admin'])) {
    header('Location: login.php');
    exit();
}
?>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang Quản Trị - Fashion Store</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background: #f4f6f9;
        }

        /* Sidebar Styles */
        .sidebar {
            position: fixed;
            left: 0;
            top: 0;
            width: 250px;
            height: 100vh;
            background: #343a40;
            color: #fff;
            padding-top: 20px;
            transition: all 0.3s ease;
        }

        .admin-info {
            padding: 20px;
            text-align: center;
            border-bottom: 1px solid #4b545c;
        }

        .admin-avatar {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            margin-bottom: 10px;
            border: 3px solid #4b545c;
        }

        .admin-name {
            font-size: 18px;
            margin-bottom: 5px;
        }

        .admin-role {
            font-size: 14px;
            color: #a8a9ab;
        }

        .nav-menu {
            padding: 20px 0;
        }

        .nav-item {
            padding: 12px 25px;
            display: flex;
            align-items: center;
            color: #c2c7d0;
            text-decoration: none;
            transition: all 0.3s ease;
        }

        .nav-item:hover {
            background: #4b545c;
            color: #fff;
        }

        .nav-item i {
            width: 25px;
            margin-right: 10px;
        }

        /* Main Content Styles */
        .main-content {
            margin-left: 250px;
            padding: 20px;
        }

        .header {
            background: #fff;
            padding: 15px 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            margin-bottom: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .welcome-text {
            font-size: 24px;
            color: #343a40;
        }

        .stats-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            margin-bottom: 30px;
        }

        .stat-card {
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            display: flex;
            align-items: center;
        }

        .stat-icon {
            width: 50px;
            height: 50px;
            border-radius: 8px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-right: 15px;
            font-size: 24px;
        }

        .stat-info h3 {
            font-size: 24px;
            margin-bottom: 5px;
            color: #343a40;
        }

        .stat-info p {
            color: #6c757d;
            font-size: 14px;
        }

        .recent-activity {
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        .section-title {
            font-size: 20px;
            color: #343a40;
            margin-bottom: 20px;
            padding-bottom: 10px;
            border-bottom: 2px solid #f4f6f9;
        }

        .activity-list {
            list-style: none;
        }

        .activity-item {
            padding: 15px 0;
            border-bottom: 1px solid #f4f6f9;
            display: flex;
            align-items: center;
        }

        .activity-icon {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-right: 15px;
            font-size: 18px;
        }

        .activity-details h4 {
            font-size: 16px;
            color: #343a40;
            margin-bottom: 5px;
        }

        .activity-details p {
            font-size: 14px;
            color: #6c757d;
        }

        .logout-btn {
            background: #dc3545;
            color: #fff;
            padding: 8px 15px;
            border-radius: 5px;
            text-decoration: none;
            transition: background 0.3s ease;
        }

        .logout-btn:hover {
            background: #c82333;
        }

        /* Color variations for stat cards */
        .bg-info { background: #17a2b8; color: #fff; }
        .bg-success { background: #28a745; color: #fff; }
        .bg-warning { background: #ffc107; color: #fff; }
        .bg-danger { background: #dc3545; color: #fff; }
    </style>
</head>
<body>
    <!-- Sidebar -->
    <div class="sidebar">
        <div class="admin-info">
            <img src="images/admin-avatar.jpg" alt="Admin" class="admin-avatar">
            <h3 class="admin-name">Admin</h3>
            <p class="admin-role">Quản trị viên</p>
        </div>
        <nav class="nav-menu">
            <a href="QTVtrangchu.php" class="nav-item">
                <i class="fas fa-home"></i>
                <span>Trang chủ</span>
            </a>
            <a href="quanly_sanpham.php" class="nav-item">
                <i class="fas fa-box"></i>
                <span>Quản lý sản phẩm</span>
            </a>
            <a href="quanly_donhang.php" class="nav-item">
                <i class="fas fa-shopping-cart"></i>
                <span>Quản lý đơn hàng</span>
            </a>
            <a href="quanly_khachhang.php" class="nav-item">
                <i class="fas fa-users"></i>
                <span>Quản lý khách hàng</span>
            </a>
            <a href="thongke.php" class="nav-item">
                <i class="fas fa-chart-bar"></i>
                <span>Thống kê</span>
            </a>
        </nav>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <div class="header">
            <h1 class="welcome-text">Xin chào, Admin!</h1>
            <a href="logout.php" class="logout-btn">
                <i class="fas fa-sign-out-alt"></i> Đăng xuất
            </a>
        </div>

        <div class="stats-grid">
            <div class="stat-card">
                <div class="stat-icon bg-info">
                    <i class="fas fa-shopping-bag"></i>
                </div>
                <div class="stat-info">
                    <h3>150</h3>
                    <p>Sản phẩm</p>
                </div>
            </div>
            <div class="stat-card">
                <div class="stat-icon bg-success">
                    <i class="fas fa-shopping-cart"></i>
                </div>
                <div class="stat-info">
                    <h3>65</h3>
                    <p>Đơn hàng</p>
                </div>
            </div>
            <div class="stat-card">
                <div class="stat-icon bg-warning">
                    <i class="fas fa-users"></i>
                </div>
                <div class="stat-info">
                    <h3>250</h3>
                    <p>Khách hàng</p>
                </div>
            </div>
            <div class="stat-card">
                <div class="stat-icon bg-danger">
                    <i class="fas fa-money-bill-wave"></i>
                </div>
                <div class="stat-info">
                    <h3>15.5M</h3>
                    <p>Doanh thu</p>
                </div>
            </div>
        </div>

        <div class="recent-activity">
            <h2 class="section-title">Hoạt động gần đây</h2>
            <ul class="activity-list">
                <li class="activity-item">
                    <div class="activity-icon bg-info">
                        <i class="fas fa-shopping-cart"></i>
                    </div>
                    <div class="activity-details">
                        <h4>Đơn hàng mới #1234</h4>
                        <p>2 phút trước</p>
                    </div>
                </li>
                <li class="activity-item">
                    <div class="activity-icon bg-success">
                        <i class="fas fa-user-plus"></i>
                    </div>
                    <div class="activity-details">
                        <h4>Khách hàng mới đăng ký</h4>
                        <p>15 phút trước</p>
                    </div>
                </li>
                <li class="activity-item">
                    <div class="activity-icon bg-warning">
                        <i class="fas fa-box"></i>
                    </div>
                    <div class="activity-details">
                        <h4>Sản phẩm mới được thêm</h4>
                        <p>1 giờ trước</p>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</body>
</html>
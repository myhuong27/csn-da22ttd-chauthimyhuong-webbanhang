<?php
require_once 'connect.php';

try {
    // Check if the table already exists
    $checkTable = $conn->query("SHOW TABLES LIKE 'users'");
    if ($checkTable->rowCount() > 0) {
        echo "Bảng users đã tồn tại";
        exit;
    }

    $sql = "CREATE TABLE users (
        id INT AUTO_INCREMENT PRIMARY KEY,
        username VARCHAR(50) UNIQUE NOT NULL,
        email VARCHAR(100) UNIQUE NOT NULL,
        password VARCHAR(255) NOT NULL,
        full_name VARCHAR(100) NOT NULL,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        is_admin BOOLEAN DEFAULT FALSE
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;";
    
    $conn->exec($sql);
    echo "Tạo bảng users thành công!";
} catch(PDOException $e) {
    echo "Lỗi tạo bảng: " . $e->getMessage();
    error_log("Database Error in create_users_table.php: " . $e->getMessage());
}
?>

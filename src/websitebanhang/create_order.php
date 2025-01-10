<?php
session_start();
require_once 'connect.php';

header('Content-Type: application/json');

if (!isset($_SESSION['user_id'])) {
    echo json_encode(['success' => false, 'message' => 'Chưa đăng nhập']);
    exit;
}

$data = json_decode(file_get_contents('php://input'), true);

if (!$data || !isset($data['products'])) {
    echo json_encode(['success' => false, 'message' => 'Dữ liệu không hợp lệ']);
    exit;
}

try {
    $ma_don_hang = taoDonHang($_SESSION['user_id'], $data['products']);
    
    if ($ma_don_hang) {
        echo json_encode([
            'success' => true,
            'order_id' => $ma_don_hang
        ]);
    } else {
        echo json_encode([
            'success' => false,
            'message' => 'Không thể tạo đơn hàng'
        ]);
    }
} catch (Exception $e) {
    echo json_encode([
        'success' => false,
        'message' => $e->getMessage()
    ]);
} 
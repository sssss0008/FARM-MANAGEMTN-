<?php
include 'db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $category = $_POST['category'];
    $name = $_POST['name'];
    $price = $_POST['price'];

    // Handle image upload
    $image = $_FILES['image']['name'];
    $target = 'uploads/' . basename($image);
    move_uploaded_file($_FILES['image']['tmp_name'], $target);

    $stmt = $pdo->prepare("INSERT INTO products (category, name, price, image_path) VALUES (?, ?, ?, ?)");
    $stmt->execute([$category, $name, $price, $target]);

    echo "Product added successfully!";
}
?>

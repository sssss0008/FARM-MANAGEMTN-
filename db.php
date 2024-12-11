<?php
$host = 'localhost';
$dbname = 'farm_management';
$user = 'root'; // Replace with your MySQL username
$pass = ''; // Replace with your MySQL password

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $user, $pass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Could not connect to the database: " . $e->getMessage());
}
?>

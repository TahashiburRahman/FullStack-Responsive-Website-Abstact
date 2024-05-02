<?php
// Database connection
$servername = "localhost";
$username = "root"; // Change to your database username
$password = ""; // Change to your database password
$dbname = "abstract2"; // Change to your database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Process form submission
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $icon_image = $_POST["icon_image"];
    $icon_title = $_POST["icon_title"];
    $description = $_POST["description"];

    // Prepare and execute SQL query to insert data into database
    $sql = "INSERT INTO items (icon_image, icon_title, description) VALUES ('$icon_image', '$icon_title', '$description')";

    if ($conn->query($sql) === TRUE) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

// Close connection
$conn->close();
?>

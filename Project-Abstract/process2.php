<?php
// Establish database connection
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "abstract2";

$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Process form data
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST["name"];
    $designation = $_POST["designation"];
    $description = $_POST["description"];
    $image_path = $_FILES["image"]["name"]; // Corrected

    // Upload image file
    $target_dir = "./assets/assets/Team/";
    $target_file = $target_dir . basename($_FILES["image"]["name"]); // Corrected
    move_uploaded_file($_FILES["image"]["tmp_name"], $target_file);

    // Insert data into team table 

    $sql = "INSERT INTO team (name, designation, description, image_path) VALUES ('$name', '$designation', '$description', '$image_path')";

    if ($conn->query($sql) === TRUE) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

$conn->close();
?>

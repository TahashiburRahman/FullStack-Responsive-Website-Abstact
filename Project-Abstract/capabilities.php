<?php
// Database connection
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "abstract2";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fetch data from the database
$sql = "SELECT * FROM items";
$result = $conn->query($sql);

// Generate HTML dynamically
if ($result->num_rows > 0) {
    echo '<div class="capabilities" id="capabilities">';
    echo '<h2>CAPABILITIES</h2>';
    echo '<p>Our team reflects a breadth and depth of experience that underpins our success. Our areas of expertise include:</p>';
    echo '<div class="icon">';
    echo '<div class="items">';
    while($row = $result->fetch_assoc()) {
        echo '<div class="item-icon">';
        echo '<div class="icon-image"><img src="./assets/assets/icons/' . $row["icon_image"] . '" alt=""></div>';
        
        echo '<div class="icon-title">' . $row["icon_title"] . '</div>';
        echo '</div>';
    }
    echo '</div>'; 
    echo '</div>'; 
    echo '</div>'; 
} else {
    echo "0 results";
}

// Close connection
$conn->close();
?>

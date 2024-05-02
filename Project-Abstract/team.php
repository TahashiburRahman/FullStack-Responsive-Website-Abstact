<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Our Team</title>
    <style>
    .containteam {
        display: flex;
        flex-direction: column;
        border: 2px solid black;
        width: 1440px;
        margin-top: 700px;
        /* Adjusted margin for better placement */
        margin-left: 13%;
    }

    .imgroom>img {
        margin-left: -400px;
        margin-top: -200px;
    }

    .teambox {
        padding-left: 200px;
        margin-top: 100px;
    }

    .teambox>h1 {
        margin: 0px 0px 50px -50px;
    }


    .rowe {
        display: flex;
        flex-direction: row;
        justify-content: space-around;
        
    }

    .col {
        margin: 30px 30px;
       
        text-align: center;
        flex-basis: 30%;

    }

    .col:hover {
        transform: scale(1.1);
    }
    </style>
</head>

<body>
    <div class="containteam">
        <div class="imgroom">
            <img src="./assets/assets/Team/Group 122.png" alt="">
        </div>
        <div class="teambox" id="team">
            <h1>TEAM</h1>
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
 // Fetch team members from the database
 $sql = "SELECT * FROM team";
 $result = $conn->query($sql);

 if ($result->num_rows > 0) {
     $counter = 0;
     echo '<div class="rowe">';
     while ($row = $result->fetch_assoc()) {
         echo '<div class="col">';
         echo '<img src="./assets/assets/Team/' . $row["image_path"] . '" alt="">';
         echo '<div class="nam">' . $row["name"] . '</div>';
         echo '<div class="desg">' . $row["designation"] . '</div>';
         echo '</div>';
         $counter++;
         // Start a new row after every three team members
         if ($counter % 3 == 0 && $counter < $result->num_rows) {
             echo '</div><div class="rowe">';
         }
     }
     echo '</div>'; 
 } else {
     echo "0 results";
 }
 $conn->close();
 ?>
        </div>
    </div>
</body>

</html>
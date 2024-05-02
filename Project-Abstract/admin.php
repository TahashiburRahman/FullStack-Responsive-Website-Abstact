<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="admin.css">
    <title>Admin Panel</title>
</head>

<body>
    <h1>Add Capability</h1>
    <form action="process.php" method="post">
        <label for="icon_image">Icon Image:</label><br>
        <input type="file" id="icon_image" name="icon_image"><br>

        <label for="icon_title">Icon Title:</label><br>
        <input type="text" id="icon_title" name="icon_title"><br>
        <label for="description">Description:</label><br>
        <textarea id="description" name="description"></textarea><br><br>
        <input type="submit" value="Submit">
    </form>


    <h2>Add Team Member</h2>
    <form action="process2.php" method="POST" enctype="multipart/form-data">
        <label for="name">Name:</label><br>
        <input type="text" id="name" name="name"><br>
        <label for="designation">Designation:</label><br>
        <input type="text" id="designation" name="designation"><br>
        <label for="description">Description:</label><br>
        <textarea id="description" name="description"></textarea><br>
        <label for="image">Image:</label><br>
        <input type="file" id="image" name="image"><br>
        <input type="submit" value="Add Member">
    </form>
</body>

</html>
<!DOCTYPE html>
<html>

<head>
	<title>Insert Page page</title>
</head>

<body>
	<center>
		<?php
$servername = "localhost";
$username = "root";
$password = "Joseph@2022!";
$database = "jcrm_church";
		$conn = mysqli_connect("localhost", "root", "Joseph@2022!", "jcrm_church");
		
		// Check connection
		if($conn === false){
			die("ERROR: Could not connect. "
				. mysqli_connect_error());
		}
		

        $name = $_POST["name"];
        $email = $_POST["email"];
        $phone_number = $_POST["phone_number"];
        $category = $_POST["category"];
        $subject = $_POST["subject"];
        $message = $_POST["message"];
        
        // Perform SQL query to insert data into the contact table
        $sql = "INSERT INTO contact VALUES ('$name', '$email', '$phone_number','$category','$subject','$message')";
        
        if ($conn->query($sql) === TRUE) {
            // Send success response to frontend
            echo "Message sent successfully";
        } else {
            // Send error response to frontend
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
        ?>
        </center>
        
        
    </body>
        
</html>
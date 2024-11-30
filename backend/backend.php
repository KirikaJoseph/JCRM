<?php
// Database configuration
$servername = "localhost";
$username = "root";
$password = "Joseph@2022!";
$database = "jcrm_church";


// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Handle form submission for members table
    if (isset($_POST["submit_members"])) {
        $fname = $_POST["fname"];
        $lname = $_POST["lname"];
        $email = $_POST["email"];
        
        // Perform SQL query to insert data into the members table
        $sql = "INSERT INTO members (first_name, last_name, email) VALUES ('$fname', '$lname', '$email')";
        
        if ($conn->query($sql) === TRUE) {
            // Send success response to frontend
            echo "Record added to members table successfully";
        } else {
            // Send error response to frontend
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    }
    
    // Handle form submission for missions_booking table
    if (isset($_POST["submit_missions_booking"])) {
        $fname = $_POST["fname"]; // Assuming you have a member_id field in the form
        $sname = $_POST["sname"];
        $email = $_POST["email"];
        $message = $_POST["message"];
        
        // Perform SQL query to insert data into the missions_booking table
        $sql = "INSERT INTO missions_booking (fname, sname, email, message) VALUES ('$fname', '$sname', '$email', '$message')";
        
        if ($conn->query($sql) === TRUE) {
            // Send success response to frontend
            echo "Record added to missions_booking table successfully";
        } else {
            // Send error response to frontend
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    }
    
    // Handle form submission for youths_booking table
    if (isset($_POST["submit_youths_booking"])) {
        $member_id = $_POST["member_id"]; // Assuming you have a member_id field in the form
        $event_name = $_POST["event_name"];
        $event_date = $_POST["event_date"];
        
        // Perform SQL query to insert data into the youths_booking table
        $sql = "INSERT INTO youths_booking (member_id, event_name, event_date) VALUES ('$member_id', '$event_name', '$event_date')";
        
        if ($conn->query($sql) === TRUE) {
            // Send success response to frontend
            echo "Record added to youths_booking table successfully";
        } else {
            // Send error response to frontend
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    }
    
    // Handle form submission for women_booking table
    if (isset($_POST["submit_women_booking"])) {
        $member_id = $_POST["member_id"]; // Assuming you have a member_id field in the form
        $event_name = $_POST["event_name"];
        $event_date = $_POST["event_date"];
        
        // Perform SQL query to insert data into the women_booking table
        $sql = "INSERT INTO women_booking (member_id, event_name, event_date) VALUES ('$member_id', '$event_name', '$event_date')";
        
        if ($conn->query($sql) === TRUE) {
            // Send success response to frontend
            echo "Record added to women_booking table successfully";
        } else {
            // Send error response to frontend
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    }
    
    // Handle form submission for workshop_booking table
    if (isset($_POST["submit_workshop_booking"])) {
        $member_id = $_POST["member_id"]; // Assuming you have a member_id field in the form
        $workshop_name = $_POST["workshop_name"];
        $workshop_date = $_POST["workshop_date"];
        
        // Perform SQL query to insert data into the workshop_booking table
        $sql = "INSERT INTO workshop_booking (member_id, workshop_name, workshop_date) VALUES ('$member_id', '$workshop_name', '$workshop_date')";
        
        if ($conn->query($sql) === TRUE) {
            // Send success response to frontend
            echo "Record added to workshop_booking table successfully";
        } else {
            // Send error response to frontend
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    }
    
    // Handle form submission for men_booking table
    if (isset($_POST["submit_men_booking"])) {
        $member_id = $_POST["member_id"]; // Assuming you have a member_id field in the form
        $event_name = $_POST["event_name"];
        $event_date = $_POST["event_date"];
        
        // Perform SQL query to insert data into the men_booking table
        $sql = "INSERT INTO men_booking (member_id, event_name, event_date) VALUES ('$member_id', '$event_name', '$event_date')";
        
        if ($conn->query($sql) === TRUE) {
            // Send success response to frontend
            echo "Record added to men_booking table successfully";
        } else {
            // Send error response to frontend
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    }
    
    // Handle form submission for other_booking table
    if (isset($_POST["submit_other_booking"])) {
        $member_id = $_POST["member_id"]; // Assuming you have a member_id field in the form
        $event_name = $_POST["event_name"];
        $event_date = $_POST["event_date"];
        
        // Perform SQL query to insert data into the other_booking table
        $sql = "INSERT INTO other_booking (member_id, event_name, event_date) VALUES ('$member_id', '$event_name', '$event_date')";
        
        if ($conn->query($sql) === TRUE) {
            // Send success response to frontend
            echo "Record added to other_booking table successfully";
        } else {
            // Send error response to frontend
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    }
    
    // Handle form submission for contact table
    if (isset($_POST["submit_message"])) {
        $name = $_POST["name"];
        $email = $_POST["email"];
        $phone_number = $_POST["phone_number"];
        $category = $_POST["category"];
        $subject= $_POST["subject"];
        $message = $_POST["message"];
        
        // Perform SQL query to insert data into the contact table
        $sql = "INSERT INTO contact (name, email, phone_number, category, subject, message) VALUES ('$name', '$email', '$phone_number','$category','$subject','$message')";
        
        if ($conn->query($sql) === TRUE) {
            // Send success response to frontend
            echo "Message sent successfully";
        } else {
            // Send error response to frontend
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    }
    
    // Handle form submission for book_request table
    if (isset($_POST["submit_book_request"])) {
        // Add code to handle requests for book_request table
    }
    
    // Handle form submission for donations table
    if (isset($_POST["submit_donations"])) {
        $fname = $_POST["fname"];
        $lname = $_POST["lname"];
        $email = $_POST["email"];
        // Add other necessary fields
        
        // Perform SQL query to insert data into the donations table
        $sql = "INSERT INTO donations (fname, lname, email) VALUES ('$fname', '$lname', '$email')";
        
        if ($conn->query($sql) === TRUE) {
            // Send success response to frontend
            echo "Record added to donations table successfully";
        } else {
            // Send error response to frontend
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    }
}

// Close connection
$conn->close();
?>

<?php
session_start();
if(isset($_SESSION['examineeSession']['examineenakalogin']) == true) header("location:home.php");


include("conn.php");

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    extract($_POST);

    // Validate form data (add more validation as needed)
    if (empty($email) || empty($fullname) || empty($password)) {
        $res = array("res" => "empty_fields");
    } else {
        $checkEmail = $conn->query("SELECT * FROM examinee_tbl WHERE exmne_email='$email'");
        if ($checkEmail->rowCount() > 0) {
            $res = array("res" => "email_exists");
        } else {
            // $hashedPassword = password_hash($password, PASSWORD_DEFAULT);
            $insertUser = $conn->prepare("INSERT INTO examinee_tbl (exmne_email, exmne_password, exmne_fullname, exmne_gender, exmne_birthdate, exmne_course, exmne_year_level) VALUES (?, ?, ?, ?, ?, ?, ?)");
            if ($insertUser->execute([$email, $password, $fullname, $gender, $bdate, $course, $year_level])) {
                $res = array("res" => "success");
            } else {
                $res = array("res" => "error");
            }
        }
    }

    echo json_encode($res);
    exit(); // Stop execution after processing the form submission
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="login-ui/images/UCS-removebg-preview.png">
    <link rel="stylesheet" href="login-ui/css/mainreg.css">
   
    <title>Student Registration</title>
</head>
<body style="background-image: url(login-ui/images/ucs1.jpg	); background-repeat: no-repeat; background-position: center; background-size: cover;">
<form id="registrationForm" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
    <div class="form">
        <p class="title"> Student Register</p>
        <p class="message">Register now to get access</p>

        <div class="flex">
        <label>
            <input type="fullname" name="fullname" required placeholder="" class="input">
            <span>Full Name</span>
        </label>

        <label>
            <input type="email" name="email" required placeholder="" class="input">
            <span>Email</span>
        </label>
        </div>

        <label>
            <input type="password" name="password" required placeholder="" class="input">
            <span>Password</span>
        </label>

        <label for="gender">Gender:</label>
            <select name="gender" required>
            <option value="male">Male</option>
            <option value="female">Female</option>
            <option value="other">Other</option>
        </select>

        <label>
            <span>Birthdate:</span> 
        <input type="date" name="bdate" id="bdate" required class="input">
        
        </label>
        

        <div class="flex">
        <label for="course">Strand:</label>
        <select class="form-control" name="course" id="course">
            <option value="0">Select strand</option>
            <?php 
            $selCourse = $conn->query("SELECT * FROM course_tbl ORDER BY cou_id asc");
            while ($selCourseRow = $selCourse->fetch(PDO::FETCH_ASSOC)) { ?>
                <option value="<?php echo $selCourseRow['cou_id']; ?>"><?php echo $selCourseRow['cou_name']; ?></option>
            <?php } ?>
        </select>

        <label for="year_level">Grade:</label>
        <select class="form-control" name="year_level" id="year_level">
            <option value="Grade 12" selected>Grade 12</option>
            <!-- You can add other options if needed -->
        </select>
        </div>
        
        <button type="submit" class="submit">Register</button>
        <p class="signin">Already have an account? <a href="index.php">Log In</a></p>
    </div>

</body>
</html>


    <!-- Add this script inside the head or at the end of the body -->
<script>
    document.addEventListener("DOMContentLoaded", function () {
        const registrationForm = document.getElementById("registrationForm");

        registrationForm.addEventListener("submit", function (event) {
            event.preventDefault();

            // Check if the Strand field is selected
            const courseField = document.getElementById("course");
            if (courseField.value === "0") {
                alert("Please select a strand.");
                return;
            }

            const formData = new FormData(registrationForm);

            fetch("<?php echo $_SERVER['PHP_SELF']; ?>", {
                method: "POST",
                body: formData,
            })
            .then(response => response.json())
            .then(data => {
                // Handle the response data here
                if (data.res === "success") {
                    alert("Registration successful!");
                    // Redirect to the login page
                    // window.location.href = "index.php"; // Change "login.php" to your actual login page
                } else if (data.res === "empty_fields") {
                    alert("Please fill in all fields.");
                } else if (data.res === "email_exists") {
                    alert("Email already exists. Choose a different email.");
                } else {
                    alert("Error occurred during registration. Please try again.");
                }
            })
            .catch(error => {
                console.error("Error during registration:", error);
            });
        });
    });
</script>


</body>
</html>

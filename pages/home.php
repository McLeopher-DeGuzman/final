

<div class="app-main__outer">
    <div id="refreshData">
        <div class="app-main__inner">
        <?php
// Start the session


// Assuming you have established a database connection
$host = "localhost";
$user = "root";
$pass = "";
$db   = "exam";
$conn = null;

try {
    $conn = new PDO("mysql:host=$host;dbname=$db", $user, $pass);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Assuming you have a session with the examinee's ID stored as $exmneId
    // Replace this with your actual session handling code
    if (isset($_SESSION['examineeSession']['exmne_id'])) {
        $exmneId = $_SESSION['examineeSession']['exmne_id'];

        // Select Data for the logged-in examinee
        $stmt = $conn->query("SELECT * FROM examinee_tbl WHERE exmne_id='$exmneId'");
        $selExmneeData = $stmt->fetch(PDO::FETCH_ASSOC);
        $exmneCourse = $selExmneeData['exmne_course'];
    }
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}
?>

        <!DOCTYPE html>
<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
        }

        .container {
            text-align: center;
            margin-top: 100px;
        }

        .message {
            background-color: #FF7377;
            color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="message">

            <h1>Hello!  <!-- Chat messages will be displayed here -->
            <?php 
            if(isset($selExmneeData)){
                echo '<div class="chat-message bot-message">' . strtoupper($selExmneeData["exmne_fullname"]) . '</div>';
            }
            ?></h1>
            <p>This is the Career Advice Consultation.</p>
        </div>
    </div>
</body>
</html>

    </div>
    </div>

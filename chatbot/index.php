<?php
// Start the session
session_start();

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
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <link rel = "shortcut icon" href = "../login-ui/images/UCS-removebg-preview.png">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <title>Career Advice Consultation Chatbot</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        .back-button {
            margin-top: 20px;
            margin-left: 20px;
        }

        .back-button a {
            text-decoration: none;
            color: #3498db; /* Set your desired color */
            font-size: 18px;
            display: flex;
            align-items: center;
        }

        .back-button a i {
            margin-right: 1200px;
        }
    </style>
</head>

<body>
    <!-- <div class="back-button">
        <a href="">Back</a>
    </div> -->
    <div class="back-button">
        <a href="/UCS/home.php">
            <i class="fas fa-arrow-left"></i>
        </a>
    </div>


    <header class="header">
        <img src="ucs.png" alt="Chatbot Logo" class="logo">
        <br>
        <h1 class="title">Career Advice Consultation Chatbot</h1>
    </header>

    <div class="chat-container">
        <div class="chat-box" id="chatBox">
            <!-- Chat messages will be displayed here -->
            <?php 
            if(isset($selExmneeData)){
                echo '<div class="chat-message bot-message">Congratulations, ' . strtoupper($selExmneeData["exmne_fullname"]) . '</div>';
            }
            ?>
         <div class="chat-message bot-message" onclick="sendMessage('How can I get career advice?')">How can I get career advice?</div>
         <div class="chat-message bot-message" onclick="sendMessage('What is BSIT/BSCS?')">What is BSIT/BSCS?</div>
         <div class="chat-message bot-message" onclick="sendMessage('What is BSA/BSE?')">What is BSA/BSE?</div>
         <div class="chat-message bot-message" onclick="sendMessage('What is BEEd/BSEd?')">What is BEEd/BSEd?</div>
         <div class="chat-message bot-message" onclick="sendMessage('What is BSN/BSP?')">What is BSN/BSP?</div>
         <div class="chat-message bot-message" onclick="sendMessage('What is BSTM/BSHM?')">What is BSTM/BSHM?</div>
        </div>
        <!-- <div class="user-input">
            <button onclick="sendMessage('How can I get career advice?')">How can I get career advice?</button>
        </div> -->
        <div class="user-input">
            <input type="text" id="userInput" placeholder="Type your message...">
            <button id="sendMessage">Send <i class="fas fa-paper-plane"></i></button>
        </div>

    </div>

    

    <script src="script.js"></script>

                
</main>
</body>

</html>










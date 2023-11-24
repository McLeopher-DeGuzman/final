<?php
// Include your database connection code here
include("../../../conn.php");

if (isset($_POST['id']) && is_numeric($_POST['id'])) {
    $examineeId = $_POST['id'];

    // Perform the delete operation
    $deleteQuery = $conn->prepare("DELETE FROM examinee_tbl WHERE exmne_id = :examineeId");
    $deleteQuery->bindParam(":examineeId", $examineeId, PDO::PARAM_INT);

    if ($deleteQuery->execute()) {
        // Deletion was successful
        $response = array("res" => "success");
        echo json_encode($response);
        exit();
    } else {
        // Deletion failed
        $response = array("res" => "error");
        echo json_encode($response);
        exit();
    }
} else {
    // Invalid examinee ID
    $response = array("res" => "error");
    echo json_encode($response);
    exit();
}
?>

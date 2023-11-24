<?php
$examId = $_GET['id'];
$selExam = $conn->query("SELECT * FROM exam_tbl WHERE ex_id='$examId'")->fetch(PDO::FETCH_ASSOC);
?>

<style>

.chatbot-icon:hover {
    animation: pulse 0.5s ease infinite;
  }

  @keyframes pulse {
    0% {
      transform: scale(1);
      box-shadow: 0 0 10px rgba(255, 115, 119, 0.7);
    }
    50% {
      transform: scale(1.1);
      box-shadow: 0 0 20px rgba(255, 115, 119, 0.7);
    }
    100% {
      transform: scale(1);
      box-shadow: 0 0 10px rgba(255, 115, 119, 0.7);
    }
  }
@keyframes float {
  0%, 100% {
    transform: translateY(0);
  }
  50% {
    transform: translateY(-10px); /* Adjust the floating distance */
  }
}

.chatbot-icon {
  font-family: 'Font Awesome'; /* Use your icon font family */
  content: '\f3e8'; 
  position: fixed;
  bottom: 20px;
  right: 20px;
  display: flex;
  align-items: center;
  background-color: #FF9B82; /* Blue background color */
  border-radius: 10px;
  padding: 15px;
  box-shadow: 0 0 15px rgba(0, 0, 0, 0.3);
  transition: background-color 0.3s ease;
  cursor: pointer; /* Add a pointer cursor to indicate interactivity */
  animation: float 3s ease-in-out infinite; /* Apply the floating animation */
}
/* Transition for the chatbot icon link */
/* Transition for the chatbot icon link */
.chatbot-icon a {
  transition: color 0.3s ease, background-color 0.3s ease, transform 0.3s ease, box-shadow 0.3s ease, border-radius 0.3s ease, padding 0.3s ease;
}

/* Apply styles when hovering over the chatbot icon link */
.chatbot-icon a:hover {
  color: #2980b9; /* Change color on hover */
  background-color: #fff; /* Change background color on hover */
  transform: scale(1.1); /* Add a slight scale effect on hover */
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.4); /* Add a box shadow on hover */
  border-radius: 5px; /* Add border radius on hover */
  padding: 5px; /* Adjust padding on hover */
}

</style>

<link rel="stylesheet" type="text/css" href="css/mycss.css">
<div class="app-main__outer">
    <div class="app-main__inner">
        <div class="app-page-title">
            <div class="page-title-wrapper">
                <div class="page-title-heading">
                    <!-- <div>EXAMINEE RESULT</div> -->
                </div>
            </div>
        </div>

        <div class="col-md-12">
            <div class="main-card mb-3 card">
                <div class="card-header">Ratings on the Career Advice Consultation Exam</div>
                <div class="table-responsive">
                    <table class="align-middle mb-0 table table-borderless table-striped table-hover" id="tableList">
                        <thead>
                            <tr>
                                <th>Scores</th>
                                <th>Ratings</th>
                                <th>Subject</th>
                                <th>Course Recommendation</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $selScore = $conn->query("SELECT * FROM exam_question_tbl eqt INNER JOIN exam_answers ea ON eqt.eqt_id = ea.quest_id AND eqt.exam_answer = ea.exans_answer  WHERE ea.axmne_id='$exmneId' AND ea.exam_id='$examId' AND ea.exans_status='new' ");
                            $score = $selScore->rowCount();
                            $over = $selExam['ex_questlimit_display'];
                            $formattedAns = number_format(($score / $over * 100), 2);
                            $subject = "Please Contact"; // Default subject

                            if ($formattedAns >= 1.00 && $formattedAns <= 20.00) {
                                $subject = "Logic";

                            } elseif ($formattedAns >= 20.00 && $formattedAns <= 40.00) {
                                $subject = "Numerical";

                            } elseif ($formattedAns >= 40.00 && $formattedAns <= 60.00) {
                                $subject = "Grammar and Reading Comprehension";

                            } elseif ($formattedAns >= 60.00 && $formattedAns <= 80.00) {
                                $subject = "Clinical";

                            } elseif ($formattedAns >= 80.00 && $formattedAns <= 100.00) {
                                $subject = "Communications Skills";
                            }


                            $courseRecommendation = "Please Contact the";

                            if ($formattedAns >= 1.00 && $formattedAns <= 20.00) {
                                $courseRecommendation = "Bachelor of Science in Computer Science (BSCS), ".
                                " Bachelor of Science in Information Technology (BSIT)";

                            } elseif ($formattedAns >= 20.00 && $formattedAns <= 40.00) {
                                $courseRecommendation = "Bachelor of Science in Architecture (BSA), ".
                                "Bachelor of Science in Engineering (BSE)";

                            } elseif ($formattedAns >= 40.00 && $formattedAns <= 60.00) {
                                $courseRecommendation = "Bachelor of Elementary Education (BEE), ".
                                "Bachelor of Secondary Education (BSE) ";

                            } elseif ($formattedAns >= 60.00 && $formattedAns <= 80.00) {
                                $courseRecommendation = "Bachelor of Science in Nursing (BSN), ".
                                " Bachelor of Science in Pharmacy (BSP)";

                            } elseif ($formattedAns >= 80.00 && $formattedAns <= 100.00) {
                                $courseRecommendation = "Bachelor of Science in Tourism Management (BSTM),".
                                "Bachelor of Science in Hospitality Management (BSHM)";
                            } 
                            ?>

                            <th><?php echo $score . " / " . $over; ?></th>
                            <th><?php echo $formattedAns . "%"; ?></th>
                            <th><?php echo $subject; ?></th>
                            <th><?php echo $courseRecommendation; ?></th>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="chatbot-icon">
            
            <div class="text-message">The chatbot provides advice after reviewing the results and recommendations.</div>
            <a href="./chatbot/index.php">
                <i class='fas fa-comment' style='font-size:48px;color: #FF7377'></i>
            </a>
        </div>
    </div>
</div>

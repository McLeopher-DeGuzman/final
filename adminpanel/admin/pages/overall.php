<link rel="stylesheet" type="text/css" href="css/mycss.css">
<div class="app-main__outer">
    <div class="app-main__inner">
        <div class="app-page-title">
            <div class="page-title-wrapper">
                <div class="page-title-heading">
                    <div>OVER ALL RESULT</div>
                </div>
            </div>
        </div>

        <div class="col-md-12">
            <div class="main-card mb-3 card">
                <div class="card-header">OVERALL RESULTS</div>
                <div style="text-align: right;">
    <!-- Add a new button to print the entire table with inline styles -->
                <button style="background-color: #1640D6;
                            border: none;
                            color: white;
                            padding: 5px 10px;
                            text-align: center;
                            text-decoration: none;
                            display: inline-block;
                            font-size: 12px;
                            margin: 1px 2px;
                            cursor: pointer;
                            border-radius: 10px;
                        "onclick="printTable();">Print Entire Table</button>
            </div>

                <div class="table-responsive">
                    <table class="align-middle mb-0 table table-borderless table-striped table-hover" id="tableList">
                        
                        <thead>
                            <tr>
                                <th style="width: 18%">Full Name</th>
                                <th style="width: 15%">Exam Name</th>
                                <th style="width: 10%">Scores</th>
                                <th>Ratings</th>
                                <th>Subject</th>
                                <th>Course Recommendation</th>
                                <!-- <th width="10%">DAte and time</th> -->
                            </tr>
                            </thead>
                            <?php 
                            $selExmne = $conn->query("SELECT * FROM examinee_tbl et INNER JOIN exam_attempt ea ON et.exmne_id = ea.exmne_id ORDER BY ea.examat_id DESC ");
                            if($selExmne->rowCount() > 0)
                            {
                                while ($selExmneRow = $selExmne->fetch(PDO::FETCH_ASSOC)) { ?>
                                    <tr>
                                        <td><?php echo $selExmneRow['exmne_fullname']; ?></td>
                                        <td>
                                            <?php 
                                            $eid = $selExmneRow['exmne_id'];
                                            $selExName = $conn->query("SELECT * FROM exam_tbl et INNER JOIN exam_attempt ea ON et.ex_id=ea.exam_id WHERE  ea.exmne_id='$eid' ")->fetch(PDO::FETCH_ASSOC);
                                            $exam_id = $selExName['ex_id'];
                                            echo $selExName['ex_title'];
                                            ?>
                                        </td>
                                        <td>
                                            <?php 
                                            $selScore = $conn->query("SELECT * FROM exam_question_tbl eqt INNER JOIN exam_answers ea ON eqt.eqt_id = ea.quest_id AND eqt.exam_answer = ea.exans_answer  WHERE ea.axmne_id='$eid' AND ea.exam_id='$exam_id' AND ea.exans_status='new' ");
                                            ?>
                                            <span>
                                                <?php echo $selScore->rowCount(); ?>
                                                <?php 
                                                    $over  = $selExName['ex_questlimit_display'];
                                                ?>
                                            </span> / <?php echo $over; ?>
                                        </td>
                                        <td>
                                            <?php 
                                            $selScore = $conn->query("SELECT * FROM exam_question_tbl eqt INNER JOIN exam_answers ea ON eqt.eqt_id = ea.quest_id AND eqt.exam_answer = ea.exans_answer  WHERE ea.axmne_id='$eid' AND ea.exam_id='$exam_id' AND ea.exans_status='new' ");
                                            ?>
                                            <span>
                                                <?php
                                                $score = $selScore->rowCount();
                                                $ans = $score / $over * 100;
                                                $formattedAns = number_format($ans, 2);

                                                echo $formattedAns . "%";

                                                $subject = ""; // Initialize the subject variable
                                                $courseRecommendation = "Unknown"; // Initialize the course recommendation variable

                                                if ($formattedAns >= 1.00 && $formattedAns <= 20.00) {
                                                    $subject = "Logic"; // Assign the subject they excel in
                                                    $courseRecommendation = "Bachelor of Science in Computer Science (BSCS), ".
                                                    " Bachelor of Science in Information Technology (BSIT)";
                                                     // Assign the course recommendation
                                                } elseif ($formattedAns >= 20.00 && $formattedAns <= 40.00) {
                                                    $subject = "Numerical"; // Assign the subject they excel in
                                                    $courseRecommendation = "Bachelor of Science in Architecture (BSA), ".
                                                    "Bachelor of Science in Engineering (BSE)" ; // Assign the course recommendation

                                                } elseif ($formattedAns >= 40.00 && $formattedAns <= 60.00) {
                                                    $subject = "Grammar and Reading Comprehension"; // Assign the subject they excel in
                                                    $courseRecommendation = "Bachelor of Elementary Education (BEE), ".
                                                    "Bachelor of Secondary Education (BSE) " ; // Assign the course recommendation

                                                } elseif ($formattedAns >= 60.00 && $formattedAns <= 80.00) {
                                                    $subject = "Clinical"; // Assign the subject they excel in
                                                    $courseRecommendation =  "Bachelor of Science in Nursing (BSN), ".
                                                    " Bachelor of Science in Pharmacy (BSP)" ; // Assign the course recommendation
                                                    
                                                } elseif ($formattedAns >= 60.00 && $formattedAns <= 80.00) {
                                                    $subject = "Communications Skills"; // Assign the subject they excel in
                                                    $courseRecommendation =   "Bachelor of Science in Tourism Management (BSTM),".
                                                    "Bachelor of Science in Hospitality Management (BSHM)" ; // Assign the course recommendation
                                                    
                                                }
                                                 
                                                else {
                                                    $subject = "Unknown"; // Default case if the percentage doesn't match any subject
                                                }

                                                // Now you can use the $subject and $courseRecommendation variables as needed
                                                ?> 
                                            </span> 
                                        </td>
                                        <td><?php echo $subject; ?></td>
                                        <td><?php echo $courseRecommendation; ?></td>
                                        <!-- ... Previous code ... -->
                                    </tr>
                                <?php }
                            }
                            else
                            { ?>
                                <tr>
                                    <td colspan="2">
                                        <h3 class="p-3">No Course Found</h3>
                                    </td>
                                </tr>
                            <?php } ?>

                            </tbody>
                        </table>
                    </table>
                </div>
               
            </div>
        </div>
    </div>
</div>

<script>
    function printTable() {
        var printWindow = window.open('', '_blank');
        var tableContent = document.getElementById("tableList").outerHTML;

        var currentDate = new Date();
        var formattedDate = currentDate.toLocaleDateString();
        var formattedTime = currentDate.toLocaleTimeString();

        var headerContent = `
            <div>
                <div>
                    <div class="title">URBIZTONDO CATHOLIC SCHOOL</div>
                    <div class="title">Examination Results</div>
                    <br>
                    <div class="subtitle">Date: ${formattedDate}        Time: ${formattedTime}</div>
                    
                </div>
            </div>
        `;

        var footerContent = `
            <div style="margin-top: 20px;">
                <div class="subtitle">Thank you for using our service!</div>
            </div>
        `;

        var printContent = `
        <html>
            <head>
                <title>Print Results</title>
                <link rel="stylesheet" type="text/css" href="css/mycss.css">
                <style>
                    /* Add any additional styles here if needed */
                    body {
                        text-align: center;
                    }

                    .title {
                        font-size: 24px;
                        font-weight: bold;
                    }

                    .subtitle {
                        font-size: 15px;
                    }

                    .logo {
                        width: 50px; /* Adjust the width as needed */
                        height: auto;
                        display: block;
                        margin-bottom: 20px;
                    }

                    .table {
                        margin: 20px auto; /* Center the table */
                        border-collapse: collapse;
                        width: 100%; /* Adjust the width as needed */
                    }

                    th, td {
                        border: 2px solid #dddddd;
                        text-align: left;
                        padding: 8px;
                    }

                    th {
                        background-color: #f2f2f2;
                    }
                </style>
            </head>
            <body>
                <!-- Header Content -->
                <img src="./login-ui/images/UCS-removebg-preview.png" alt="Logo" class="logo">

                ${headerContent}
                
                <!-- Table Content -->
                <table>
                    ${tableContent}
                </table>

                <!-- Footer Content -->
                <hr>
                ${footerContent}
            </body>
        </html>
        `;

        printWindow.document.open();
        printWindow.document.write(printContent);
        printWindow.document.close();
        printWindow.print();
        printWindow.close();
    }
</script>

 <?php 
    $examId = $_GET['id'];
    $selExam = $conn->query("SELECT * FROM exam_tbl WHERE ex_id='$examId' ")->fetch(PDO::FETCH_ASSOC);

 ?>

<div class="app-main__outer">
<div class="app-main__inner">
    <div id="refreshData">
            
    <div class="col-md-12">
        <div class="app-page-title">
            <div class="page-title-wrapper">
                <div class="page-title-heading">
                    <div>
                        <?php echo $selExam['ex_title']; ?>
                          <div class="page-title-subheading">
                            <?php echo $selExam['ex_description']; ?>
                          </div>

                    </div>
                </div>
            </div>
        </div>  
        <div class="row col-md-12">
        	<h1 class="text-primary">RESULT'S</h1>
        </div>

        <div class="row col-md-6 float-left">
        	<div class="main-card mb-3 card">
                <div class="card-body">
                	<h5 class="card-title">Your Answer's</h5>
        			<table class="align-middle mb-0 table table-borderless table-striped table-hover" id="tableList">
                    <?php 
                    	$selQuest = $conn->query("SELECT * FROM exam_question_tbl eqt INNER JOIN exam_answers ea ON eqt.eqt_id = ea.quest_id WHERE eqt.exam_id='$examId' AND ea.axmne_id='$exmneId' AND ea.exans_status='new' ");
                    	$i = 1;
                    	while ($selQuestRow = $selQuest->fetch(PDO::FETCH_ASSOC)) { ?>
                    		<tr>
                    			<td>
                    				<b><p><?php echo $i++; ?> .) <?php echo $selQuestRow['exam_question']; ?></p></b>
                    				<label class="pl-4 text-success">
                    					Answer : 
                    					<?php 
                    						if($selQuestRow['exam_answer'] != $selQuestRow['exans_answer'])
                    						{ ?>
                    							<span style="color:red"><?php echo $selQuestRow['exans_answer']; ?></span>
                    						<?PHP }
                    						else
                    						{ ?>
                    							<span class="text-success"><?php echo $selQuestRow['exans_answer']; ?></span>
                    						<?php }
                    					 ?>
                    				</label>
                    			</td>
                    		</tr>
                    	<?php }
                     ?>
	                 </table>
                </div>
            </div>
        </div>

        <div class="col-md-6 float-left">
        	<div class="col-md-6 float-left">
        	<div class="card mb-3 widget-content bg-night-fade">
                <div class="widget-content-wrapper text-white">
                    <div class="widget-content-left">
                        <div class="widget-heading"><h5>Score</h5></div>
                        <div class="widget-subheading" style="color: transparent;">/</div>
                    </div>
                    <div class="widget-content-right">
                        <div class="widget-numbers text-white">
                            <?php 
                                $selScore = $conn->query("SELECT * FROM exam_question_tbl eqt INNER JOIN exam_answers ea ON eqt.eqt_id = ea.quest_id AND eqt.exam_answer = ea.exans_answer  WHERE ea.axmne_id='$exmneId' AND ea.exam_id='$examId' AND ea.exans_status='new' ");
                            ?>
                            <span>
                                <?php echo $selScore->rowCount(); ?>
                                <?php 
                                    $over  = $selExam['ex_questlimit_display'];
                                 ?>
                                 /<?php echo $over; ?>
                            </span> 
                        </div>
                    </div>
                </div>
            </div>
        	</div>

            <div class="col-md-6 float-left">
             <div class="card mb-3 widget-content bg-happy-green">
                <div class="widget-content-wrapper text-white">
                    <div class="widget-content-left">
                        <div class="widget-heading" style=""><h6>Percentage</h6><br></div>
                        <!-- <div class="widget-subheading" style="color: black">qwerty</div> -->
                        </div>
                        <div class="widget-content-right">
                        <div class="widget-numbers text-white">
                            <?php 
                                $selScore = $conn->query("SELECT * FROM exam_question_tbl eqt INNER JOIN exam_answers ea ON eqt.eqt_id = ea.quest_id AND eqt.exam_answer = ea.exans_answer  WHERE ea.axmne_id='$exmneId' AND ea.exam_id='$examId' AND ea.exans_status='new' ");
                            ?>
                            <span>
                                <!-- <?php 
                                $score = $selScore->rowCount();
                                $ans = $score / $over * 100;
                                $formattedAns = number_format($ans, 2);

                                echo $formattedAns . "%";
                                                                                        
                                if ($formattedAns >= 30.00 && $formattedAns <= 40.00) {
                                    echo " bsit";
                                }
                                elseif ($formattedAns >= 40.00 && $formattedAns <= 50.00) {
                                    echo "bsba";
                                }
                                ?> -->
                                <?php
                                    $score = $selScore->rowCount();
                                    $ans = $score / $over * 100;
                                    $formattedAns = number_format($ans, 2);

                                    echo $formattedAns . "%";

                                    // $subject = ""; // Initialize the subject variable

                                    // if ($formattedAns >= 30.00 && $formattedAns <= 40.00) {
                                    //     $subject = "logic"; // Assign the subject they excel in
                                    // } elseif ($formattedAns >= 40.00 && $formattedAns <= 50.00) {
                                    //     echo " ";
                                    //     $subject = "bsba"; // Assign the subject they excel in
                                    // } else {
                                    //     echo " Unknown subject"; // Default case if the percentage doesn't match any subject
                                    //     $subject = "unknown";
                                    // }

                                    // // Now you can use the $subject variable to further process or display the subject they excel in
                                    // echo "Subject: " . $subject;
                                    ?>

                            </span> 
                        </div>
                        <!-- <div> 
                            <span>
                            <div class="widget-heading" style="color: white">Course Recommendation</div>

                            </span>
                            <?php
                                if ($formattedAns >= 30.00 && $formattedAns <= 40.00) {
                                    echo " bsit";
                                }
                                elseif ($formattedAns >= 40.00 && $formattedAns <= 50.00) {
                                    echo "Bachelor Of Walang Kwenta";
                                }
                                ?> 
                                
                        </div> -->
                    </div>
                </div>
            </div>
            <div>
                <a href="./chatbot/index.php">
            <!-- <button type="button" id="TooltipDemo" class="btn-open-options btn btn-warning" style="top: 110px !important;"> -->
            <!-- <i class='fas fa-comment' style='font-size:48px;color: #FF7377'></i> -->
            </div>
       
    </div>
</div>

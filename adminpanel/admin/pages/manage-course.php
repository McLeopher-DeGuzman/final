<link rel="stylesheet" type="text/css" href="css/mycss.css">
<div class="app-main__outer">
        <div class="app-main__inner">
            <div class="app-page-title">
                <div class="page-title-wrapper">
                    <div class="page-title-heading">
                        <div>MANAGE STRAND</div>
                    </div>
                </div>
            </div>        
            <div>
            
            <button class="btn btn-success" data-toggle="modal" data-target="#modalForAddCourse" style="margin-left: 2%;">
                <i class="fas fa-plus-circle"></i> Add Strand
            </button>


            </div>
            <div class="col-md-12">
                <div class="main-card mb-3 card">
                    <div class="card-header">Strand List
                    </div>
                    <div class="table-responsive">
                        <table class="align-middle mb-0 table table-borderless table-striped table-hover" id="tableList">
                            <thead>
                            <tr>
                                <th class="text-left pl-4">Strand Name</th>
                                <th class="text-center" width="20%">Action</th>
                            </tr>
                            </thead>
                            <tbody>
                              <?php 
                                $selCourse = $conn->query("SELECT * FROM course_tbl ORDER BY cou_id DESC ");
                                if($selCourse->rowCount() > 0)
                                {
                                    while ($selCourseRow = $selCourse->fetch(PDO::FETCH_ASSOC)) { ?>
                                        <tr>
                                            <td class="pl-4">
                                                <?php echo $selCourseRow['cou_name']; ?>
                                            </td>
                                            <td class="text-center">
                                            <a rel="facebox" style="text-decoration: none;" class="btn btn-primary btn-sm" href="facebox_modal/updateCourse.php?id=<?php echo $selCourseRow['cou_id']; ?>" id="updateCourse">
                                                <i class="fas fa-pencil-alt"></i> <!-- Font Awesome icon for pencil/edit -->
                                            </a>
                                            <button type="button" id="deleteCourse" data-id='<?php echo $selCourseRow['cou_id']; ?>' class="btn btn-danger btn-sm">
                                                <i class="fas fa-trash-alt"></i> <!-- Font Awesome icon for trash/delete -->
                                            </button>
                                        </td>

                                        </tr>

                                    <?php }
                                }
                                else
                                { ?>
                                    <tr>
                                      <td colspan="2">
                                        <h3 class="p-3">No Strand Found</h3>
                                      </td>
                                    </tr>
                                <?php }
                               ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
      
        
</div>
         

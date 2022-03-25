
<?php $__env->startSection('main_admin'); ?>
<!-- dashboard inner -->
<div class="midde_cont">
                  <div class="container-fluid">
                     <div class="row column_title">
                        <div class="col-md-12">
                           <div class="page_title">
                              <h2>Category<small> List</small></h2>
                           </div>
                        </div>
                     </div>
                     <!-- row -->
                     <div class="row">
                        <!-- invoice section -->
                        <div class="col-md-12">
                           <div class="white_shd full margin_bottom_30">
                              <div class="full graph_head">
                                 <div class="heading1 margin_0">
                                    <h2><i class="fa fa-file-text-o"></i> List</h2>
                                 </div>
                              </div>
                             
                              <div class="full padding_infor_info">
                                 <div class="table_row">
                                    <div class="">
                                    <table class="table table-striped table-bordered " id="dataTables-example">
                                        <thead>
                                            <tr>                             
                                                <th>Category Name</th>
                                                <th>Description</th>
                                                <th>Link Category</th>
                                                <th>Delete</th>
                                                <th>Edit</th>
                                            </tr>
                                        </thead>
                                        <tbody>                                      
                                            <?php $__currentLoopData = $lists; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $list): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>                                              
                                                <tr>
                                                    <td><?php echo e($list->Name_Category); ?></td>
                                                    <td><?php echo e($list->Description); ?></td>
                                                    <td><?php echo e($list->Link_Category); ?></td>
                                                    <td ><i class="fa fa-trash-o  fa-fw"></i><a href=""> Xóa</a></td>
                                                    <td ><i class="fa fa-pencil fa-fw"></i> <a href="">Sửa</a></td>
                                                </tr>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </tbody>
                                    </table>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     
                  </div>
                  <!-- footer -->
                  <div class="container-fluid">
                     <div class="footer">
                        <p>Copyright © 2018 Designed by html.design. All rights reserved.</p>
                     </div>
                  </div>
</div>

<!-- end dashboard inner -->
<?php $__env->stopSection(); ?>
<?php echo $__env->make('do_an.admin.layout.adminmaster', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\project_film1\resources\views/do_an/admin/cate/list.blade.php ENDPATH**/ ?>
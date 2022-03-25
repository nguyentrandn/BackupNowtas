
<?php $__env->startSection('main_admin'); ?>
<div id="page-wrapper">
            <div class="container-fluid">
               
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Category
                            <small>List</small>
                        </h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <thead>
                            <tr align="center">                             
                                <th>Category Name</th>
                                <th>Description</th>
                                <th>Link Category</th>
                                <th>Delete</th>
                                <th>Edit</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php 
                                $stt=0
                            ?>
                            <?php $__currentLoopData = $lists; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $list): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <?php $stt++ ?>
                                <?php if($stt%2!=0): ?>
                                <tr class="odd gradeX" align="center">
                                <?php else: ?>   
                                <tr class="even gradeC" align="center">
                                <?php endif; ?>
                                <tr>
                                    <td><?php echo e($list->Name_Category); ?></td>
                                    <td><?php echo e($list->Description); ?></td>
                                    <td><?php echo e($list->Link_Category); ?></td>
                                    <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a href=""> Xóa</a></td>
                                    <td class="center"><i class="fa fa-pencil fa-fw"></i> <a href="">Sửa</a></td>
                                 </tr>
                                 <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </tbody>
                    </table>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        <?php $__env->stopSection(); ?>
<?php echo $__env->make('do_an.admin.layout.masteradmin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\project_film1\resources\views/do_an/admin/cate/cate_list.blade.php ENDPATH**/ ?>
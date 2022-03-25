
<?php $__env->startSection('main_admin'); ?>

<!-- dashboard inner -->
<div class="midde_cont">
                  <div class="container-fluid">
                     <div class="row column_title">
                        <div class="col-md-12">
                           <div class="page_title" >
                              <h2>Category<small> Edit</small></h2>
                           </div>
                        </div>
                     </div>
                     <!-- row -->
                     <div class="row">
                    <div class="col-lg-12">
                        
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-7" style="padding-bottom:120px">
                    <?php if(count($errors)>0): ?>
                            <div class="alert alert-danger">
                                <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <?php echo e($error); ?><br>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </div>
                        <?php endif; ?>
                        <?php if(session('success')): ?>
                            <div class="alert alert-success">
                                <?php echo e(session('success')); ?>

                            </div>
                        <?php endif; ?>
                        <form action="<?php echo e(route('admin.postCateEdit',$lists->id)); ?>" method="POST" enctype="multipart/form-data">
                            <?php echo csrf_field(); ?>               
                            <div class="form-group">
                                <label>Category Name</label>
                                <input class="form-control" name="txtCateName" value="<?php echo e($lists->Name_Category); ?>" placeholder="Please Enter Category Name" />
                            </div> 
                            <div class="form-group">
                                <label>Category Link</label>
                                <input class="form-control" name="txtCateLink" value="<?php echo e($lists->Link_Category); ?>" placeholder="Please Enter Category Link" />
                            </div> 
                            <div class="form-group">
                                <label>Description</label>
                                <input class="form-control" name="txtCateDescription"  value="<?php echo e($lists->Description); ?>" placeholder="Please Enter Description" />
                            </div> 
                                              
                            <button type="submit" class="btn btn-default">Category Edit</button>
                            <button type="reset" class="btn btn-default">Reset</button>
                        <form>
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

<?php echo $__env->make('do_an.admin.layout.adminmaster', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\xampp\htdocs\project_film1\resources\views/do_an/admin/cate/edit.blade.php ENDPATH**/ ?>
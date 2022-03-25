
<?php $__env->startSection('main_admin'); ?>
        <div id="page-wrapper">
            <div class="container-fluid">
                
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Category
                            <small>Add</small>
                        </h1>
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
                        <form action="<?php echo e(route('admin.postCateAdd')); ?>" method="POST" enctype="multipart/form-data">
                            <?php echo csrf_field(); ?>               
                            <div class="form-group">
                                <label>Category Name</label>
                                <input class="form-control" name="txtCateName" placeholder="Please Enter Category Name" />
                            </div> 
                            <div class="form-group">
                                <label>Category Link</label>
                                <input class="form-control" name="txtCateLink" placeholder="Please Enter Category Link" />
                            </div> 
                            <div class="form-group">
                                <label>Description</label>
                                <input class="form-control" name="txtCateDescription" placeholder="Please Enter Description" />
                            </div> 
                                              
                            <button type="submit" class="btn btn-default">Category Add</button>
                            <button type="reset" class="btn btn-default">Reset</button>
                        <form>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->
        <?php $__env->stopSection(); ?>	

<?php echo $__env->make('do_an.admin.layout.masteradmin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\project_film1\resources\views/do_an/admin/cate/cate_add.blade.php ENDPATH**/ ?>
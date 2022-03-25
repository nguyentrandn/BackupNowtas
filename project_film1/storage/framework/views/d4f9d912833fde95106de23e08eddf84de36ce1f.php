
<?php $__env->startSection('main_admin'); ?>  <div id="page-wrapper">
            <div class="container-fluid">
                <form action="<?php echo e(route('admin.postsignin')); ?>" method="post" class="beta-form-checkout">
                    <?php echo csrf_field(); ?>
                <form action="<?php echo e(route('admin.postsignin')); ?>" method="post" class="beta-form-checkout">
                    <?php echo csrf_field(); ?>
                <div class="row">
                    <?php if(count($errors)>0): ?>
                    <div class=" alert-danger">
                        <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $err): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <?php echo e($err); ?>

                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </div>
                <?php endif; ?>
                <?php if(Session::has('success')): ?>                    
                    <div class=" alert-success" role="alert"><?php echo e(Session::get('success')); ?></div>
                   
                <?php endif; ?>
                    <div class="col-lg-12">
                        <h1 class="page-header">User
                            <small>Add</small>
                        </h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-7" style="padding-bottom:120px">
                       
                            <div class="form-group">
                                <label for="your_last_name">Fullname*</label>
								<input class="form-control" type="text" name="fullname" placeholder="Please Enter Fullname" required>
                            </div>
                            <div class="form-group">
                                <label for="phone">Password*</label>
								<input class="form-control" type="password" name="password" placeholder="Please Enter Password" required>
                            </div>
                            <div class="form-group">
                                <label for="phone">Re password*</label>
								<input class="form-control" type="password" name="repassword" placeholder="Please Enter Re password" required>
                            </div>
                            <div class="form-group">
                                <label for="email">Email address*</label>
								<input class="form-control" type="email" name="email" placeholder="Please Enter Email" required>
                            </div>
                            <div class="form-group">
                                <label for="adress">Address*</label>
								<input class="form-control" type="text" name="adress" placeholder="Please Enter Address" required>
                            </div>
                            <div class="form-group">
                                <label for="phone">Phone*</label>
								<input class="form-control" type="text" name="phone" placeholder="Please Enter Phone" required>
                            </div>
                            <button type="submit" class="btn btn-primary"> User add</button>
                            
                       
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->
<?php $__env->stopSection(); ?>		
<?php echo $__env->make('do_an.admin.layout.masteradmin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\project_film1\resources\views/do_an/admin/dangky.blade.php ENDPATH**/ ?>
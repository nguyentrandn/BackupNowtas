
<?php $__env->startSection('main_admin'); ?>

<!-- dashboard inner -->
<div class="midde_cont">
                  <div class="container-fluid">
                     <div class="row column_title">
                        <div class="col-md-12">
                           <div class="page_title">
                              <h2>Accounts<small> Add</small></h2>
                           </div>
                        </div>
                     </div>
                     <!-- row -->
                     <div class="row">
                    <div class="col-lg-12">
                        
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-7" style="padding-bottom:120px">
                  
                        <form action="<?php echo e(route('admin.postsignin')); ?>" method="post" class="beta-form-checkout" enctype="multipart/form-data">
                    <?php echo csrf_field(); ?>
                    <?php if(count($errors)>0): ?>
                    <div class="alert-danger1 alert-danger">
                        <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $err): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <?php echo e($err); ?>

                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </div>
                <?php endif; ?>
                <?php if(Session::has('success')): ?>                    
                    <div class="alert-success1 alert-success" role="alert"><?php echo e(Session::get('success')); ?></div>
                   
                <?php endif; ?>
                              
                            <div class="form-group">
                                <label for="email">Email*</label>
								<input class="form-control" type="email" name="email" placeholder="Please Enter Email" required>
                            </div>
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
                                <label for="address">Address*</label>
								<input class="form-control" type="text" name="address" placeholder="Please Enter Address" required>
                            </div>
                            <div class="form-group">
                                <label for="phone">Phone*</label>
								<input class="form-control" type="text" name="phone" placeholder="Please Enter Phone" required>
                            </div>
                            <div class="form-group">
                                <label for="email">Image admin</label>
								<input class="form-control" type="file" name="file" >
                            </div>
                                              
                            <button type="submit" class="btn btn-default">User Add</button>
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

<?php echo $__env->make('do_an.admin.layout.adminmaster', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\project_film1\resources\views/do_an/admin/acc/add.blade.php ENDPATH**/ ?>
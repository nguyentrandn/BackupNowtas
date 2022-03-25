
<?php $__env->startSection('main_admin'); ?>

<!-- dashboard inner -->
<div class="midde_cont">
                  <div class="container-fluid">
                     <div class="row column_title">
                        <div class="col-md-12">
                           <div class="page_title" >
                              <h2>Product<small> Edit</small></h2>
                           </div>
                        </div>
                     </div>
                     <!-- row -->
                     <div class="row">
                    <div class="col-lg-12">
                        
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-7" style="padding-bottom:120px">
                 
                        <form method="post" action=" <?php echo e(route('admin.postProductEdit',$lists->id)); ?>"class="beta-form-checkout" enctype="multipart/form-data">
                            <?php echo e(csrf_field()); ?>

                            <?php if(count($errors)>0): ?>
                            <div class="alert-danger alert-danger">
                                <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $err): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <?php echo e($err); ?>

                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </div>
                        <?php endif; ?>
                            <?php if(Session::has('success')): ?>                    
                            <div class="alert-success alert-success" style="
                            margin-top: 0px;" role="alert"><?php echo e(Session::get('success')); ?></div>
                           
                        <?php endif; ?>
                            <div class="form-group">
                                <label for="idtype"> Type</label>
                                    <div class="form-check">
                                        <input class="form-check-input " value="anime" type="radio" id="id_anime" <?php echo e($lists->id_type=='anime'? 'checked':''); ?> name="idtype" >
                                        <label for="id_anime" class="form-check-label">anime</label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" value="tinhcam" type="radio" id="id_tinhcam" <?php echo e($lists->id_type=='tinhcam'?'checked':''); ?> name="idtype" >
                                        <label for="id_tinhcam" class="form-check-label">tình cảm</label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" value="hanhdong" type="radio" id="id_hanhdong" <?php echo e($lists->id_type=='hanhdong'? 'checked':''); ?> name="idtype" >
                                        <label for="id_hanhdong" class="form-check-label">hành động</label>
                                        <?php $__errorArgs = ['id'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                            <div class="invalid-feedback">
                                                <?php echo e($message); ?>

                                            </div>
                                        <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                    </div>

                            </div>
                            <div class="form-group">
                                <label for="filmname">Film Name*</label>
								<input class="form-control" type="text" name="filmname" value="<?php echo e($lists->Film_name); ?>" placeholder="Please Enter Film Name" required>
                            </div>
                            <div class="form-group">
                                <label for="category">Thể loại</label>
								<input class="form-control" type="text" name="category" value="<?php echo e($lists->Film_category); ?>" placeholder="Please Enter category" required>
                            </div>
                            <div class="form-group">
                                <label for="image">Film image*</label>
								<input class="form-control" type="file" name="image" value="<?php echo e($lists->Film_img); ?>"  >
                                <img src="<?php echo e(URL::To('storage/'.$lists -> Film_img)); ?>"  alt="" height="100px" width="80px">
                            </div>
                            <div class="form-group">
                                <label for="bgr">Background Film*</label>
								<input class="form-control" type="file" name="bgr" value="<?php echo e($lists->Film_bgr); ?>"   >
                                <img src="<?php echo e(URL::To('storage/'.$lists -> Film_bgr)); ?>"  alt="" height="100px" width="200px">
                            </div>
                            <div class="form-group">
                                <label for="trailer">video trailer*</label>
								<input class="form-control" type="text" name="trailer" value="<?php echo e($lists->Film_vd); ?>" placeholder="Please Enter trailer" >
                            </div>
                            <div class="form-group">
                                <label for="watch">video watch*</label>
								<input class="form-control" type="text" name="watch" value="<?php echo e($lists->Film_watch); ?>" placeholder="Please Enter watch" >
                            </div>
                            <div class="form-group">
                                <label for="actor">Diễn viên chính </label>
								<input class="form-control" type="text" name="actor" value="<?php echo e($lists->Film_actor); ?>" placeholder="Please enter actor"  >
                            </div>
                            <div class="form-group">
                                <label for="director">Đạo diễn </label>
								<input class="form-control" type="text" name="director" value="<?php echo e($lists->Film_director); ?>" placeholder="Please enter director" >
                            </div>
                            <div class="form-group">
                                <label for="time">Thời lượng </label>
								<input class="form-control" type="text" name="time" value="<?php echo e($lists->Film_time); ?>" placeholder="Please enter Time"  >
                            </div>
                             <div class="form-group">
                                <label for="main">Sự Nghiệp diễn viên chính </label>
								<input class="form-control" placeholder="Please enter infor-actor" value="<?php echo e($lists->Main_actor); ?>" type="text" name="main"  >
                            </div>
                            <div class="form-group">
                                <label for="number">Số tập </label>
								<input class="form-control" type="text" placeholder="Please enter Episodes" value="<?php echo e($lists->Film_number); ?>" name="number"  >
                            </div>
                            <div class="form-group">
                                <label for="inforfilm">Thông tin phim </label>
								<input class="form-control" type="text" placeholder="Please enter Infor-Film" value="<?php echo e($lists->Film_info); ?>" name="inforfilm" >
                            </div>
                            <div class="form-group">
                                <label for="year">Năm sản xuất </label>
								<input class="form-control" placeholder="Please enter Year" type="text" value="<?php echo e($lists->Film_year); ?>" name="year"  >
                            </div> 
                            <div class="form-group">
                                <label for="country">Quốc gia </label>
								<input class="form-control" type="text" placeholder="Please enter country" value="<?php echo e($lists->country); ?>" name="country"  >
                            </div>
                            <div class="form-group">
                                <label for="release ">	Ngày công chiếu </label>
								<input class="form-control" placeholder="dd/mm/yy"  type="text" value="<?php echo e($lists->Film_release); ?>" name="release" >
                            </div>      
                            <div class="form-group">
                                <label for="tab "> Chọn tab hiển thị </label><br>
                                <div class="form-check">
                                    <input class="form-check-input" value="bo" type="radio" id="tab_bo" <?php echo e(($lists->tab=="bo")? "checked":""); ?> name="tab" >
                                    <label for="tab_bo" class="form-check-label">Phim Bộ</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input"  value="le" type="radio" id="tab_le" <?php echo e(($lists->tab=="le")? "checked":""); ?> name="tab" >
                                    <label for="tab_le" class="form-check-label">Phim Lẻ</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input"  value="scr1" type="radio" id="tab_scr1" <?php echo e(($lists->tab=="scr1")? "checked":""); ?> name="tab" >
                                    <label for="tab_scr1" class="form-check-label">Scroll Phim Bộ</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input"  value="scr2" type="radio" id="tab_scr2" <?php echo e(($lists->tab=="scr2")? "checked":""); ?> name="tab" >
                                    <label for="tab_scr2" class="form-check-label">Scroll Phim Lẻ</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input"  value="new" type="radio" id="new" <?php echo e(($lists->tab=="new")? "checked":""); ?> name="tab" >
                                    <label for="new" class="form-check-label">Phim mới</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" value="anime" type="radio" id="anime" <?php echo e(($lists->tab=="anime")? "checked":""); ?> name="tab" >
                                    <label for="anime" class="form-check-label">Phim hoạt hình</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input"  value="sap" type="radio" id="sap" <?php echo e(($lists->tab=="sap")? "checked":""); ?> name="tab" >
                                    <label for="sap" class="form-check-label">Phim sắp chiếu</label>
                                    
                                </div>
                               
                            </div>             
                            <button type="submit" class="btn btn-default">Update product</button>
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

<?php echo $__env->make('do_an.admin.layout.adminmaster', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\xampp\htdocs\project_film1\resources\views/do_an/admin/product/edit.blade.php ENDPATH**/ ?>
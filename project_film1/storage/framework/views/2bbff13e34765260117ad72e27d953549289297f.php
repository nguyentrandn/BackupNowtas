
<?php $__env->startSection('mainn'); ?>	
	<div class="mainn">
		<div class="mainleft">
			<h1 id=title1> Phim Bộ Mới</h1>	
			<ul class="tab-list">
				<li>Phim Chiếu Rạp</li>
				<li>Phim Sắp Chiếu</li>
				<li class="active">Tất Cả Phim</li>
			</ul>	
			<div class="tab-content">	
				<div class="box">		
				<?php $__currentLoopData = $new_film; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $new): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
					<div class="row">
																		
						<div class="item-header">
						<a href="<?php echo e(route('chitiet-movie-phim-bo',$new->id)); ?>"><img src="/source/image/<?php echo e($new -> Film_img); ?>"  alt="" height="250px" width="180px"></a>
							<a class="icon1" href=""><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></a>
							<a class="icon2" href=""><i class="fas fa-star"></i></a>
						</div>
						<div class="item-body">
							<p class="item-title"> <?php echo e($new->Film_name); ?></p>																						
						</div>
						<div class="item-caption">								
							<a class="beta-btn primary" href="<?php echo e(route('chitiet-movie-phim-bo',$new->id)); ?>">Xem phim </a>								
						</div>
							
					</div>	
				<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>		
				</div>
				<div class="box">		
				<?php $__currentLoopData = $sapchieu; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sap): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>	
					<div class="row">
																		
						<div class="item-header">
						<a href="<?php echo e(route('chitiet-movie-phim-bo',$sap->id)); ?>"><img src="/source/image/<?php echo e($sap -> Film_img); ?>"  alt="" height="250px" width="180px"></a>
							<a class="icon1" href=""><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></a>
							<a class="icon2" href=""><i class="fas fa-star"></i></a>
						</div>
						<div class="item-body">
						<p class="item-title"> <?php echo e($sap->Film_name); ?></p>																						
						</div>
						<div class="item-caption">								
							<a class="beta-btn primary" href="<?php echo e(route('chitiet-movie-phim-bo',$sap->id)); ?>">Xem phim </a>								
						</div>
							
					</div>		
				<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>		
				</div>
				<div class="box">		
					
				<?php $__currentLoopData = $movies; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $movie): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
					<div class="row">
																		
						<div class="item-header">
							<a href="<?php echo e(route('chitiet-movie-phim-bo',$movie->id)); ?>"><img src="/source/image/<?php echo e($movie -> Film_img); ?>"  alt="" height="250px" width="180px"></a>
							<a class="icon1" href=""><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></a>
							<a class="icon2" href=""><i class="fas fa-star"></i></a>
						</div>
						<div class="item-body">
							<p class="item-title"> <?php echo e($movie->Film_name); ?></p>																						
						</div>
						<div class="item-caption">								
							<a class="beta-btn primary" href="<?php echo e(route('chitiet-movie-phim-bo',$movie->id)); ?>">Xem phim </a>								
						</div>
							
					</div>
					<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>	
					
				</div>	
				<div class="content-le">
					<h1 id=title2> Phim Lẻ Mới</h1>	
					<div class="row">
																			
						<div class="item-header">
							<a href=""><img src="source/image/1.jpg" alt="" height="250px"></a>
							<a class="icon1" href=""><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></a>
							<a class="icon2" href=""><i class="fas fa-star"></i></a>
						</div>
						<div class="item-body">
							<p class="item-title">Trò Chơi Con Mực</p>																						
						</div>
						<div class="item-caption">								
							<a class="beta-btn primary" href=''>Xem phim </a>								
						</div>
							
					</div>
				</div>		
				<h1 id=title2> Phim Hoạt Hình</h1>	
					<div class="row">
																		
						<div class="item-header">
							<a href=""><img src="source/image/1.jpg" alt="" height="250px"></a>
							<a class="icon1" href=""><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></a>
							<a class="icon2" href=""><i class="fas fa-star"></i></a>
						</div>
						<div class="item-body">
							<p class="item-title">Trò Chơi Con Mực</p>																						
						</div>
						<div class="item-caption">								
							<a class="beta-btn primary" href=''>Xem phim </a>								
						</div>
							
					</div>
			</div>																
		</div>	
		
		<div class="mainright">
			<h3 id=title1> Phim Bộ Hot</h3>	
			<div class="right1-scroll">
				<table>
				<?php $__currentLoopData = $scrolls; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $scr): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>	
					<tr class="item-scroll">
						<td class="image-scroll">
						<a href="<?php echo e(route('chitiet-movie-phim-bo',$scr->id)); ?>"><img src="/source/image/<?php echo e($scr -> Film_img); ?>"  alt="" height="70px" width="57px"></a>
						</td>														
						<td class="title-scroll">
							<a id="title" href="<?php echo e(route('chitiet-movie-phim-bo',$scr->id)); ?>"> <?php echo e($scr->Film_name); ?></a><br>
								<a class="icon1" href=""><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></a>
								<a class="icon2" href=""><i class="fas fa-star"></i></a>
						</td>
					</tr>
				<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>		
				</table>		
			</div><br>
			<h3 id=title1> Phim lẻ Hot</h3>	
			<div class="right2-scroll">
				<table>
				<?php $__currentLoopData = $scrolls2; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $scr2): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
					<tr class="item-scroll">
						<td class="image-scroll">
						<a href="<?php echo e(route('chitiet-movie-phim-le',$scr2->id)); ?>"><img src="/source/image/<?php echo e($scr2 -> Film_img); ?>"  alt="" height="70px" width="57px"></a>
						</td>														
						<td class="title-scroll">
							<a id="title" href="<?php echo e(route('chitiet-movie-phim-le',$scr2->id)); ?>"> <?php echo e($scr2->Film_name); ?></a><br>
								<a class="icon1" href=""><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></a>
								<a class="icon2" href=""><i class="fas fa-star"></i></a>
						</td>
					</tr>
				<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>					
				</table>
			</div>



		</div>
	</div>
<?php $__env->stopSection(); ?>	
<?php echo $__env->make('master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\thido_an\resources\views/do_an/home.blade.php ENDPATH**/ ?>
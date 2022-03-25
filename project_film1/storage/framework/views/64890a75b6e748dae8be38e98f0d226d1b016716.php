<!doctype html>
<html>
	<head>
		
		<title> SS PHIM | Xem Phim Mới | Xem Phim Online | Full Hd-Vietsub </title>
		
		<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">

		<link rel="stylesheet" type="text/css" href="/source/css/login.css">
		<link rel="shortcut icon" type="image/png"  href="/source/image/logo1.png ">
		
        
	<!-- favicon-->	
	
				
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		<script src="https://code.jquery.com/jquery-latest.js"></script>
		<script src="/source/js/main.js"></script>
		<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<!-- favicon-->
  </style>
 
	</head>
	<body>
	
<div class="top" >
	<header>
		<div class="topleft">
			<a href=""><img src="/source/image/logo.png" alt="" height="60px"></a>
		</div>
		<div class="topright">
			<ul>
				<li><a id="page" href=""> Đăng nhập admin </a></li>
						
			</ul>
		</div>
	</header>
</div>

<div class="main">
		<div id="content">
            <?php if($errors->any()): ?>
                    <div class="alert-warning">
                        <ul>
                            <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <li><?php echo e($error); ?></li>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </ul>
                    </div>
            <?php endif; ?>
        <?php if(Session::has('flag')): ?>
        <div class="alert-warning <?php echo e(Session::get('flag')); ?>"><?php echo e(Session::get('message')); ?></div>
        <?php endif; ?>

			<form action="<?php echo e(route('postLogin')); ?>" method="post" class="beta-form-checkout">
				<?php echo csrf_field(); ?>
                <div class="row">
				<div class="rowdn">
					
					<div class="col-sm-6">
						<br><h4>Đăng nhập</h4>
						<div class="space20">&nbsp;</div>

						
						<div class="form-block">
							<label for="email">Email*</label>
							<input type="email" name="email" required>
						</div>
						<div class="form-block">
							<label for="phone">Password*</label>
							<input type="password" name="password" required>
						</div>
						
						<div class="form-block">
							<br><button type="submit" class="btn btn-primary">Register</button>
						</div>
						
					</div>
					
				</div> <!-- rowdk -->
			</form>
		</div> <!-- #content -->
	 <!-- .container -->
    <div class="overlight"></div>
		<div class='footer'style="background-image:url(/source/image/foot.jpg)" width="100%">
			
			<a> Công ty TNHH Store<br><br><br>
			Địa chỉ: k332/h202 Trường Chinh phường Hòa An quận Cẩm Lệ TP Đà Nẵng. Tổng đài hổ trợ 19001223 - Email:Long@hotro.store.vn<br><br>
			Mã số doanh nghiệp: 0328946750 do Sở Kế Hoạch & Đầu Tư TP Đà Nẵng cấp lần đầu ngày 01/06/2016<br><br>
			<i class="far fa-copyright"></i> 2016 - Bản quyền thuộc về Công Ty TNHH Store</a>
		</div>
	
		
</div> <!-- main -->


	


    
	<!-- phần totop -->	
<script type="text/javascript" src="source/js/jquery-2.1.4.min.js"></script>
<script src="source/js/jquery-ui.js"></script>
<script src="source/js/jquery.swipebox.min.js"></script> 
<script type="text/javascript" src="source/js/move-top.js"></script>
	
	<script type="text/javascript">
		$(document).ready(function() {								
		$().UItoTop({ easingType: 'easeOutQuart' });
		});
	</script>
	
	
	<button id="toTop"><i class="fas fa-angle-double-up"></i></button>
	
	</body>
</html>
<?php /**PATH C:\xampp\htdocs\project_film1\resources\views/do_an/admin/dangnhap.blade.php ENDPATH**/ ?>
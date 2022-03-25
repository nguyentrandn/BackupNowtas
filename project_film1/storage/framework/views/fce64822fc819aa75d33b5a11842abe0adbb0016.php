<!doctype html>
<html>
	<head>
		
		<title>	<?php echo e($detail->Film_name); ?> </title>
		
		<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
		<link rel="stylesheet" type="text/css" href="/source/css/chitiet-movie.css">
		<script src="source/js/main.js"></script>
        <link rel="shortcut icon" type="image/png"  href="/source/image/logo1.png ">
	<!-- favicon-->	
	
	
		
		
		
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		<script src="https://code.jquery.com/jquery-latest.js"></script>
	<!-- favicon-->
  </style>
 
	</head>
	<body>
	
<div class="top">
	<header>
		<div class="topleft">
			<a href="home"><img src="/source/image/logo.png" alt="" height="60px"></a>
		</div>
		<div class="topright">
			<ul>
				<li><a id="page" href=""> Phim Lẻ </a></li>
				<li><a id="page" href="phim-bo"> Phim Bộ </a></li>
				<li><a id="page" href=""> Phim Hoạt Hình </a></li>
				<li><a id="page" href=""> Phim Chiếu Rạp </a></li>
				<li><a id="page" href="<?php echo e(route('home')); ?>"> Phim Mới </a></li>			
			</ul>
		</div>
	</header>
</div>

<div class="main">
	<div class="colorbg"style="background-image:url(/source/image/<?php echo e($detail -> Film_bgr); ?>)" width="100%">
		<div class="mainn">
				<div class="mainleft">
					<div class="img-movie">
						<a href=""><img src="/source/image/<?php echo e($detail -> Film_img); ?>"  alt="" height="500px"></a>
					</div>
					
				</div>
				<div class="mainright">
					<div class="container">

						<h1 id="title"><?php echo e($detail->Film_name); ?></h1>
						<a class="icon1" href=""><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></a>
								<a class="icon2" href=""><i class="fas fa-star"></i></a>
								<a id="date"href=""><i class="far fa-clock"></i> 28/9/2021</a>
								<div class='watch'>
									<button class='button-watch2'><a href="#about" class="scroll" >Trailer</a></button>
									<button class='button-watch'><a href="<?php echo e(route('chitiet-movie-phim-bo',$detail->id)); ?>">Xem ngay</a></button>						
								</div>
						<div class="information">
							<ul>
								<li>Thời lượng: <?php echo e($detail->Film_time); ?> </li>
								<li>Số tập: <?php echo e($detail->Film_number); ?></li>
								<li>Quốc gia: <?php echo e($detail->country); ?> </li>
								<li>Năm xuất bản: <?php echo e($detail->Film_year); ?></li>
								<li>Ngày công chiếu: <?php echo e($detail->Film_release); ?> </li>
								<li>Thể loại: <?php echo e($detail->Film_category); ?> </li>
								<li>Đạo diễn: <?php echo e($detail->Film_director); ?> </li>
								<li>Diễn viên: <?php echo e($detail->	Film_actor); ?></li>
							</ul>
						</div>

					</div>
					
				</div>	
				
		</div><br><br>
		<div class="over"></div>
	</div>	
	<div class="content">
		<div class="content1">
			<h1 class="title-content">Nội dung phim</h1>
			<p><?php echo e($detail->Film_info); ?>	</p>
			<h1 class="title-content">Diễn viên chính trong phim <?php echo e($detail->Film_name); ?></h1>
			<p><?php echo e($detail->Main_actor); ?></p>
			<h1 class="title-content" id="about">Official trailer:			</h1>
			<iframe width="800" height="448" src="<?php echo e($detail -> Film_vd); ?>" title="YouTube video player" 
				frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen></iframe>
		</div>
		<div class="move-film">
			<h1 id="title-move">Có thể bạn cũng muốn xem: </h1>
			
			<div class="row">
			<?php $__currentLoopData = $detail_tuongtu; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sptt): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>																		
				<div class="rowmini">
					<div class="item-header">
					<a href="<?php echo e(route('chitiet-movie-phim-le',$sptt->id)); ?>"><img src="/source/image/<?php echo e($sptt -> Film_img); ?>"  alt="" height="250px" width="180px"></a>
						<a class="icon1" href=""><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></a>
						<a class="icon2" href=""><i class="fas fa-star"></i></a>
					</div>
					<div class="item-body">
						<p class="item-title"><?php echo e($sptt -> 	Film_name); ?></p>																						
					</div>
					<div class="item-caption">								
						<a class="beta-btn primary" href=''>Xem phim </a>								
					</div>
				</div>
			<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>	
					
			</div>
		
		
		</div>
	</div>
	<div class="searchmain2">
		<div class="timkiem">						
			<input type="text" name="" class="inputtimkiem" placeholder="Tìm Kiếm Trên SS Phim..."/></input>
				<a class="nut">
					<div class="tool">
						<button class="search"></button>												                  
						<span class="tooltext tool-bottom">Tìm Kiếm</span>
				</div>
				</a>              
		</div>
	</div>
	
		<div class="overlight"></div>
		<div class='footer'style="background-image:url(/source/image/foot.jpg)" width="100%">
			
			<a> Công ty TNHH Store<br><br><br>
			Địa chỉ: k332/h202 Trường Chinh phường Hòa An quận Cẩm Lệ TP Đà Nẵng. Tổng đài hổ trợ 19001223 - Email:Long@hotro.store.vn<br><br>
			Mã số doanh nghiệp: 0328946750 do Sở Kế Hoạch & Đầu Tư TP Đà Nẵng cấp lần đầu ngày 01/06/2016<br><br>
			<i class="far fa-copyright"></i> 2016 - Bản quyền thuộc về Công Ty TNHH Store</a>
		</div>
	
		
</div>


<script src="https://code.jquery.com/jquery-3.6.0.js">
</script>
<!-- smooth scroll -->	
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>

<!-- phần totop -->	
<script type="text/javascript" src="/source/js/jquery-2.1.4.min.js"></script>
<script src="/source/js/jquery-ui.js"></script>
<script src="/source/js/jquery.swipebox.min.js"></script> 
<script type="text/javascript" src="/source/js/move-top.js"></script>
	
	<script type="text/javascript">
		$(document).ready(function() {								
		$().UItoTop({ easingType: 'easeOutQuart' });
		});
	</script>
	
	
	<button id="toTop"><i class="fas fa-angle-double-up"></i></button>
	</body>
</html><?php /**PATH C:\xampp\htdocs\project_film\resources\views/do_an/chitiet-movie-phim-bo.blade.php ENDPATH**/ ?>
<!doctype html>
<html>
	<head>
		
		<title>	<?php echo e($detail->Film_name); ?> </title>
		
		<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
		<link rel="stylesheet" type="text/css" href="/source/css/chitiet-movie.css">
	
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
				<li><a id="page" href="home"> Phim Mới </a></li>		
			</ul>
		</div>
	</header>
</div>

<div class="main">
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
								<a href="<?php echo e(route('chitiet-movie',$detail->id)); ?>" id='button-watch'>Xem ngay</a>
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
	<div class="content">
		<div class="content1">
			<h1 id="title-content">Nội dung phim</h1>
			<p><?php echo e($detail->Film_info); ?>	</p>
			<h1 id="title-content">Diễn viên chính trong phim <?php echo e($detail->Film_name); ?></h1>
			<p><?php echo e($detail->Main_actor); ?></p>
			<h1 id="title-content">Official trailer:			</h1>
			video trailer
		</div>
		<div class="move-film">
			<h1 id="title-move">Có thể bạn cũng muốn xem: </h1>
			
			<div class="row">																		
				<div class="item-header">
					<a href=""><img src=""  alt="" height="250px" width="180px"></a>
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
</div>

<div class='footer'>
				
		<a> Công ty TNHH Store<br><br><br>
		Địa chỉ: k332/h202 Trường Chinh phường Hòa An quận Cẩm Lệ TP Đà Nẵng. Tổng đài hổ trợ 19001223 - Email:Long@hotro.store.vn<br><br>
		Mã số doanh nghiệp: 0328946750 do Sở Kế Hoạch & Đầu Tư TP Đà Nẵng cấp lần đầu ngày 01/06/2016<br><br>
		<i class="far fa-copyright"></i> 2016 - Bản quyền thuộc về Công Ty TNHH Store</a>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.js">
</script>

	</body>
</html><?php /**PATH C:\xampp\htdocs\thido_an\resources\views/do_an/chitiet-movie.blade.php ENDPATH**/ ?>
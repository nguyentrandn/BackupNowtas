@extends('master')
@section('mainn')	
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
				@foreach ($new_film as $new)
					<div class="row">
																		
						<div class="item-header">
						<a href="{{route('chitiet-movie-phim-bo',$new->id)}}"><img src="{{URL::To('storage/'.$new -> Film_img)}}"  alt="" height="250px" width="180px"></a>
							<a class="icon1" href=""><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></a>
							<a class="icon2" href=""><i class="fas fa-star"></i></a>
						</div>
						<div class="item-body">
							<p class="item-title"> {{ $new->Film_name }}</p>																						
						</div>
						<div class="item-caption">								
							<a class="beta-btn primary" href="{{route('chitiet-movie-phim-bo',$new->id)}}">Xem phim </a>								
						</div>
							
					</div>	
				@endforeach		
				</div>
				<div class="box">		
				@foreach ($sapchieu as $sap)	
					<div class="row">
																		
						<div class="item-header">
						<a href="{{route('chitiet-movie-phim-bo',$sap->id)}}"><img src="{{URL::To('storage/'.$sap-> Film_img)}}"  alt="" height="250px" width="180px"></a>
							<a class="icon1" href=""><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></a>
							<a class="icon2" href=""><i class="fas fa-star"></i></a>
						</div>
						<div class="item-body">
						<p class="item-title"> {{ $sap->Film_name }}</p>																						
						</div>
						<div class="item-caption">								
							<a class="beta-btn primary" href="{{route('chitiet-movie-phim-bo',$sap->id)}}">Xem phim </a>								
						</div>
							
					</div>		
				@endforeach		
				</div>
				<div class="box">		
					
				@foreach ($movies as $movie)
					<div class="row">
																		
						<div class="item-header">
							<a href="{{route('chitiet-movie-phim-bo',$movie->id)}}"><img src="{{URL::To('storage/'.$movie -> Film_img)}}"  alt="" height="250px" width="180px"></a>
							<a class="icon1" href=""><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></a>
							<a class="icon2" href=""><i class="fas fa-star"></i></a>
						</div>
						<div class="item-body">
							<p class="item-title"> {{ $movie->Film_name }}</p>																						
						</div>
						<div class="item-caption">								
							<a class="beta-btn primary" href="{{route('chitiet-movie-phim-bo',$movie->id)}}">Xem phim </a>								
						</div>
							
					</div>
					@endforeach	
					
				</div>	
				<div class="content-le">
					<h1 id=title2> Phim Lẻ Mới</h1>	
					@foreach ($movies_le as $movie_le)
					<div class="row">
																			
						<div class="item-header">
							<a href="{{route('chitiet-movie-phim-le',$movie_le->id)}}"><img src="{{URL::To('storage/'.$movie_le -> Film_img)}}"  alt="" height="250px" width="180px"></a>
							<a class="icon1" href=""><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></a>
							<a class="icon2" href=""><i class="fas fa-star"></i></a>
						</div>
						<div class="item-body">
							<p class="item-title"> {{ $movie_le->Film_name }}</p>																						
						</div>
						<div class="item-caption">								
							<a class="beta-btn primary" href="{{route('chitiet-movie-phim-le',$movie_le->id)}}">Xem phim </a>								
						</div>
							
					</div>
					@endforeach	
				</div>		
				<h1 id=title2> Phim Hoạt Hình</h1>	
				@foreach ($movies_anime as $movie_anime)
					<div class="row">
																			
						<div class="item-header">
							<a href="{{route('chitiet-movie-phim-le',$movie_anime->id)}}"><img src="{{URL::To('storage/'.$movie_anime -> Film_img)}}"  alt="" height="250px" width="180px"></a>
							<a class="icon1" href=""><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></a>
							<a class="icon2" href=""><i class="fas fa-star"></i></a>
						</div>
						<div class="item-body">
							<p class="item-title"> {{ $movie_anime->Film_name }}</p>																						
						</div>
						<div class="item-caption">								
							<a class="beta-btn primary" href="{{route('chitiet-movie-phim-le',$movie_anime->id)}}">Xem phim </a>								
						</div>
							
					</div>
					@endforeach	
			</div>																
		</div>	
		
		<div class="mainright">
			<h3 id=title1> Phim Bộ Hot</h3>	
			<div class="right1-scroll">
				<table>
				@foreach ($scrolls as $scr)	
					<tr class="item-scroll">
						<td class="image-scroll">
						<a href="{{route('chitiet-movie-phim-bo',$scr->id)}}"><img src="{{URL::To('storage/'.$scr -> Film_img)}}"  alt="" height="70px" width="57px"></a>
						</td>														
						<td class="title-scroll">
							<a id="title" href="{{route('chitiet-movie-phim-bo',$scr->id)}}"> {{ $scr->Film_name }}</a><br>
								<a class="icon1" href=""><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></a>
								<a class="icon2" href=""><i class="fas fa-star"></i></a>
						</td>
					</tr>
				@endforeach		
				</table>		
			</div><br>
			<h3 id=title1> Phim lẻ Hot</h3>	
			<div class="right2-scroll">
				<table>
				@foreach ($scrolls2 as $scr2)
					<tr class="item-scroll">
						<td class="image-scroll">
						<a href="{{route('chitiet-movie-phim-le',$scr2->id)}}"><img src="{{URL::To('storage/'.$scr2 -> Film_img)}}" alt="" height="70px" width="57px"></a>
						</td>														
						<td class="title-scroll">
							<a id="title" href="{{route('chitiet-movie-phim-le',$scr2->id)}}"> {{ $scr2->Film_name }}</a><br>
								<a class="icon1" href=""><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></a>
								<a class="icon2" href=""><i class="fas fa-star"></i></a>
						</td>
					</tr>
				@endforeach					
				</table>
			</div>



		</div>
	</div>
@endsection	
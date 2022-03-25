@extends('master')
@section('mainn')
    <div class="content0">
        @foreach ($search_Table_films as $timkiem)
            <div class="row2">
                                                                            
                <div class="item-body2">
                    <a href="{{route('chitiet-movie-phim-bo',$timkiem->id)}}"><img src="/source/image/{{$timkiem -> Film_img}}"  alt="" height="250px" width="180px"></a>
                </div>
                <div class="item-body2">
                    <p class="item-title">  {{ $timkiem->search->name }}</p>																						
                </div>                               
            </div>	
        @endforeach	
    </div>
@endsection	
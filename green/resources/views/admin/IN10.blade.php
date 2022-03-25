@extends('layout.index')
@section('stylesheet')
<link rel="stylesheet" href="/admin/css/bootstrap-datepicker3.min.css">
{{-- link table --}}
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
@endsection

@section('breadcrumb')
<div id="breadcrumbs">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a>お知らせ一覧</a></li>
        </ol>
    </nav>
</div>
@endsection

@section('content')
<form name="myform" onsubmit="return false ">
    <div class="container search-form">
        <div class="row" style="padding-left:2%">
            <div class="col-lg-6">
                <div class="row">
                    <label class="col-lg-3 fw col-form-label">ワード検索</label>
                    <div class="col-lg-8">
                        <input type="text" class="form-control" placeholder="お知らせ内容を検索" name="ワード検索">
                    </div>
                </div>
                <div class="row" id="sandbox-container">
                    <div class="input-daterange input-group">
                        <label class="col col-lg-3" style="line-height:55px">公開日</label>
                        <div class="col coll-lg-3" style="margin-left: 10.188px;" >
                            <input type="text"  placeholder="🗓&emsp;開始日を入力" autocomplete="off" class="form-control" style="margin-left: 0px;" name="start">
                                
                        </div>
                        <div class="col col-lg-1 divison-icon" style="text-align: center;line-height:55px;width:49px;">~</div>
                        <div class="col coll-lg-3">
                            <input type="text" placeholder="🗓&emsp;終了日を入力" autocomplete="off" class="form-control" style="margin-left: 0px;" name="end">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="row">
                    <label for="inputState" class="form-label col-lg-3">種類</label>
                    <div class="col-lg-8">
                        <select type="text" name="種類" class="form-select" id="">
                            <option value="">お知らせの種類を選択</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <label class="col col-lg-3">告知先</label>
                    <div class="col col-lg-8" style="display: flex; padding-left: 10px;" >
                        <input  type="checkbox" value="ユーザー" name="ユーザー" id="ユーザー"><label for="ユーザー" class="me-1 w-25"> ユーザー </label>
                        <input  type="checkbox" value="ギルド" name="ギルド" id="ギルド"><label for="ギルド" class="me-1 w-25"> ギルド </label>
                        
                    </div>
                </div>
            </div>
           
        </div>

       

        <div class="row action-button-group">
            <button class="base-button cancel-button" name="クリア">クリア</button>
            <button class="base-button submit-button" name="検索">検索</button>
        </div>

        <div class="row table-action-button-group">
            <label class="w-25 me-auto mt-5">64件中の10件表示</label>    
            <button class="base-button action-button"  onclick="location.href='/admin/IN20'"  name="+新規作成 ">+新規作成</button>
        </div>
        <div class="row">
            <table class="table table-bordered" id="table_data">
                <thead>
                <tr>
                    <th class="th150">種類</th>
                    <th class="th150">公開期間</th>
                    <th class="th300">お知らせタイトル</th>
                    <th class="th150">告知先 </th>
                    <th class="th150" >更新者</th>
                </tr>
                </thead>
                <tbody id="table-body">

                </tbody>
            </table>
        </div>
        
    </div>
    <div class="container">
        <div id="pagination-wrapper"></div>
    </div>
</form>
<script src="/admin/js/bootstrap-datepicker.min.js"></script>
    <script src="/admin/js/bootstrap-datepicker.vi.min.js"></script>
    <script>
        $('#sandbox-container .input-daterange').datepicker({
            format:"yyyy-mm-dd",
            language:"ru",
            autoclose:"true",
            todayHightlight:true
});



// nhập liệu
var tableData = [{
                '種類':'<button class="base-button load-btn mb-3"> お知らせ</button>  ',
                '公開期間':'2021/11/20',
               'お知らせタイトル': 'メンテナンスの実施について',
                '告知先':'ユーザー',
                '更新者':'鈴木 秀逸',
               
                },
                {
                '種類':'<button class="base-button load-btn mb-3"> お知らせ</button>  ',
                '公開期間':'2021/11/20',
               'お知らせタイトル': 'メンテナンスの実施について',
                '告知先':'ユーザー',
                '更新者':'鈴木 秀逸',
                },
                {
               '種類':'<button class="base-button used-btn mb-3"> キャンペーン</button>',
                '公開期間':'2021/11/20',
               'お知らせタイトル': 'メンテナンスの実施について',
                '告知先':'ユーザー',
                '更新者':'鈴木 秀逸',
                }
                ]

    var state = {
    'querySet': tableData,
    'page': 1,
    'rows': 4,
    'window': 10,
}


// buildTable()

function pagination(querySet, page, rows) {

    var trimStart = (page - 1) * rows
    var trimEnd = trimStart + rows

    var trimmedData = querySet.slice(trimStart, trimEnd)

    var pages = Math.round(querySet.length / rows);

    return {
        'querySet': trimmedData,
        'pages': pages,
    }
}

function pageButtons(pages) {
    var wrapper = document.getElementById('pagination-wrapper')

    wrapper.innerHTML = ``
	console.log('Pages:', pages)

    var maxLeft = (state.page - Math.floor(state.window / 2))
    var maxRight = (state.page + Math.floor(state.window / 2))

    if (maxLeft < 1) {
        maxLeft = 1
        maxRight = state.window
    }

    if (maxRight > pages) {
        maxLeft = pages - (state.window - 1)
        
        if (maxLeft < 1){
        	maxLeft = 1
        }
        maxRight = pages
    }
    
    

    for (var page = maxLeft; page <= maxRight; page++) {
    	wrapper.innerHTML += `<button value=${page} class="page btn btn-sm btn-info">${page}</button>`
    }

    if (state.page != 1) {
        wrapper.innerHTML = `<button value=${1} class="page btn btn-sm btn-info">&#171; 初め</button>` + wrapper.innerHTML
    }

    if (state.page != pages) {
        wrapper.innerHTML += `<button value=${pages} class="page btn btn-sm btn-info">最後 &#187;</button>`
    }

    $('.page').on('click', function() {
        $('#table-body').empty()

        state.page = Number($(this).val())

        buildTable()
    })

}

function buildTable() {
    var table = $('#table-body')

    var data = pagination(state.querySet, state.page, state.rows)
    var myList = data.querySet

    for (var i = 1 in myList) {
        //Keep in mind we are using "Template Litterals to create rows"
        var row = `<tr onclick="location.href='/admin/IN30'">
                  <td>${myList[i].種類}</td>
                  <td>${myList[i].公開期間}</td>
                  <td>${myList[i].お知らせタイトル}</td>
                  <td>${myList[i].告知先}</td>
                  <td>${myList[i].更新者}</td>
                  </tr>
                  `
        table.append(row)
    }

    pageButtons(data.pages)
}


$(document).ready(function() {
   
    buildTable();
});
    </script>

@endsection
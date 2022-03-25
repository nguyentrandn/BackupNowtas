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
            <li class="breadcrumb-item"><a>アカウント一覧</a></li>
        </ol>
    </nav>
</div>
@endsection


@section('content')
<!-- Phan Contten ben phai  -->
<form name="myform" onsubmit="return false">
    <div class="container search-form">
        <div class="row" style="padding-left:2%">
            <div class="col-lg-6">
                <div class="row">
                    <label for="inputEmail3" class="col-lg-3 fw col-form-label">氏名</label>
                    <div class="col-lg-8">
                        <input type="text"  class="form-control" placeholder="氏名を入力" name="氏名">
                    </div>
                </div>

                <div class="row">
                    <label for="inputEmail3" class="col-lg-3 fw col-form-label">メールアドレス</label>
                    <div class="col-lg-8">
                        <input type="text" class="form-control" placeholder="メールアドレスを入力" name="メールアドレス">
                    </div>
                </div>
            </div>

            <div class="col-lg-6">
                <div class="row">
                    <label for="inputState" class="col col-lg-3">権限</label>
                    <div class="col-lg-8">
                        <select id="inputState" class="form-select" name="権限">
                            <option value="" selected>権限を選択</option>
                            <option value="管理者">管理者</option>
                            <option value="担当者">担当者</option>
                        </select>
                    </div>
                </div>

                <div class="row "  id="sandbox-container">
                    <div class="input-daterange input-group">
                        <label class="col col-lg-3" style="line-height:55px">登録日</label>
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
        </div>

        <div class="row action-button-group">
            <button class="base-button cancel-button" name="クリア">クリア</button>
            <button class="base-button submit-button" name="検索">検索</button>
        </div>

        <div class="row table-action-button-group">
            <button  onclick="location.href='/admin/AC20'" class="base-button action-button" name="新規作成">新規作成</button>
        </div>
        <div class="row">
            <table class="table table-bordered" id="table_data">
                <thead>
                <tr>
                    <th class="text-start">氏名</th>
                    <th class="text-start">メールアドレス</th>
                    <th class="text-center">権限</th>
                    <th class="text-center">登録日</th>
                    <th class="text-start">最終更新者</th>
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
                '氏名':'藤田 田 ',
                'メールアドレス':'yuki.yamada@bibi.com',
               '権限': '管理者',
                '登録日':'2021/10/23',
                '最終更新者':'藤田 田',
               
                },
                {
                '氏名':'藤田 田 ',
                'メールアドレス':'yuki.yamada@bibi.com',
               '権限': '管理者',
                '登録日':'2021/10/23',
                '最終更新者':'藤田 田',
                },
                {
               '氏名':'藤田 田',
                'メールアドレス':'yuki.yamada@bibi.com',
               '権限': '管理者',
                '登録日':'2021/10/23',
                '最終更新者':'藤田 田',
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
        var row = `<tr onclick="location.href='/admin/AC30'">
                  <td>${myList[i].氏名}</td>
                  <td>${myList[i].メールアドレス}</td>
                  <td>${myList[i].権限}</td>
                  <td>${myList[i].登録日}</td>
                  <td>${myList[i].最終更新者}</td>
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
@extends('layout.index')
@section('stylesheet')
{{-- ngày --}}
<link rel="stylesheet" href="/admin/css/bootstrap-datepicker3.min.css">
{{-- link table --}}
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
@endsection
@section('breadcrumb')
<div id="breadcrumbs">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a>ユーザー一覧</a></li>
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
                    <label class="col-lg-3 fw col-form-label">ユーザー名</label>
                    <div class="col-lg-8">
                        <input type="text" class="form-control" placeholder="クエスト名を入力" name="ユーザー名">
                    </div>
                </div>
                <div class="row">
                    <label for="inputState" class="form-label col-lg-3">都道府県</label>
                    <div class="col-lg-8">
                        <input type="text" name="都道府県" class="form-control" placeholder="都道府県を入力" id="">
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="row">
                    <label class="col col-lg-3">募集期間</label>
                    <div class="col col-lg-8" style="display: flex;padding-left: 10px;">
                        <input  type="checkbox" style="transform: scale(1.5);" value="済" name="済" id="済"><label for="済" class="me-1 w-25"> 済 </label>
                   
                        <input type="checkbox" style="transform: scale(1.5);" value="未" name="未" id="未"><label for="未"> 未 </label>
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
        </div>

        

        <div class="row action-button-group">
            <button class="base-button cancel-button" name="クリア">クリア</button>
            <button class="base-button submit-button" name="検索">検索</button>
        </div>

        <div class="row table-action-button-group">
            <button class="base-button action-button" name="CSVダウンロード ">CSVダウンロード</button>
        </div>
        <div class="row">
            <table class="table table-bordered" id="table_data">
                <thead>
                <tr>
                    <th class="th200">ユーザー名</th>
                    <th class="th100">都道府県</th>
                    <th class="th100">身元確認</th>
                    <th class="th150">登録日</th>
                    <th class="th150" style="text-align: center">応募数</th>
                    <th class="th150" style="text-align: center">Join数</th>
                </tr>
                </thead>
                <tbody id="table-body">

                </tbody>
            </table>
        </div>
        {{-- <div class="row">
            <table class="table table-bordered" id="table_data">
                <tr>
                    <th class="th200">ユーザー名</th>
                    <th class="th100">都道府県</th>
                    <th class="th100">身元確認</th>
                    <th class="th150">登録日</th>
                    <th class="th150" style="text-align: center">応募数</th>
                    <th class="th150" style="text-align: center">Join数</th>
                   
                </tr>
                <tr onclick="location.href='/admin/US20'">
                    <td>吉田 優子</td>
                    <td>佐賀県</td>
                    <td>済</td>
                    <td>2021/10/1</td>
                    <td style="text-align: center; color: #2F6FC8; text-decoration-line:underline;">12</td>
                    <td style="text-align: center; color: #2F6FC8; text-decoration-line:underline;">123</td>
                </tr>
            </table>
        </div> --}}
    </div>
    <div class="container">
        <div id="pagination-wrapper"></div>
    </div>
</form>
    <script src="/admin/js/bootstrap-datepicker.min.js"></script>
    <script src="/admin/js/bootstrap-datepicker.vi.min.js"></script>
    <script>
// phân trang điền table
var tableData = [{
                'ユーザー名':'吉田 優子',
                '都道府県':'佐賀県',
               '身元確認': '済',
                '登録日':'2021/10/1',
                '応募数':'123',
                'Join数':'123',
               
                },
                {
                'ユーザー名':'吉田 優子',
                '都道府県':'佐賀県',
               '身元確認': '済',
                '登録日':'2021/10/1',
                '応募数':'123',
                'Join数':'123',
               
                },
                {
                'ユーザー名':'吉田 優子',
                '都道府県':'佐賀県',
               '身元確認': '済',
                '登録日':'2021/10/1',
                '応募数':'123',
                'Join数':'123',
               
                },
                {
                'ユーザー名':'吉田 優子',
                '都道府県':'佐賀県',
               '身元確認': '済',
                '登録日':'2021/10/1',
                '応募数':'123',
                'Join数':'123',
               
                },
                {
                'ユーザー名':'吉田 優子',
                '都道府県':'佐賀県',
               '身元確認': '済',
                '登録日':'2021/10/1',
                '応募数':'123',
                'Join数':'123',
               
                },
                {
                 'ユーザー名':'吉田 優子',
                '都道府県':'佐賀県',
               '身元確認': '済',
                '登録日':'2021/10/1',
                '応募数':'123',
                'Join数':'123',
               
                },
                {
                 'ユーザー名':'吉田 優子',
                '都道府県':'佐賀県',
               '身元確認': '済',
                '登録日':'2021/10/1',
                '応募数':'123',
                'Join数':'123',
               
                },
                {
                 'ユーザー名':'吉田 優子',
                '都道府県':'佐賀県',
               '身元確認': '済',
                '登録日':'2021/10/1',
                '応募数':'123',
                'Join数':'123',
               
                },
                {
                 'ユーザー名':'吉田 優子',
                '都道府県':'佐賀県',
               '身元確認': '済',
                '登録日':'2021/10/1',
                '応募数':'123',
                'Join数':'123',
               
                },
                {
                 'ユーザー名':'吉田 優子',
                '都道府県':'佐賀県',
               '身元確認': '済',
                '登録日':'2021/10/1',
                '応募数':'123',
                'Join数':'123',
               
                },
                {
                 'ユーザー名':'吉田 優子',
                '都道府県':'佐賀県',
               '身元確認': '済',
                '登録日':'2021/10/1',
                '応募数':'123',
                'Join数':'123',
               
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
        var row = `<tr onclick="location.href='/admin/US20'">
                  <td>${myList[i].ユーザー名}</td>
                  <td>${myList[i].都道府県}</td>
                  <td>${myList[i].身元確認}</td>
                  <td>${myList[i].登録日}</td>
                  <td style="text-align: center; color: #2F6FC8; text-decoration-line:underline;">${myList[i].応募数}</td>
                  <td style="text-align: center; color: #2F6FC8; text-decoration-line:underline;">${myList[i].Join数}</td>
                  </tr>
                  `
        table.append(row)
    }

    pageButtons(data.pages)
}


//ngày
        $('#sandbox-container .input-daterange').datepicker({
            format:"yyyy-mm-dd",
            language:"ru",
            autoclose:"true",
            todayHightlight:true
});

$(document).ready(function() {
    buildTable();
});
    </script>

@endsection
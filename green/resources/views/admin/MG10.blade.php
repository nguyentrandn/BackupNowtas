@extends('layout.index')
@section('stylesheet')
{{-- link table --}}
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
@endsection
@section('breadcrumb')
<div id="breadcrumbs">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a>メッセージ一覧</a></li>
        </ol>
    </nav>
</div>
@endsection

@section('content')
<form onsubmit="return false">
    <div class="container search-form">
        <div class="row" style="padding-left:2%">
            <div class="col-lg-6">
                <div class="row">
                    <label for="inputEmail3" class="col-lg-3 fw col-form-label">ユーザー名</label>
                    <div class="col-lg-8 fw">
                        <input type="email" class="form-control" placeholder="ユーザー名を入力" id="email"
                            name="ユーザー名を入力">
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
            <button class="base-button action-button" onclick="location.href='/admin/MG11'"  name="+新規メッセージ ">+新規メッセージ</button>
        </div>
        <div class="row">
            <table class="table table-bordered" id="table_data">
                <thead>
                <tr>
                    <th class="w-25">ユーザー名</th>
                    <th class="">メッセージ</th>
                    <th class="w-25 text-center">メッセージ日時</th>
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


<script>
    var tableData = [{
                'ユーザー名':'<div class="d-inline pe-3" style="width: 51px; height: 51px"><img src="/admin/image/avt.svg"  alt=""></div><div class="d-inline">佐藤 愛美</div>',
                'メッセージ':'<div class="d-inline pe-3 "><img src="/admin/image/mail.svg" class="pb-3" alt=""></div><div class="d-inline " style="text-overflow: ellipsis">お世話になります。ご連絡ありがとうございます。私のプロフィール...</div>',
               'メッセージ日時': '2021年11月22日 09:27',
             
               
                },
                {
                'ユーザー名':'<div class="d-inline pe-3" style="width: 51px; height: 51px"><img src="/admin/image/avt1.svg"  alt=""></div> <div class="d-inline">佐藤 愛美</div>',
                'メッセージ':' <div class="d-inline pe-3 "><img src="/admin/image/mail1.svg" class="pb-3" alt=""></div><div class="d-inline " >お世話になります。ご連絡ありがとうございます。私のプロフィール...</div>',
               'メッセージ日時': '2021年11月22日 09:27',
             
                },
                {
               'ユーザー名':' <div class="d-inline pe-3" style="width: 51px; height: 51px"><img src="/admin/image/avt2.svg"  alt=""></div><div class="d-inline">佐藤 愛美</div>',
                'メッセージ':'<div class="d-inline pe-3 "><img src="/admin/image/mail.svg" class="pb-3" alt=""></div><div class="d-inline ">お世話になります。ご連絡ありがとうございます。私のプロフィール...</div>',
               'メッセージ日時': '2021年11月22日 09:27',
           
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
        var row = `<tr onclick="location.href='/admin/MG20'">
                  <td>${myList[i].ユーザー名}</td>
                  <td>${myList[i].メッセージ}</td>
                  <td class="text-center">${myList[i].メッセージ日時}</td>
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
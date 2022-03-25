@extends('layout.index')
@section('stylesheet')
{{-- link table --}}
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    {{-- link Validate --}}
    <script src="https://unpkg.com/wanakana"></script>
@endsection
@section('breadcrumb')
<div id="breadcrumbs">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a>ギルド一覧</a></li>
        </ol>
    </nav>
</div>
@endsection

@section('content')
<form name="myform" onsubmit="return false ">
    <div class="container search-form">
        <div class="row" style="padding-left:2%">
            <div class="col-lg-6">
                <div class="row" onclick="japan()">
                    <label class="col-lg-4 fw col-form-label">ギルド名</label>
                    <div class="col-lg-7">
                        <input type="text"  class="form-control" placeholder="メールアドレスを入力" name="ギルド名">
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="row">
                    <label class="col-lg-4 fw col-form-label">都道府県</label>
                    <div class="col-lg-7">
                        <input type="text" class="form-control" placeholder="熊本県" name="都道府県">
                    </div>
                </div>
            </div>
        </div>

       

        <div class="row action-button-group">
            <button class="base-button cancel-button" name="クリア">クリア</button>
            <button class="base-button submit-button" name="検索">検索</button>
        </div>

        <div class="row table-action-button-group">
            <button class="base-button action-button" onclick="location.href='/admin/CL20'">+ 新規作成</button>
            <button class="base-button action-button" name="CSVダウンロード ">CSVダウンロード</button>
        </div>
        <div class="row">
            <table class="table table-bordered" id="table_data">
                <thead>
                <tr>
                    <th class="th200">ギルド名</th>
                    <th class="th100">都道府県</th>
                    <th class="th200">担当者</th>
                    <th class="th100" style="text-align: center">クエスト数</th>
                    <th class="th100" style="text-align: center">Join人数</th>
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
 function japan() {
    let input = document.querySelector("input");

    // disable event function
    const disableEvent = e => {
        e.preventDefault();
        e.stopPropagation();
    };

    // disable paste
    input.addEventListener("paste", disableEvent);

    // disable drag&drop
    input.addEventListener("drop", disableEvent);

    // remove string
    input.addEventListener("keyup", function(e) {
        let tmp = [];

        this.value.split("").forEach(function(item, i) {
            if (item.match(/^([ァ-ヶー]+)|゜|｀|゛$/)) {
                tmp.push(item);
            }else{
                tmp = [];
            }
        });
        if (tmp.length > 0 ) {
            this.value = tmp.join("");
        } else {
            this.value = "";
           
            
        }
        

    });
}
</script>

<script>
    var tableData = [{
                'ギルド名':'伊万里市',
                '都道府県':'佐賀県',
               '担当者': '吉田 優作',
                'クエスト数':'1',
                'Join人数':'123',
               
                },
                {
                'ギルド名':'伊万里市',
                '都道府県':'佐賀県',
               '担当者': '吉田 優作',
                'クエスト数':'2',
                'Join人数':'123',
                },
                {
               'ギルド名':'伊万里市',
                '都道府県':'佐賀県',
               '担当者': '吉田 優作',
                'クエスト数':'3',
                'Join人数':'123',
                },
                {
               'ギルド名':'伊万里市',
                '都道府県':'佐賀県',
               '担当者': '吉田 優作',
                'クエスト数':'4',
                'Join人数':'123',
                },
                {
                'ギルド名':'伊万里市',
                '都道府県':'佐賀県',
               '担当者': '吉田 優作',
                'クエスト数':'5',
                'Join人数':'123', 
                },
                {
                'ギルド名':'伊万里市',
                '都道府県':'佐賀県',
               '担当者': '吉田 優作',
                'クエスト数':'6',
                'Join人数':'123',
                },
                {
                'ギルド名':'伊万里市',
                '都道府県':'佐賀県',
               '担当者': '吉田 優作',
                'クエスト数':'7',
                'Join人数':'123',
                },
                {
                'ギルド名':'伊万里市',
                '都道府県':'佐賀県',
               '担当者': '吉田 優作',
                'クエスト数':'8',
                'Join人数':'123',
                },
                {
                'ギルド名':'伊万里市',
                '都道府県':'佐賀県',
               '担当者': '吉田 優作',
                'クエスト数':'9',
                'Join人数':'123',
                },
                {
                'ギルド名':'伊万里市',
                '都道府県':'佐賀県',
               '担当者': '吉田 優作',
                'クエスト数':'10',
                'Join人数':'123',
                },
                {
                'ギルド名':'伊万里市',
                '都道府県':'佐賀県',
               '担当者': '吉田 優作',
                'クエスト数':'11',
                'Join人数':'123',
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
        var row = `<tr onclick="location.href='/admin/CL30'">
                  <td>${myList[i].ギルド名}</td>
                  <td>${myList[i].都道府県}</td>
                  <td>${myList[i].担当者}</td>
                  <td style="text-align: center; color: #2F6FC8; text-decoration-line:underline;">${myList[i].クエスト数}</td>
                  <td style="text-align: center; color: #2F6FC8; text-decoration-line:underline;">${myList[i].Join人数}</td>
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
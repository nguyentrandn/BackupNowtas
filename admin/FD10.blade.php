<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <!--Link JS ngay thang -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <!--  -->
    <title>FD10_ファンド一覧</title>
    <!-- Css -->
    <link rel="stylesheet" href="./css/header.css">
    <link rel="stylesheet" href="./css/FD10.css">
</head>

<body>
    <div class="row-top">
        <div class="header">
            <div class="top-left">
                <img src="./image/logo.svg" alt="">
            </div>
            <div class="top-right">
                <div class="admin">
                    <ul>
                        <li><img src="./image/admin.svg" alt=""></li>
                        <li class="admin-text mt-2">
                            <p>藤田 田
                            </p>
                        </li>
                        <li class="admin-text mt-1">
                            <svg width="10" height="9" viewBox="0 0 13 12" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M6.5 12L0.00480938 0.75L12.9952 0.75L6.5 12Z" fill="black"/>
                            </svg>
                            <!-- <img src="/image/avatar.svg" alt=""> -->
                        </li>
                    </ul>
                </div>

            </div>
        </div>
    </div>
    <div class=" container-main">
        <div class="container-main-item">
            <div class=" menu" onclick="menu()">
                <img class="close-img" id="btn_close" src="./image/close.svg" alt="">
                <div class="open-img"><i id="btn_open" class="fas fa-bars"></i> <i class="far fa-chevron-right"></i></div>
                <ul class="item-menu">
                    <li>
                        <a href=""> 顧客情報 </a>
                        <span class="tooltip">
                            顧客情報
                        </span>
                    </li>
                    <li id="color-itemmenu">
                        <a href=""> ファンド</a>
                        <span class="tooltip">
                            ファンド
                        </span>
                    </li>
                    <li>
                        <a href=""> お知らせ</a>
                        <span class="tooltip">
                            お知らせ
                        </span>
                    </li>
                    <li>
                        <a href=""> アカウント管理</a>
                        <span class="tooltip">
                            アカウント管理
                        </span>
                    </li>
                    <li>
                        <a href=""> ログアウト</a>
                        <span class="tooltip">
                            ログアウト
                        </span>
                    </li>
                </ul>
            </div>
            <div class="conten">
                <div class="top-conten">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item active" aria-current="page">ファンド一覧</li>
                        </ol>
                    </nav>
                </div>
                <div class="main-conten">
                    <!-- Phan Contten ben phai  -->
                    <form name="myform" onsubmit="return false ">
                        <div class="container">
                            <div class="row mb-3 p-5">
                                <div class="col-lg-6">
                                    <div class="row pb-4">
                                        <label for="inputEmail3" class="col-lg-4 fw col-form-label pt-2 mt-1 px-0 fw-bold">ファンド名</label>
                                        <div class="col-lg-7 px-0 w30 fw">
                                            <input type="text" class=" form-control w30 fw-lighter " placeholder="入力してください" name="ファンド名" id="lzenter">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="row">
                                                <label for="inputState" class="form-label col-lg-4 pt-2 mt-1 px-0 fw">ファンドステータス</label>
                                                <div class="col-lg-7 px-0 w30">
                                                    <select id="inputState" class="form-select w30" name="ファンドステータス">
                                                    <option value="0" selected>選択してください</option>
                                                    <option value="1">option 1</option>
                                                    <option value="2">option 2</option>
                                                    <option value="3">option 3</option>
                                                    <option value="4">option 4</option>
                                                </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="row p-lg-0">
                                        <div class="col col-lg-3 pt-2 mt-1 ps-4">募集期間</div>
                                        <div class="col col-lg-4 px-0 w30">
                                            <input class="form-control w30" placeholder="🗓&emsp;開始日を入力" type="text" name="募集期間_from" id="txtfrom">
                                        </div>
                                        <div class="col col-lg-1 px-0 ps-3 pt-2  ">~</div>
                                        <div class="col col-lg-4 px-0 w30">
                                            <input class="form-control w30" placeholder="🗓&emsp;終了日を入力" type="text" name="募集期間_to" id="txtto">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row justify-content-center ">
                                <div class="col  col-lg-2 ps-5 btn-brown">
                                    <button name="クリア" id="delete ">クリア</button></div>
                                <div class="col col-lg-2 pe-5 btn-red "><button type="submit" name="検索 " id="search ">検索</button></div>
                            </div>
                            <div class="row justify-content-end button-print pt-lg-5 pe-3 ">
                                <div class="col col-lg-2 "><button onclick="location.href='/admin/FD20'">新規作成</button></div>
                                <div class="col col-lg-2 pe-4 "><button name="CSVダウンロード ">CSVダウンロード</button></div>
                            </div>
                            <div class="row pt-4 tb ">
                                <table class="table table-bordered" id="table_data">
                                    <tr>
                                        <th class="name pt-4">ファンド名</th>
                                        <th class="tt text-center">ファンド<br> ステータス
                                        </th>
                                        <th class="time pt-4">募集期間</th>
                                        <th class="tbdate ">残り
                                            <br>日数</th>
                                        <th class="sl ">応募金額<br>（口数/人数)
                                        </th>
                                        <th class="money text-end pt-4">募集金額</th>
                                        <th class="option ">コピーして<br> 新規作成
                                        </th>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </form>
                    <!-- Ket thuc phan Contten  -->
                </div>
            </div>
        </div>
    </div>
</body>
<script>
    // addProduct

    let btn_close = document.querySelector("#btn_close");
    let btn_open = document.querySelector("#btn_open");
    let menu = document.querySelector(".menu");

    btn_close.onclick = function() {
        menu.classList.toggle("active");
    }
    btn_open.onclick = function() {
        menu.classList.toggle("active");
    }

    function loadListFunds() {
        $.get( "/ajax/fund.list", function( data ) {
            console.log(data);
            
            let items = `
            <tr>
                <th class="name ">ファンド名</th>
                <th class="tt ">ファンド<br> ステータス</th>
                <th class="time ">募集期間</th>
                <th class="tbdate ">残り<br>日数</th>
                <th class="sl ">応募金額<br>（口数/人数)</th>
                <th class="money ">募集金額</th>
                <th class="option ">コピーして<br>新規作成</th>
            </tr>
            `;

            data.result.forEach(function(data) {
                let period_date = '';

                if(data['募集期間（日時）_from'] && data['募集期間（日時）_to'] ) {
                    period_date = data['募集期間（日時）_from'] + ' ~ ' + data['募集期間（日時）_to'];
                }

                items += `
                <tr>
                    <td><a href="/admin/FD30?fund_id=${data['id']}">${data['ファンド名'] || '未定義'}</a></td>
                    <td>${data['ファンドステータス']  || ''}</td>
                    <td>${period_date}</td>
                    <td>${data['残り日数']  || ''}</td>
                    <td>${data['応募金額']  || ''}</td>
                    <td>${data['募集金額']  || ''}</td>
                    <td></td>
                </tr>
                `
            });

            $('#table_data').html(items);
        });
    }

    $(document).ready(function() {

        loadListFunds();


        $("#form").submit(function(event) {
            event.preventDefault();
            let data = [];

            /**
             * Get data from Form
             */
            $("#form .form-group").each(function(index, element) {
                let input = $(element).find('input, select, textarea, radio');

                input.each(function(index, element) {
                    var dataType = $(element).attr('type') || 'text';
                    if (dataType === 'radio') {
                        dataType = 'text';
                    }

                    if (dataType === 'file') {
                        let list_files = $(element).prop('files');

                        for (let i = 0; i < list_files.length; i++) {
                            data.push({
                                'column_name': $(element).attr('name'),
                                'data_type': dataType,
                                'value': list_files[i],
                            });
                        }
                    } else {
                        data.push({
                            'column_name': $(element).attr('name'),
                            'data_type': dataType,
                            'value': $(element).val(),
                        });
                    }
                });
            });

            /**
             * Filter out empty data
             */
            data = data.filter(function(item) {
                return item.value !== '';
            });

            console.log(data);

            $.ajax({
                url: 'http://localhost:3000/ajax/fund.create',
                data: JSON.stringify(data),
                type: 'POST',
                contentType: 'application/json',
                success: function() {

                }
            });
        });

        $("#txtfrom").datepicker({
            numberOfMonths: 1,
            dateFormat: 'yy/mm/dd',
            onSelect: function(selectdate) {
                var dt = new Date(selectdate);
                dt.setDate(dt.getDate() + 1)
                $("#txtto").datepicker("option", "minDate", dt);
            }
        });

        $("#txtto").datepicker({
            numberOfMonths: 1,
            dateFormat: 'yy/mm/dd',
            onSelect: function(selectdate) {
                var dt = new Date(selectdate);
                dt.setDate(dt.getDate() - 1)
                $("#txtfrom").datepicker("option", "maxDate", dt);
            }
        });
    });
</script>


</html>
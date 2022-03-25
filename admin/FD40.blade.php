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
    <title>FD40_ファンド（申込一覧）</title>
    <!-- Css -->
    <link rel="stylesheet" href="./css/header.css">
    <link rel="stylesheet" href="./css/FD40.css">
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
                        <li><img src="/image/admin.svg" alt=""></li>
                        <li class="admin-text mt-2">
                            <p>藤田 田
                            </p>
                        </li>
                        <li class="admin-text mt-1"><svg width="10" height="9" viewBox="0 0 13 12" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M6.5 12L0.00480938 0.75L12.9952 0.75L6.5 12Z" fill="black"/>
                            </svg>
                        </li>
                    </ul>
                </div>

            </div>
        </div>
    </div>
    <div class=" container-main">
        <div class="container-main-item">
            <div class=" menu" onclick="menu()">
                <img class="close-img" id="btn_close" src="/image/close.svg" alt="">
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
                            <li class="breadcrumb-item"><a href="FD10">ファンド一覧</a></li>
                            <li class="breadcrumb-item active" aria-current="page">ファンド編集</li>
                        </ol>
                    </nav>
                </div>
                <div class="title-top-conten">
                    <div class="title-recruitment">
                        <div class="recruitment-left">
                            <div class="nhan-recruitment">
                                <p>成立</p>
                            </div>
                            <div class="text-recruitment">
                                <p>アルファアセットファンド京都祇園第4回</p>
                            </div>
                        </div>
                        <div class="recruitment-right">
                            <ul>
                                <li>
                                    <span>募集期間</span>&emsp;&emsp; <a>2021/10/23 〜 2021/10/23</a>
                                </li>
                                <li>
                                    <span>運用期間</span>&emsp;&emsp; <a>2021/10/23 〜 2021/10/23</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="menu-conten">
                        <ul>
                            <li>
                                <a href="FD30"> ファンド情報</a>
                            </li>
                            <li>
                                <a href="" class="color-menu">  申込一覧</a>
                            </li>
                            <li>
                                <a href=""> 投資一覧 </a>
                            </li>
                            <li>
                                <a href=""> メッセージ</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="main-conten">
                    <!-- Phan Contten ben phai  -->
                    <form name="myform" onsubmit="return false ">
                        <div class="container">
                            <div class="row justify-content-end button-print pe-3 ">
                                <div class="col col-lg-2 "><button>CSVアップロード</button></div>
                                <div class="col col-lg-2 pe-4 "><button name="CSVダウンロード ">CSVダウンロード</button></div>
                            </div>
                            <div class="row pt-4 tb ">
                                <table class="table table-bordered ">
                                    <tr>
                                        <th class="name pt-4">抽選ステータス</th>
                                        <th class="tt text-center">申込日
                                        </th>
                                        <th class="time pt-4">お名前</th>
                                        <th class="tbdate ">申込金額 <br> （申込口数）
                                        </th>
                                        <th class="sl ">当選金額 <br> （当選口数）
                                        </th>
                                        <th class="money  pt-4">キャンセル日</th>
                                        <th class="option ">
                                        </th>
                                    </tr>
                                    <tr>
                                        <td>申込</td>
                                        <td>2021/10/12</td>
                                        <td>伊藤 陽子
                                        </td>
                                        <td>¥1,000,000 <br> (10)
                                        </td>
                                        <td>- <br> (-)
                                        </td>
                                        <td>2021/10/15</td>
                                        <td>
                                            <button class="mb-3" name="キャンセル ">キャンセル</button>
                                            <button name="抽選結果入力 ">抽選結果入力</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>申込</td>
                                        <td>2021/10/12</td>
                                        <td>伊藤 陽子
                                        </td>
                                        <td>¥1,000,000 <br> (10)
                                        </td>
                                        <td>- <br> (-)
                                        </td>
                                        <td></td>
                                        <td>
                                            <button class="mb-3" name="キャンセル ">キャンセル</button>
                                            <button name="抽選結果入力 ">抽選結果入力</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>申込</td>
                                        <td>2021/10/12</td>
                                        <td>伊藤 陽子
                                        </td>
                                        <td>¥1,000,000 <br> (10)
                                        </td>
                                        <td>- <br> (-)
                                        </td>
                                        <td>2021/10/15</td>
                                        <td>
                                            <button class="mb-3" name="キャンセル ">キャンセル</button>
                                            <button name="抽選結果入力 ">抽選結果入力</button>
                                        </td>
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
<script src="FD20.js"></script>
<script src=".js"></script>
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

    $(document).ready(function() {
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
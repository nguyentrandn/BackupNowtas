<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/header.css">
    <link rel="stylesheet" href="./css/FD30.css">

    <!-- bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>

    <title>FD30_ファンド編集</title>
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
                        <li class="admin-text">
                            <p>藤田 田
                            </p>
                        </li>
                        <li class="admin-text"><svg width="10" height="9" viewBox="0 0 13 12" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M6.5 12L0.00480938 0.75L12.9952 0.75L6.5 12Z" fill="black"/>
                            </svg></li>
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

                    <!-- <a class="link-top" href="#">ファンド一覧 > ファンド編集</a> -->
                    <nav aria-label="breadcrumb">
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="FD10">ファンド一覧</a></li>
                            <li class="breadcrumb-item active" aria-current="page">ファンド編集</li>
                        </ul>
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
                                <a class="color-menu" href=""> ファンド情報</a>
                            </li>
                            <li>
                                <a href="FD40">  申込一覧</a>
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
                    <div class="option">
                        <div class="option-left">
                            <label for="">プレビュー</label>
                        </div>
                        <div class="option-right">
                            <label for="">公開</label>
                        </div>
                    </div>

                    <form class="row-conten g-3" id="form" onsubmit="return false">

                        <div class="title-main-conten">
                            <p>ファンド概要</p>

                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label class="form-label">ファンドステータス</label>
                                <div class="nhan">必須</div>

                            </div>
                            <div class="coll-md-8 edit-padding">

                                <div class="w30">
                                    <select class="form-select w30" name="ファンドステータス">
                                        <option value="作成中"> 作成中</option>
                                        <option value="募集前">募集前</option>
                                        <option value="募集中">募集中</option>
                                        <option value="募集終了">募集終了</option>
                                        <option value="不成立">不成立</option>
                                        <option value="運用中">運用中</option>
                                        <option value="運用終了">運用終了</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="ファンド名" class="form-label">ファンド名</label>
                                <div class="nhan">必須</div>
                            </div>
                            <div class="coll-md-8 edit-padding">
                                <input class="form-control" name="ファンド名" placeholder="アルファアセットファンド京都祇園第4回" type="text">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="新規／継続" class="form-label">新規／継続</label>
                                <div class="nhan">必須</div>
                            </div>
                            <div class="coll-md-8 ">
                                <input id="1-option" value="新規" name="新規／継続" type="radio"> <label for="1-option"> 新規</label>
                                <input id="2-option" value="継続" name="新規／継続" type="radio"> <label for="2-option"> 継続</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="予定分配率" class="form-label">予定分配率</label>
                                <div class="nhan">必須</div>

                            </div>
                            <div class="coll-md-8 edit-padding">
                                <div class="w30">
                                    <input class="form-control w30" name="予定分配率" placeholder="数字を入力" type="number" min="0">
                                </div>
                                <div class="phantram">%</div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label class="form-label">募集金額</label>
                                <div class="nhan">必須</div>

                            </div>
                            <div class="coll-md-8 edit-padding">
                                <div class="w30">
                                    <input class="form-control w30" name="募集金額" placeholder="数字を入力" type="number" min="0">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label class="form-label">投資単位（1口）</label>
                                <div class="nhan">必須</div>

                            </div>
                            <div class="coll-md-8 edit-padding">
                                <div class="w30">
                                    <input class="form-control w30" name="投資単位（1口）" placeholder="数字を入力" type="number" min="0">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label class="form-label edit-center">一人あたり<br>投資可能口数</label>
                                <div class="nhan">必須</div>
                            </div>
                            <div class="coll-md-8 edit-padding">
                                <div class="w30">
                                    <input class="form-control w30" name="一人あたり投資可能口数_from" placeholder="数字を入力" type="number" min="0">
                                </div>
                                <div class="or"> 以上</div>
                                <div class="w30">
                                    <input class="form-control w30" name="一人あたり投資可能口数_to" placeholder="数字を入力" type="number" min="0">
                                </div>
                                <div class="or">以下</div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label class="form-label">運用期間</label>
                                <div class="nhan">必須</div>
                            </div>
                            <div class="coll-md-8 edit-padding datetime-picker">
                                <div class="w30">
                                    <input class="form-control w30" name="運用期間_from" placeholder="🗓&emsp; 数字を入力 ">
                                </div>
                                <div class="or">〜</div>
                                <div class="w30">
                                    <input class="form-control w30" name="運用期間_to" placeholder="🗓&emsp; 数字を入力  ">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label class="form-label">配当日</label>
                                <div class="nhan">必須</div>
                            </div>
                            <div class="coll-md-8 edit-padding" onclick="date()">
                                <div class="w30">
                                    <input class="form-control w30" name="配当日" id="txtdate" placeholder="🗓&emsp; 数字を入力 ">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label class="form-label">募集期間（日時）</label>
                                <div class="nhan">必須</div>
                            </div>
                            <div class="coll-md-8 edit-padding" onclick="date1()">
                                <div class="w30">
                                    <input class="form-control w30" name="募集期間（日時）_from" placeholder="🗓&emsp; 数字を入力 " id="txtfrom2">
                                </div>
                                <div class="or">〜</div>
                                <div class="w30">
                                    <input class="form-control w30" name="募集期間（日時）_to" placeholder=" 🗓&emsp; 数字を入力  " id="txtto2">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label class="form-label">募集種別</label>
                                <div class="nhan">必須</div>
                            </div>
                            <div class="coll-md-8 edit-padding">
                                <select class="form-select" name="ファンドステータス">
                                    <option value="">募集種別を選択</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label class="form-label">メイン画像</label>
                                <div class="nhan">必須</div>

                            </div>
                            <div class="coll-md-8 edit-padding">
                                <div class="form-both1">
                                    <input type="file" name="メイン画像" />
                                </div>
                                <p class="center25">※ファイルサイズ25MBまで</p>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label class="form-label edit-center">サブ画像(5つまで)</label>
                                <div class="nhan">必須</div>
                            </div>
                            <div class="coll-md-8 edit-padding1">
                                <div class="form-both1">
                                    <input type="file" name="サブ画像_1" />
                                    <button value="＋" class="add pluralBtn">
                                    <button value="－" class="del pluralBtn">
                                </div>
                                <p class="center25">※ファイルサイズ25MBまで</p>
                            </div>
                        </div>

                        <!--  -->



                        <div class="title-main-conten">
                            <p>物件チラシ</p>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label class="form-label edit-center">チラシ画像</label>
                                <div class="nhan">必須</div>

                            </div>
                            <div class="coll-md-8 edit-padding">
                                <div class="form-both1">
                                    <input type="file" id="choose-file" name="チラシ画像" />
                                </div>
                                <p class="center25">※ファイルサイズ25MBまで</p>
                            </div>
                        </div>

                        <div class="title-main-conten">
                            <p>物件詳細</p>
                        </div>
                        <div class="title-main-item">
                            <p>物件概要</p>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="物件名称" class="form-label">物件名称</label>
                                <div class="nhan">必須</div>
                            </div>
                            <div class="coll-md-8 edit-padding">
                                <input class="form-control" name="物件名称" placeholder="入力してください" type="text">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="所在地" class="form-label">所在地</label>
                                <div class="nhan">必須</div>
                            </div>
                            <div class="coll-md-8 edit-padding">
                                <input class="form-control" name="所在地" placeholder="入力してください" type="text">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="交通" class="form-label">交通</label>
                                <div class="nhan">必須</div>
                            </div>
                            <div class="coll-md-8 edit-padding">
                                <input class="form-control" name="交通" placeholder="入力してください" type="text">
                            </div>
                        </div>

                        <div class="title-main-item">
                            <p>土地</p>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="地目" class="form-label">地目</label>
                                <div class="nhan">必須</div>
                            </div>
                            <div class="coll-md-8 edit-padding">
                                <input class="form-control" name="地目" placeholder="選択してください" type="text">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="面積" class="form-label">面積</label>
                                <div class="nhan">必須</div>
                            </div>
                            <div class="coll-md-8 edit-padding">
                                <input class="form-control" name="面積" placeholder="入力してください" type="text">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="権利" class="form-label">権利</label>
                                <div class="nhan">必須</div>
                            </div>
                            <div class="coll-md-8 edit-padding">
                                <input class="form-control" name="権利" placeholder="選択してください" type="text">
                            </div>
                        </div>


                        <div class="title-main-item">
                            <p>建物</p>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="地目" class="form-label">構造</label>
                                <div class="nhan">必須</div>
                            </div>
                            <div class="coll-md-8 edit-padding">
                                <input class="form-control" id="地目" name="構造" placeholder="入力してください" type="text">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="床面積" class="form-label">床面積</label>
                                <div class="nhan">必須</div>
                            </div>
                            <div class="coll-md-8 edit-padding">
                                <input class="form-control" name="床面積" placeholder="入力してください" type="text">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="築年月" class="form-label">築年月</label>
                                <div class="nhan">必須</div>
                            </div>
                            <div class="coll-md-8 edit-padding">
                                <input class="form-control" name="築年月" placeholder="入力してください" type="text">
                            </div>
                        </div>


                        <div class="title-main-item">
                            <p>法令</p>
                        </div>

                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="地目" class="form-label">用途地域</label>
                                <div class="nhan">必須</div>
                            </div>
                            <div class="coll-md-8 edit-padding">
                                <input class=" form-control" name="用途地域" placeholder="入力してください" type="text">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="面積" class="form-label">建ぺい率</label>
                                <div class="nhan">必須</div>
                            </div>
                            <div class="coll-md-8 edit-padding">
                                <input class=" form-control" name="建ぺい率" placeholder="入力してください" type="text">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="容積率" class="form-label">容積率</label>
                                <div class="nhan">必須</div>
                            </div>
                            <div class="coll-md-8 edit-padding">
                                <input class="form-control" name="容積率" placeholder="入力してください" type="text">
                            </div>
                        </div>



                        <div class="title-main-item">
                            <p>賃貸借契約の概要</p>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="貸主" class="form-label">貸主</label>
                                <div class="nhan">必須</div>
                            </div>
                            <div class="coll-md-8 edit-padding">
                                <input class=" form-control" name="貸主" placeholder="入力してください" type="text">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="借主" class="form-label">借主</label>
                                <div class="nhan">必須</div>
                            </div>
                            <div class="coll-md-8 edit-padding">
                                <input class=" form-control" name="借主" placeholder="入力してください" type="text">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="契約形態" class="form-label">契約形態</label>
                                <div class="nhan">必須</div>
                            </div>
                            <div class="coll-md-8 edit-padding">
                                <input class=" form-control" name="契約形態" placeholder="入力してください" type="text">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label class="form-label">現契約期間</label>
                                <div class="nhan">必須</div>

                            </div>
                            <div class="coll-md-8 edit-padding" onclick="date3()">
                                <div class="w30">
                                    <input id="txtfrom3" class="form-control w30" placeholder="🗓&emsp; 開始日を入力 ">
                                </div>
                                <div class="or">〜</div>
                                <div class="w30">
                                    <input class="form-control w30" id="txtto3" placeholder="🗓&emsp; 終了日を入力  ">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="賃料月額" class="form-label">賃料月額</label>
                                <div class="nhan">必須</div>

                            </div>
                            <div class="coll-md-8 edit-padding">
                                <div class="w30">
                                    <input class="form-control w30" name="賃料月額" placeholder="数字を入力" type="number" min="0">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="敷金" class="form-label">敷金</label>
                                <div class="nhan">必須</div>

                            </div>
                            <div class="coll-md-8 edit-padding">
                                <div class="w30">
                                    <input class="form-control w30" name="敷金" placeholder="数字を入力" type="number" min="0">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="契約更改の方法" class="form-label">契約更改の方法</label>
                                <div class="nhan">必須</div>
                            </div>
                            <div class="coll-md-8 edit-padding">
                                <textarea class="form-control" name="契約更改の方法" placeholder="入力してください" type="comment"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="その他重要な事項" class="form-label">その他重要な事項</label>
                                <div class="nhan">必須</div>
                            </div>
                            <div class="coll-md-8 edit-padding">
                                <textarea class="form-control" name="その他重要な事項" placeholder="入力してください" type="text"></textarea>
                            </div>
                        </div>


                        <div class="title-main-conten">
                            <p>想定収支スキーム</p>
                        </div>
                        <div class="title-main-item">
                            <p>出資金の内訳</p>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="物件価格" class="form-label">物件価格</label>
                                <div class="nhan">必須</div>

                            </div>
                            <div class="coll-md-8 edit-padding">
                                <div class="w30">
                                    <input class="form-control w30" name="物件価格" placeholder="数字を入力" type="text">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label class="form-label">出資総額</label>
                            </div>
                            <div class="coll-md-8 edit-padding">
                                <p>0円</p>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label class="form-label">募集金額</label>
                            </div>
                            <div class="coll-md-8 edit-padding">
                                <p>0円</p>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label class="form-label">劣後出資額</label>
                            </div>
                            <div class="coll-md-8 edit-padding">
                                <p>0円</p>
                            </div>
                        </div>

                        <div class="title-main-item">
                            <p>想定収支（収入）</p>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="賃料収入" class="form-label">賃料収入</label>
                                <div class="nhan">必須</div>

                            </div>
                            <div class="coll-md-8 edit-padding">
                                <div class="w30">
                                    <input class="form-control w30" name="賃料収入" placeholder="数字を入力" type="text">
                                </div>
                            </div>
                        </div>


                        <div class="title-main-item">
                            <p>想定収支（支出）</p>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="維持管理費" class="form-label">維持管理費</label>
                                <div class="nhan">必須</div>

                            </div>
                            <div class="coll-md-8 edit-padding">
                                <div class="w30">
                                    <input class="form-control w30" name="維持管理費" placeholder="数字を入力" type="text">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="修繕積立金" class="form-label">修繕積立金</label>
                                <div class="nhan">必須</div>

                            </div>
                            <div class="coll-md-8 edit-padding">
                                <div class="w30">
                                    <input class="form-control w30" name="修繕積立金" placeholder="数字を入力" type="text">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="公租公課" class="form-label">公租公課</label>
                                <div class="nhan">必須</div>

                            </div>
                            <div class="coll-md-8 edit-padding">
                                <div class="w30">
                                    <input class="form-control w30" name="公租公課" placeholder="数字を入力" type="text">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="火災保険料" class="form-label">火災保険料</label>
                                <div class="nhan">必須</div>

                            </div>
                            <div class="coll-md-8 edit-padding">
                                <div class="w30">
                                    <input class="form-control w30" name="火災保険料  " placeholder="数字を入力" type="text">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="PMフィー" class="form-label">PMフィー</label>
                                <div class="nhan">必須</div>

                            </div>
                            <div class="coll-md-8 edit-padding">
                                <div class="w30">
                                    <input class="form-control w30" name="PMフィー" placeholder="数字を入力" type="text">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="税理士報酬 " class="form-label">税理士報酬</label>
                                <div class="nhan">必須</div>

                            </div>
                            <div class="coll-md-8 edit-padding">
                                <div class="w30">
                                    <input class="form-control w30" name="税理士報酬 " placeholder="数字を入力" type="text">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="その他" class="form-label">その他</label>
                                <div class="nhan">必須</div>

                            </div>
                            <div class="coll-md-8 edit-padding">
                                <div class="w30">
                                    <input class="form-control w30" name="その他" placeholder="数字を入力" type="text">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="合計" class="form-label">合計</label>
                                <div class="nhan">必須</div>

                            </div>
                            <div class="coll-md-8 edit-padding">
                                <p>0円</p>
                            </div>
                        </div>


                        <div class="title-main-item">
                            <p>分配金の内訳</p>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="分配原資" class="form-label">分配原資</label>
                            </div>
                            <div class="coll-md-8 edit-padding">
                                <p>0円</p>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="全体口数" class="form-label">全体口数</label>
                            </div>
                            <div class="coll-md-8 edit-padding">
                                <p>0</p>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="優先出資分配金" class="form-label">優先出資分配金</label>
                            </div>
                            <div class="coll-md-8 edit-padding">
                                <p>0円</p>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="1口あたり" class="form-label">1口あたり</label>

                            </div>
                            <div class="coll-md-8 edit-padding">
                                <p>0円</p>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="劣後出資分配金（営業者）" class="form-label">劣後出資分配金 <br>（営業者）</label>
                            </div>
                            <div class="coll-md-8 edit-padding">
                                <p>0円</p>
                            </div>
                        </div>


                        <div class="title-main-item">
                            <p>営業者</p>
                        </div>


                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="商号" class="form-label">商号</label>
                                <div class="nhan">必須</div>
                            </div>
                            <div class="coll-md-8 edit-padding">
                                <input class=" form-control" name="商号" placeholder="入力してください" type="text">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="登録" class="form-label">登録</label>
                                <div class="nhan">必須</div>
                            </div>
                            <div class="coll-md-8 edit-padding">
                                <textarea class=" form-control" name="登録" placeholder="入力してください" type="text"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="郵便番号" class="form-label">郵便番号</label>
                                <div class="nhan">必須</div>

                            </div>
                            <div class="coll-md-8 edit-padding">
                                <div class="w30">
                                    <input class="form-control w30" name="郵便番号" placeholder="数字を入力" type="text">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label class="form-label">都道府県</label>
                                <div class="nhan">必須</div>

                            </div>
                            <div class="coll-md-8 edit-padding">
                                <div class="w30">
                                    <select class="form-select w30" name="都道府県">
                                        <option value="">募集種別を選択</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="住所" class="form-label">住所</label>
                                <div class="nhan">必須</div>
                            </div>
                            <div class="coll-md-8 edit-padding">
                                <input class="form-control" name="住所" placeholder="入力してください" type="text">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="建物名" class="form-label">建物名</label>
                                <div class="nhan">必須</div>
                            </div>
                            <div class="coll-md-8 edit-padding">
                                <input class="form-control" name="建物名" placeholder="入力してください" type="text">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="代表者" class="form-label">代表者</label>
                                <div class="nhan">必須</div>
                            </div>
                            <div class="coll-md-8 edit-padding">
                                <input class="form-control" name="代表者" placeholder="入力してください" type="text">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="電話番号" class="form-label">電話番号</label>
                                <div class="nhan">必須</div>
                            </div>
                            <div class="coll-md-8 edit-padding">
                                <input class="form-control" name="電話番号" placeholder="入力してください" type="text">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="主な事業" class="form-label">主な事業</label>
                                <div class="nhan">必須</div>
                            </div>
                            <div class="coll-md-8 edit-padding">
                                <textarea class="form-control" name="主な事業" placeholder="入力してください" type="text"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="資本金" class="form-label">資本金</label>
                                <div class="nhan">必須</div>
                            </div>
                            <div class="coll-md-8 edit-padding">
                                <input class="form-control" name="資本金" placeholder="入力してください" type="text">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="coll-md-3 ">
                                <label for="設立年月日" class="form-label">設立年月日</label>
                                <div class="nhan">必須</div>
                            </div>
                            <div class="coll-md-8 edit-padding">
                                <input class="form-control" name="設立年月日" placeholder="入力してください" type="text">
                            </div>
                        </div>
                        <div class="button-submit">
                            <button id="open" type="submit" class="bt-save">一時保存</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>



</body>
<script src="FD20.js"></script>
<script src="pop-up.js"></script>
<script>
    $.urlParam = function (name) {
        var results = new RegExp('[\?&]' + name + '=([^&#]*)')
                        .exec(window.location.search);
        return (results !== null) ? results[1] || 0 : false;
    }

    function getBase64(file) {
        return new Promise((resolve, reject) => {
            const reader = new FileReader();
            reader.readAsDataURL(file);
            reader.onload = () => resolve(reader.result);
            reader.onerror = error => reject(error);
        });
    }

    function loadFundDetailInformation(FUND_ID) {
        /**
         * Get data for edit.
         */
        $.get(`/ajax/fund.detail.${FUND_ID}`, function( data ) {
            bindDataForForm(data);
        });
    }


    function bindDataForForm(data) {
        /**
         * Get data from Form
         */
        $(`#form .form-group`).each(function(index, element) {
            let input = $(element).find('input, select, textarea, radio');

            input.each(async function(index, element) {
                data.forEach(function(item) {
                    if(item.column_name === $(element).attr('name')) {

                        if($(element).attr('type') === 'file') {
                            $(element).replaceWith(`
                                <img style="width: 150px; height: auto;" src="${item.value}" /> 
                            `);
                        } 
                        else if ($(element).attr('type') === 'radio') {
                            $(element).val([item.value]).change();
                        }
                        else {
                            $(element).val(item.value).change();
                        }
                    }
                })
            });
        });
    }

    //add product
    $(document).on("click", ".add", function() {
        $(this).parent().clone(true).insertAfter($(this).parent());

    });
    $(document).on("click", ".del", function() {
        var target = $(this).parent();
        if (target.parent().children().length > 2) {
            target.remove();
        }
    });

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
        let FUND_ID = $.urlParam('fund_id');

        loadFundDetailInformation(FUND_ID);

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

            let to = setTimeout(function() {
                console.log(data);
                /**
                 * Filter out empty data
                 */
                data = data.filter(function(item) {
                    console.log(item);
                    return item.value && item.value.length > 0;
                });

                $.ajax({
                    url: `/ajax/fund.update.${FUND_ID}`,
                    data: JSON.stringify(data),
                    type: 'POST',
                    contentType: 'application/json',
                    success: function() {}
                });

                clearTimeout(to);
            }, 1500);
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

        $("#txtfrom2").datepicker({
            numberOfMonths: 1,
            dateFormat: 'yy/mm/dd',
            onSelect: function(selectdate) {
                var dt = new Date(selectdate);
                dt.setDate(dt.getDate() + 1)
                $("#txtto2").datepicker("option", "minDate", dt);
            }
        });

        $("#txtto2").datepicker({
            numberOfMonths: 1,
            dateFormat: 'yy/mm/dd',
            onSelect: function(selectdate) {
                var dt = new Date(selectdate);
                dt.setDate(dt.getDate() - 1)
                $("#txtfrom2").datepicker("option", "maxDate", dt);
            }
        });

        $("#txtfrom3").datepicker({
            numberOfMonths: 1,
            dateFormat: 'yy/mm/dd',
            onSelect: function(selectdate) {
                var dt = new Date(selectdate);
                dt.setDate(dt.getDate() + 1)
                $("#txtto3").datepicker("option", "minDate", dt);
            }
        });

        $("#txtto3").datepicker({
            numberOfMonths: 1,
            dateFormat: 'yy/mm/dd',
            onSelect: function(selectdate) {
                var dt = new Date(selectdate);
                dt.setDate(dt.getDate() - 1)
                $("#txtfrom3").datepicker("option", "maxDate", dt);
            }
        });

        $(function() {
            $("#txtdate").datepicker({
                numberOfMonths: 1,
                dateFormat: 'yy/mm/dd',
                onSelect: function(selectdate) {
                    var dt = new Date(selectdate);

                }
            });
        });
    });
</script>
</html>
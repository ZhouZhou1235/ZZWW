<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ZZWW 编辑资料</title>
    <link href="./fileLibrary/images/ZHOUZHOU.ico" rel="icon" type="image/x-icon"/>
    <link rel="stylesheet" href="./CSS/style.css?version=<?php echo date('YmdHi');?>">
    <script src="./JavaScript/jscodeIndex.js?version=<?php echo date('YmdHi');?>" type="text/javascript"></script>
</head>
<body>
    <!--ZZWW-->
    <div class="divMain">
        <div class="divBasic">
            <a href="./index.php"><img src="./fileLibrary/images/webLogo.png" alt="webLogo" width="300px"></a>
            <h1>资料信息室</h1>
        </div>
        <div class="divBasic">
            <?php
                session_start();
                $link = mysqli_connect('localhost','ZHOU','10171350','zzww');
                $furryUser = $_SESSION['username'];
                if(!$furryUser){echo"<h1>ZZWW 未登录</h1>";exit;}
                $sql = "select controlnum from account where username='$furryUser'";
                $result = mysqli_query($link,$sql);
                $account = mysqli_fetch_array($result);
                $controlnum = $account['controlnum'];
                if($controlnum==1 || $controlnum==2){null;}else{echo"<h2>ZZWW 非管理兽不能操作</h2>";exit;}

                $libId = $_GET['libId'];
                $sql = "select * from lib where id='$libId'";
                $result = mysqli_query($link,$sql);
                $lib = mysqli_fetch_array($result);
                $title = $lib['title'];$info = $lib['info'];$galleryid = $lib['galleryid'];
                echo <<<ZHOU
                    <div class="divSpectial">
                        <div class="divInputZone">
                            <form action="runEditLib.php" method="POST" enctype="multipart/form-data">
                                <h2>编辑资料</h2>
                                <input type="text" name="title" placeholder="资料书标题" value="$title">
                                <input type="text" name="info" placeholder="资料概述" value="$info">
                                <input type="text" name="galleryid" placeholder="资料封面（画廊ID）" value="$galleryid">
                                <input type="file" name="file">
                                <input type="hidden" name="libId" value="$libId">
                                <button type="submit">发布</button>
                            </form>
                        </div>
                    </div>
                ZHOU;
            ?>
        </div>
    </div>
</body>
</html>
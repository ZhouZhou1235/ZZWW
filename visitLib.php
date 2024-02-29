<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ZZWW 浏览资料</title>
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
                $furryUser = $_SESSION['username'];
                $link = mysqli_connect('localhost','ZHOU','10171350','zzww');
                
                $libId = $_GET['libId'];
                $sql = "select * from lib where id='$libId'";$result=mysqli_query($link,$sql);$lib=mysqli_fetch_array($result);
                $title = $lib['title'];$info=$lib['info'];$username=$lib['username'];$file=$lib['file'];$galleryid=$lib['galleryid'];$time=$lib['time'];

                $theSrc = "./txtLib/$file";
                $thetxtLib = fopen($theSrc,"r");
                echo "
                <div class='divSpectial'>
                    <div class='divTitle'><h2>$title</h2></div>
                    <p>发布兽-$username 资料概述-$info</p>
                    <p><a href='$theSrc' download='ZZWW-$username-$title'>下载该资料</a> <a href='editLib.php?libId=$libId'>编辑</a></p>
                    <div class='divReading'>
                ";
                while($line = fgets($thetxtLib)){echo $line."<br>";}
                fclose($thetxtLib);
                echo "</div>---===来自 zhouzhouwebworld.online 粉糖账号-$username 首次上传-$time===---</div>";
            ?>
        </div>
    </div>
</body>
</html>
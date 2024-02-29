<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ZZWW 资料信息室</title>
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
            <div class="divSpectial">
                <div class="divInputZone">
                    <form action="addLib.php" method="POST" enctype="multipart/form-data">
                        <h2>上传资料</h2>
                        <input type="text" name="title" placeholder="资料书标题">
                        <input type="text" name="info" placeholder="资料概述">
                        <input type="text" name="galleryid" placeholder="资料封面（画廊ID）">
                        <input type="file" name="file">
                        <button type="submit">发布</button>
                    </form>
                </div>
            </div>
            <?php
                session_start();
                $furryUser = $_SESSION['username'];
                $link = mysqli_connect('localhost','ZHOU','10171350','zzww');
                $sql = "select * from lib order by id DESC";
                $result = mysqli_query($link,$sql);
                echo "<div class='divScreen'>";
                while($lib = mysqli_fetch_array($result)){
                    $libId = $lib['Id'];
                    $title = $lib['title'];
                    $info = $lib['info'];
                    $username = $lib['username'];
                    $file = $lib['file'];
                    $galleryid = $lib['galleryid'];
                    $time = $lib['time'];
                    echo "<div class='divShow25'>";
                    if($galleryid){
                        $sqlGalleay = "select img from furrygallery where id='$galleryid'";
                        $resultGallery = mysqli_query($link,$sqlGalleay);
                        $furrygallery = mysqli_fetch_array($resultGallery);
                        $img = $furrygallery['img'];
                        echo "<img src='furrygalleryimg/$img' alt='$img' width='100%'>";
                    }
                    echo "
                            <div class='divTitle'><a href='visitLib.php?libId=$libId'><h2>$title</h2></a></div>
                            <p>创建兽-$username</p>
                            <p>说明-$info</p>
                            创建时间-$time
                        </div>
                    ";
                }
                echo "</div>";
            ?>
        </div>
    </div>
</body>
</html>
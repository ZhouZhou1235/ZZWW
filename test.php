<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ZZWW 粉糖粒子</title>
    <link href="./fileLibrary/images/ZHOUZHOU.ico" rel="icon" type="image/x-icon"/>
    <link rel="stylesheet" href="./CSS/newstyle.css?version=<?php echo date('YmdHi');?>">
    <script src="./JavaScript/jscodeIndex.js?version=<?php echo date('YmdHi');?>" type="text/javascript"></script>
</head>
<body>
    <!--ZZWW-->
    <div class="divMain">
        <div class="divBasic">
            <a href="./index.php"><img src="./fileLibrary/images/webLogo.png" width="300px"></a>
            <h1>PHP标准模板</h1>
        </div>
        <div class="divBasic">
            <form action="test.php" method="POST">
                <textarea name="content" id="" cols="20" rows="2"></textarea>
                <button type="submit">提交</button>
            </form>
            <?php
                // $content = $_POST['content'];
                // if($content){
                //     $test = fopen("./test.txt","a+");
                //     fwrite($test,$content);
                //     // echo fread($test,filesize("./test.txt"));
                //     // echo file_get_contents("./test.txt");
                //     fclose($test);
                // }
                // $test = fopen("./test.txt","r");
                // echo "<div class='divScreen'><div class='divContentWiden'>";
                // while($line = fgets($test)){echo"$line"."<br>";}
                // echo "</div></div>";
                // fclose($test);
            ?>
        </div>
    </div>
</body>
</html>
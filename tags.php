<?php
    include "./lib/outClass.php";
    include "./lib/examineClass.php";
    $homePage = new homePage;
    $otherPage = new otherPage;
    $userState = new userState;
?>
<!DOCTYPE html>
<html lang="zh">
<head>
    <?php echo"<title>粉糖粒子 标签墙纸</title>";$homePage->headPart(); ?>
</head>
<body>
    <!-- ZZWW -->
    <?php
        $num = $userState->checkLogin();
        $homePage->menu();
        if($num<1){$homePage->entry();}
        $otherPage->tags();
    ?>
</body>
</html>
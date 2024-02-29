<!DOCTYPE html>
<?php
session_start();
$link = mysqli_connect('localhost','ZHOU','10171350','zzww');
$furryUser = $_SESSION['username'];
if(!$furryUser){echo"<h1>ZZWW 未登录</h1>";exit;}
$sql = "select controlnum from account where username='$furryUser'";
$result = mysqli_query($link,$sql);
$account = mysqli_fetch_array($result);
$controlnum = $account['controlnum'];
if($controlnum==1 || $controlnum==2){null;}else{echo"<h1>ZZWW 非管理兽不能操作</h1>";exit;}

$title = $_POST['title'];
$info = $_POST['info'];
$galleryid = $_POST['galleryid'];
if($galleryid){
    $sql = "select id from furrygallery where id='$galleryid'";
    $result = mysqli_query($link,$sql);
    if($result->num_rows==0){echo"<h1>ZZWW 找不到画廊ID为 $galleryid 的作品</h1>";exit;}    
}else{$galleryid=0;}
$filename = $_FILES['file']['name'];
if($title!=null && $filename!=null){null;}else{echo"<h1>ZZWW 标题和文件不为空</h1>";exit;}
if($filename!=null){
    $size = $_FILES['file']['size'];
    $temp_name = $_FILES['file']['tmp_name'];
    if($size>5*1024*1024){echo"<h1>ZZWW 文件不超过5M大小</h1>";exit;}
    $fileArray = pathinfo($filename);
    $filetype = $fileArray['extension'];
    $allowtype = array('txt');
    if(!in_array($filetype, $allowtype)){echo"ZZWW 仅支持txt格式";exit;}
    if(!file_exists('txtLib')){mkdir('txtLib');}
    $new_filename = date('YmdHis',time()).rand(100,1000).'.'.$filetype;
    move_uploaded_file($temp_name, 'txtLib/'.$new_filename);
}
else{die("<h1>ZZWW 未找到txt文件</h1>");}
echo "$title $info $furryUser $new_filename $galleryid";
$sql = "insert into lib(title,info,username,file,galleryid) values('$title','$info','$furryUser','$new_filename','$galleryid')";
$result = mysqli_query($link,$sql) or die('ZZWW insert error');

header('location:lib.php');
?>
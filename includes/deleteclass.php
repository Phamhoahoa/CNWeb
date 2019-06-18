<?php
include("../config/connect.php");
session_start();
$id = $_POST['id'];
$id_class_now = $_SESSION['class_id'];
//out class if u in class
if($id_class_now == $id){
	$_SESSION['class_id'] = -1;
}
//remove notifications in post in class
//remove comments in posts 
$remeveCmts = $conn->prepare("DELETE comments from comments, wpost where c_post_id = wpost.post_id and class_id = :id");
$remeveCmts->bindParam(':id',$id,PDO::PARAM_STR);
$remeveCmts->execute();
//remeve likes 
$remevelikes = $conn->prepare("DELETE likes from likes, wpost where likes.post_id = wpost.post_id and class_id = :id");
$remevelikes->bindParam(':id',$id,PDO::PARAM_STR);
$remevelikes->execute();
//remove saved
$remevesaved = $conn->prepare("DELETE saved from saved, wpost where saved.post_id = wpost.post_id and class_id = :id");
$remevesaved->bindParam(':id',$id,PDO::PARAM_STR);
$remevesaved->execute();
//remove posts in class
$remevePosts = $conn->prepare("DELETE from wpost where class_id = :id");
$remevesaved->bindParam(':id',$id,PDO::PARAM_STR);
$remevesaved->execute();
//remove class_id in mystudy
$remeveMystudy = $conn->prepare("DELETE FROM mystudy WHERE class_id = :id");
$remeveMystudy->bindParam(':id',$id,PDO::PARAM_STR);
$remeveMystudy->execute();
//remove class
$remeveClass = $conn->prepare("DELETE FROM myclass WHERE id = :id");
$remeveClass->bindParam(':id',$id,PDO::PARAM_STR);
$remeveClass->execute();
?>

<?php
include("../config/connect.php");
session_start();
$id = $_POST['id'];
$class_id = $_POST['class_id'];
$add_result='';
$remeve = $conn->prepare("DELETE FROM mystudy WHERE id=:id AND class_id=:class_id");
$remeve->bindParam(':id',$id,PDO::PARAM_STR);
$remeve->bindParam(':class_id',$class_id,PDO::PARAM_STR);
$remeve->execute();
?>
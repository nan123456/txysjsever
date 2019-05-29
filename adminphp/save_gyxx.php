<?php
header('content-type:text/html;charset=utf-8');
require'../conn.php';
$timestamp =$_GET['timestamp'];//接收时间戳
$xtjj      =$_GET['xtjj'];//接收系统简介
$zygn      =$_GET['zygn'];//接收主要功能
//echo $timestamp;
//echo $xtjj;
//echo $zygn;
$sql = "UPDATE pc_关于信息  set `时间戳`='".$timestamp."' ,`系统简介`='".$xtjj."',`主要功能`='".$zygn."' WHERE `状态`='0'";
		$result =$conn->query($sql);
		$conn->close();
		
?>
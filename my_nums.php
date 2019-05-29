<?php
require ("conn.php");
$sjc = $_POST["sjc"];
$bh = $_POST["cdlxbh"];
$time = getdate();
$sql = "SELECT * from 测点列表 where 时间戳='".$sjc."' and 编号 LIKE '".$bh."%' ";
$result = $conn->query($sql);
	$rowcount=mysqli_num_rows($result);	
	$jsonresult='success';	
	$json = '{"result":"'.$jsonresult.'",
			  "rowcount":"'.$rowcount.'"
			}';
	echo $json;
	$conn -> close();
?>  
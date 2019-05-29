<?php
	require("conn.php");
	$fhid=$_POST["fhid"];
	$cdlx=$_POST["cdlx"];
	$bm="";
	if($cdlx=="地面平整度"){
		$bm="A";
	}elseif ($cdlx=="地面平整度") {
		$bm="B";
	}elseif ($cdlx=="墙面平整度") {
		$bm="C";
	}elseif ($cdlx=="垂直度") {
		$bm="D";
	}elseif ($cdlx=="墙面阴阳角方正") {
		$bm="E";
	}elseif ($cdlx=="栏杆、护栏高度") {
		$bm="F";
	}elseif ($cdlx=="竖杆间距") {
		$bm="G";
	}elseif ($cdlx=="安全玻璃厚度") {
		$bm="H";
	}elseif ($cdlx=="导线截面配线") {
		$bm="I";
	}elseif ($cdlx=="绝缘强度") {
		$bm="J";
	}else{
		
	}
	
	$sqldate="";
	$sql = "select * from 测点列表  where fhid='".$fhid."' and 测点类型='".$cdlx."'";
	$result = $conn->query($sql);
	$count=mysqli_num_rows($result);
	$xxh=$count+1;
	if($bm==""){
		$xxh="";
	}	
	$qsbh=$bm.$xxh;
	
	$jsonresult='success';
	$json = '{"bm":"'.$bm.'",
				"xxh":"'.$xxh.'",
				"qsbh":"'.$qsbh.'"
				}';				
	
	echo $json;
	$conn->close();	
		
?>
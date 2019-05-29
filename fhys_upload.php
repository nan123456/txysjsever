<?php
require ("conn.php");
$sjc = $_POST["sjc"];
//$xmid = $_POST["xmid"];
//$gclb = $_POST["gclb"];
//$mc = $_POST["mc"];
//$sclb = $_POST["sclb"]; 
//$checkId = $_POST["checkId"];
$filenames1 = explode( "~*^*~",$filenames);
$sql = "select 测点附件 from 测点布置附件表 where 时间戳 = '".$sjc."' ";
$result = $conn->query($sql);
$count = mysqli_num_rows($result);
if($count){
	for ($i = 1; $i < count($filenames1); $i++) {
        $sql2 = "UPDATE `测点布置附件表` SET `测点附件` = '$filenames1[$i]' WHERE `时间戳` = '" . $sjc . "'";
        if ($conn -> query($sql2) === TRUE) { 
	      	$jsonresult = 'success';
  	    } else {
		    $jsonresult = 'error';
		}
    }
}
else{
	for ($i = 1; $i < count($filenames1); $i++) {
	    $sql3 = "INSERT INTO `测点布置附件表` (`测点附件`,`时间戳`) VALUE ('$filenames1[$i]','$sjc')";
	    if ($conn -> query($sql3) === TRUE) { 
	      	$jsonresult = 'success';
  	    } else {
		    $jsonresult = 'error';
		}
	}
}


$json = '{"result":"' . $jsonresult . '"		
			}';
echo $json;
//echo $filenames1[1];
$conn -> close();
?>
<?php
require ("conn.php");
$sjc = $_POST["sjc"];
//$xmid = $_POST["xmid"];
$cdgs = $_POST["cdgs"];
$bh = $_POST["bh"];
$cdlx = $_POST["cdlx"];
$qsbh = $_POST["qsbh"];
$checkId = $_POST["checkId"];
$bianhao = " ";
if (1) {
	for ($i = $qsbh; $i < $cdgs+$qsbh ; $i++) {
		$bianhao = $bh . $i;
		$time = getdate();
		$timestr = $time['year'] . "-" . $time['mon'] . "-" . $time['mday'] . "/" . $time['hours'] . ":" . $time['minutes'] . ":" . $time['seconds'];
		$sqli = "insert into 测点列表 (测点类型, 编号,添加时间,时间戳,测点个数,测点编号) values ('$cdlx','$bianhao','$timestr','$sjc','$cdgs','$bh')";
			if ($conn -> query($sqli) === TRUE) {
				$jsonresult = 'success';
			} else {
				$jsonresult = 'error';
			}
	}
	$json = '{"result":"' . $jsonresult . '"		
		}';
	echo $json;
	  
	$conn -> close();
}
?>  
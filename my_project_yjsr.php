<?php
require ("conn.php");
$sjc = $_POST["sjc"];//时间戳
$cdgs = $_POST["cdgs"];//测点个数
$cdlx = $_POST["cdlxbh"];//测点类型
$nums = $_POST["nums"];//实测值字符串

$nums=explode(',',$nums);
//$nums[0];
	for ($i =0 ; $i < $cdgs; $i++) { 
				$numss=$nums[$i];
					$sqli = "update 测点列表 set 实测值='".$numss."'  where 编号='".$cdlx.($i+1)."' ";
//					echo $sqli;
					if ($conn->query($sqli)) {
						$jsonresult='success';
					} else {
						$jsonresult='insert失败';
					}
				}
			
	$json = '{"result":"' . $jsonresult . '"		
		}';
	echo $json;
	  
	$conn -> close();

?>  
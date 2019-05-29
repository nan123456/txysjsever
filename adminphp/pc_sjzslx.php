<?php	
	require("../conn.php");	
	$sqlflag=$_POST["sqlflag"];	
	
	$time=getdate();
	$timestr=$time['year']."-".$time['mon']."-".$time['mday']."/".$time['hours'].":".$time['minutes'].":".$time['seconds'];
	
	if($sqlflag=="insert"){	
		////////////////////////插入一条记录/////////////////////////////
		$sjc=$_POST["sjc"];
		$sjzslx=$_POST["sjzslx"];
		
		$sql = "select * from pc_送检知识类型  where 送检知识类型='".$sjzslx."'";
		$result = $conn->query($sql);
		if ($result->num_rows > 0) {
			$jsonresult='已经有该类型';
		} else {
			$sqli = "insert into pc_送检知识类型  (时间戳,送检知识类型,添加时间) values ('$sjc','$sjzslx','$timestr')";
			if ($conn->query($sqli) === TRUE) {
				$jsonresult='success';
			} else {
				$jsonresult='insert失败';
			}
		}
		
		$json = '{"result":"'.$jsonresult.'"		
				}';		
		////////////////////////插入一条记录/////////////////////////////	
	
	}elseif ($sqlflag=="delete") {
		//////////////////////// 删除一条记录/////////////////////////////
		$sjc=$_POST["sjc"];
		$sqli ="delete from pc_送检知识类型  where 时间戳='".$sjc."'";
		if ($conn->query($sqli) === TRUE) {
			$jsonresult='success';
		} else {
			$jsonresult='delete失败';
		}
		$json = '{"result":"'.$jsonresult.'"		
				}';
		//////////////////////// 删除一条记录/////////////////////////////
	}else {
		//////////////////////// 查询所有记录/////////////////////////////
		
		$sqli = "select * from pc_送检知识类型  ";
		$sqldate="";
		$result = $conn->query($sqli);
		$count=mysqli_num_rows($result);
		if ($result->num_rows > 0) {
			while($row = $result->fetch_assoc()) {
				$sqldate= $sqldate.'{"id":"'.$row["id"].'","时间戳":"'.$row["时间戳"].'","送检知识类型":"'.$row["送检知识类型"].'","添加时间":"'.$row["添加时间"].'"},';
			}
			$jsonresult='success';
		} else {
			$jsonresult='数据表无该时间戳';
		}
		
		$otherdate = '{"result":"'.$jsonresult.'",
				"count":"'.$count.'"
				}';	
		$json = '['.$sqldate.$otherdate.']';
		//////////////////////// 查询所有记录/////////////////////////////
	
		}	
	echo $json;
	$conn->close();
		
?>
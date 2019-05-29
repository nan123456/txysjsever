<?php	
	require("../conn.php");	
	$sqlflag=$_POST["sqlflag"];	
	
	$time=getdate();
	$timestr=$time['year']."-".$time['mon']."-".$time['mday']."/".$time['hours'].":".$time['minutes'].":".$time['seconds'];
	
	if($sqlflag=="insert"){	
		////////////////////////插入一条记录/////////////////////////////
		$sjc=$_POST["sjc"];
		$zlzslx=$_POST["zlzslx"];
		$zlxxj=$_POST["zlxxj"];
		
		$sql = "select * from pc_资料知识子类型  where 资料知识类型='".$zlzslx."' and 资料知识子类型='".$zlxxj."'";
		$result = $conn->query($sql);
		if ($result->num_rows > 0) {
			$jsonresult='已经有该类型';
		} else {
			$sqli = "insert into pc_资料知识子类型  (时间戳,资料知识类型,资料知识子类型,添加时间) values ('$sjc','$zlzslx','$zlxxj','$timestr')";
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
		$sqli ="delete from pc_资料知识子类型  where 时间戳='".$sjc."'";
		if ($conn->query($sqli) === TRUE) {
			$jsonresult='success';
		} else {
			$jsonresult='delete失败';
		}
		$json = '{"result":"'.$jsonresult.'"		
				}';
		//////////////////////// 删除一条记录/////////////////////////////
	}elseif ($sqlflag=="selectChild") {		
		//////////////////////// 查询子类型记录/////////////////////////////
		$zslx=$_POST["zslx"];
		
		$sqli = "select * from pc_资料知识子类型  where 资料知识类型='".$zslx."'";
		$sqldate="";
		$result = $conn->query($sqli);
		$count=mysqli_num_rows($result);
		if ($result->num_rows > 0) {
			while($row = $result->fetch_assoc()) {
				$sqldate= $sqldate.'{"资料知识子类型":"'.$row["资料知识子类型"].'"},';
			}
			$jsonresult='success';
		} else {
			$jsonresult='数据表无该时间戳';
		}
		
		$otherdate = '{"result":"'.$jsonresult.'",
				"count":"'.$count.'"
				}';	
		$json = '['.$sqldate.$otherdate.']';
		
		
		
		//////////////////////// 查询子类型记录/////////////////////////////
	}else {
		//////////////////////// 查询所有记录/////////////////////////////
		
		$sqli = "select * from pc_资料知识子类型  ";
		$sqldate="";
		$result = $conn->query($sqli);
		$count=mysqli_num_rows($result);
		if ($result->num_rows > 0) {
			while($row = $result->fetch_assoc()) {
				$sqldate= $sqldate.'{"id":"'.$row["id"].'","时间戳":"'.$row["时间戳"].'","资料知识类型":"'.$row["资料知识类型"].'","资料知识子类型":"'.$row["资料知识子类型"].'","添加时间":"'.$row["添加时间"].'"},';
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
<?php	
	require("../conn.php");	
	$sqlflag=$_POST["sqlflag"];	
	
	$time=getdate();
	$timestr=$time['year']."-".$time['mon']."-".$time['mday']."/".$time['hours'].":".$time['minutes'].":".$time['seconds'];
	
	if($sqlflag=="insert"){	
		////////////////////////插入一条记录/////////////////////////////
		$sjc=$_POST["sjc"];
		$zslx=$_POST["zslx"];
		$clxc=$_POST["clxc"];
		$dzbh=$_POST["dzbh"];
		$dznr=$_POST["dznr"];
		$sjslyq=$_POST["sjslyq"];
		$qyff=$_POST["qyff"];
		$jyxz=$_POST["jyxz"];
		$bzsm=$_POST["bzsm"];
	
		
		$sql = "select * from pc_知识列表  where 时间戳='".$sjc."'";
		$result = $conn->query($sql);
		if ($result->num_rows > 0) {
			$jsonresult='数据表有重复的时间戳';
		} else {
			$sqli = "insert into pc_知识列表 (时间戳,知识类型,材料_现场,定制编号,定制内容,送检数量要求,取样方法,检验性质,备注说明,添加时间) values ('$sjc','$zslx','$clxc','$dzbh','$dznr','$sjslyq','$qyff','$jyxz','$bzsm','$timestr')";
			if ($conn->query($sqli) === TRUE) {
				$jsonresult='success';
			} else {
				$jsonresult='insert失败';
			}
		}
		
		$json = '{"result":"'.$jsonresult.'"		
				}';		
		////////////////////////插入一条记录/////////////////////////////
	}elseif ($sqlflag=="update") {	
		////////////////////////更新一条记录/////////////////////////////
		
		$sjc=$_POST["sjc"];
		$zslx=$_POST["zslx"];
		$clxc=$_POST["clxc"];
		
		$dznr=$_POST["dznr"];
		$sjslyq=$_POST["sjslyq"];
		$qyff=$_POST["qyff"];
		$jyxz=$_POST["jyxz"];
		$bzsm=$_POST["bzsm"];
		
		$dzbh=$_POST["dzbh"];
		
		$sql = "select * from pc_知识列表  where 时间戳='".$sjc."'";
		$result = $conn->query($sql);
		if ($result->num_rows > 0) {
			$sqli = "update pc_知识列表 set 知识类型='$zslx',材料_现场='$clxc',定制编号='$dzbh',定制内容='$dznr',送检数量要求='$sjslyq',取样方法='$qyff',检验性质='$jyxz',备注说明='$bzsm',修改时间='$timestr'  where 时间戳='".$sjc."'";
			if ($conn->query($sqli) === TRUE) {
				$jsonresult='success';
			} else {
				$jsonresult='update失败';
			}
		} else {
			$jsonresult='数据表无该时间戳';
		}
		
		$json = '{"result":"'.$jsonresult.'"		
				}';		
		////////////////////////更新一条记录/////////////////////////////
	
		}elseif ($sqlflag=="select") {
		////////////////////////查询一条记录/////////////////////////////
		$sjc=$_POST["sjc"];
		
		$sqldate="";
		$sqli = "select * from pc_知识列表  where 时间戳='".$sjc."'";
		$result = $conn->query($sqli);
		$count=mysqli_num_rows($result);
		if ($result->num_rows > 0) {
			while($row = $result->fetch_assoc()) {
				//特殊处理字段中的回车符，回车符会导致json格式错误
				$rowdznr = str_replace(PHP_EOL, '', $row["定制内容"]);
				$rowsj = str_replace(PHP_EOL, '', $row["送检数量要求"]);
				$rowqyff = str_replace(PHP_EOL, '', $row["取样方法"]);
				$rowjyxz = str_replace(PHP_EOL, '', $row["检验性质"]);
				$rowbzsm = str_replace(PHP_EOL, '', $row["备注说明"]);
				
				$sqldate= $sqldate.'{"id":"'.$row["id"].'","时间戳":"'.$row["时间戳"].'","知识类型":"'.$row["知识类型"].'","材料_现场":"'.$row["材料_现场"].'","定制编号":"'.$row["定制编号"].'","定制内容":"'.$rowdznr.'","送检数量要求":"'.$rowsj.'","取样方法":"'.$rowqyff.'","检验性质":"'.$rowjyxz.'","备注说明":"'.$rowbzsm.'","添加时间":"'.$row["添加时间"].'","修改时间":"'.$row["修改时间"].'"},';
			}
			$jsonresult='success';
		} else {
			$jsonresult='数据表无该时间戳';
		}
		
		$otherdate = '{"result":"'.$jsonresult.'",
				"count":"'.$count.'"
				}';	
		$json = '['.$sqldate.$otherdate.']';
		////////////////////////查询一条记录/////////////////////////////
		
	}elseif ($sqlflag=="delete") {
		//////////////////////// 删除一条记录/////////////////////////////
		$sjc=$_POST["sjc"];
		$sqli ="delete from pc_知识列表  where 时间戳='".$sjc."'";
		if ($conn->query($sqli) === TRUE) {
			$jsonresult='success';
		} else {
			$jsonresult='delete失败';
		}
		$json = '{"result":"'.$jsonresult.'"		
				}';
		//////////////////////// 删除一条记录/////////////////////////////
	}elseif ($sqlflag=="app_select_all") {
		$sjzslx=$_POST["sjzslx"];
		$sqldate="";
		$sqli = "select * from pc_知识列表  where 知识类型='".$sjzslx."'";
		$result = $conn->query($sqli);
		$count=mysqli_num_rows($result);
		if ($result->num_rows > 0) {
			while($row = $result->fetch_assoc()) {
				$sqldate= $sqldate.'{"时间戳":"'.$row["时间戳"].'","材料_现场":"'.$row["材料_现场"].'","定制编号":"'.$row["定制编号"].'","定制内容":"'.$row["定制内容"].'"},';
			}
			$jsonresult='success';
		} else {
			$jsonresult='数据表无该时间戳';
		}
		
		$otherdate = '{"result":"'.$jsonresult.'",
				"count":"'.$count.'"
				}';	
		$json = '['.$sqldate.$otherdate.']';
		
		
	}else {
		//////////////////////// 查询所有记录/////////////////////////////
		
		$sqli = "select * from pc_知识列表  ";
		$sqldate="";
		$result = $conn->query($sqli);
		$count=mysqli_num_rows($result);
		if ($result->num_rows > 0) {
			while($row = $result->fetch_assoc()) {
				$sqldate= $sqldate.'{"id":"'.$row["id"].'","时间戳":"'.$row["时间戳"].'","知识类型":"'.$row["知识类型"].'","材料_现场":"'.$row["材料_现场"].'","定制编号":"'.$row["定制编号"].'","定制内容":"'.$row["定制内容"].'","送检数量要求":"'.$row["送检数量要求"].'","取样方法":"'.$row["取样方法"].'","检验性质":"'.$row["检验性质"].'","备注说明":"'.$row["备注说明"].'","添加时间":"'.$row["添加时间"].'","修改时间":"'.$row["修改时间"].'"},';
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
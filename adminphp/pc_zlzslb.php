<?php	
	require("../conn.php");	
	$sqlflag=$_POST["sqlflag"];	
	
	if($sqlflag=="insert"){	
		
	}elseif ($sqlflag=="update") {	
	
	}elseif ($sqlflag=="appselect") {
		$bh=$_POST["bh"];
		
		$sqldate="";
		$sqli = "select * from pc_资料知识列表  where 表格编号='$bh'";
		$result = $conn->query($sqli);
		$count=mysqli_num_rows($result);
		$ret_arr ="";
		if ($result->num_rows > 0) {
			while($row = $result->fetch_assoc()) {
				$ret_arr[] = $row["上传图片"];
				$ret_arr[] = $row["填表说明"];
				$ret_arr[] = $row["注意要点"];
//				$sqldate= $sqldate.'{"上传图片":"'.$row["上传图片"].'","填表说明":"'.$row["填表说明"].'","注意要点":"'.$row["注意要点"].'"},';
			}
			$jsonresult='success';
		} else {
			$jsonresult='数据表无该时间戳';
		}
		
//		$otherdate = '{"result":"'.$jsonresult.'","count":"'.$count.'"}';	
//		$json = '['.$sqldate.$otherdate.']';
		if($ret_arr != ""){
		}else{
			$ret_arr["result"] = "failure";
		}
		$json = json_encode($ret_arr);
			
	}else if ($sqlflag=="select") {
		////////////////////////查询一条记录/////////////////////////////
		$sjc=$_POST["sjc"];
		
		$sqldate="";
		$sqli = "select * from pc_资料知识列表  where 时间戳='$sjc'";
		$result = $conn->query($sqli);
		$count=mysqli_num_rows($result);
		$ret_arr = "";
		if ($result->num_rows > 0) {
			while($row = $result->fetch_assoc()) {
				$ret_arr[] = $row["id"];
				$ret_arr[] = $row["时间戳"];
				$ret_arr[] = $row["资料知识类型"];
				$ret_arr[] = $row["资料知识子类型"];
				$ret_arr[] = $row["表格名称"];
				$ret_arr[] = $row["表格编号"];
				$ret_arr[] = $row["上传图片"];
				$ret_arr[] = $row["填表说明"];
				$ret_arr[] = $row["注意要点"];
			}
		} else {
			$jsonresult='数据表无该时间戳';
		}
		if($ret_arr != ""){
		}else{
			$ret_arr["result"] = "failure";
		}
		$json = json_encode($ret_arr);
		////////////////////////查询一条记录/////////////////////////////
		
	}elseif ($sqlflag=="delete") {
		//////////////////////// 删除一条记录/////////////////////////////
		$sjc=$_POST["sjc"];
		$sqli ="delete from pc_资料知识列表  where 时间戳='".$sjc."'";
		if ($conn->query($sqli) === TRUE) {
			$jsonresult='success';
		} else {
			$jsonresult='delete失败';
		}
		$json = '{"result":"'.$jsonresult.'"}';
		//////////////////////// 删除一条记录/////////////////////////////
	}elseif ($sqlflag=="appSelect") {
		$zlzslx=$_POST["zlzslx"];
		$sqli = "select * from pc_资料知识列表  where 资料知识类型='".$zlzslx."' ORDER BY '表格编号'";
		$sqldate="";
		$result = $conn->query($sqli);
		$count=mysqli_num_rows($result);
		if ($result->num_rows > 0) {
			while($row = $result->fetch_assoc()) {
				$sqldate= $sqldate.'{"id":"'.$row["id"].'","资料知识子类型":"'.$row["资料知识子类型"].'","表格名称":"'.$row["表格名称"].'","表格编号":"'.$row["表格编号"].'"},';
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
		
		
		$sqli = "select * from pc_资料知识列表  ";
		$sqldate="";
		$result = $conn->query($sqli);
		$count=mysqli_num_rows($result);
		if ($result->num_rows > 0) {
			while($row = $result->fetch_assoc()) {
				$sqldate= $sqldate.'{"id":"'.$row["id"].'","时间戳":"'.$row["时间戳"].'","资料知识类型":"'.$row["资料知识类型"].'","资料知识子类型":"'.$row["资料知识子类型"].'","表格名称":"'.$row["表格名称"].'","表格编号":"'.$row["表格编号"].'","上传图片":"'.$row["上传图片"].'","填表说明":"'.$row["填表说明"].'","注意要点":"'.$row["注意要点"].'"},';
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
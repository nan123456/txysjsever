<?php
	require("../conn.php");
	$mobile=$_POST["mobile"];
		
	$sqldate="";
	$sql = "select * from 任务 where 任务接收人号码  like '%".$mobile."%' order by id desc";
	$result = $conn->query($sql);
	$count=mysqli_num_rows($result);	
	if ($result->num_rows > 0) {
		 while($row = $result->fetch_assoc()) {
		 	$sqldate= $sqldate.'{"id":"'.$row["id"].'","xmid":"'.$row["xmid"].'","项目名称":"'.$row["项目名称"].'","任务名称":"'.$row["任务名称"].'","任务重要性":"'.$row["任务重要性"].'","任务类别":"'.$row["任务类别"].'","任务创建人":"'.$row["任务创建人"].'","任务接收人":"'.$row["任务接收人"].'","部位":"'.$row["部位"].'","截止日期":"'.$row["截止日期"].'","任务附件":"'.$row["任务附件"].'","新建日期":"'.$row["新建日期"].'","回复状态":"'.$row["回复状态"].'"},';
		 }
	} else {
		//echo "0 results";
	}
	//echo $sqldate;
	$jsonresult='success';
	$otherdate = '{"result":"'.$jsonresult.'",
				"count":"'.$count.'"
				}';
				
	$json = '['.$sqldate.$otherdate.']';
	echo $json;
	$conn->close();	
		
?>
<?php
	require("../conn.php");
	echo "请稍等，数据保存中...";
	echo "<br>";	
	
	$time=getdate();
	$timestr=$time['year']."-".$time['mon']."-".$time['mday']."/".$time['hours'].":".$time['minutes'].":".$time['seconds'];
	
	//获取当前时间戳
	list($msec, $sec) = explode(' ', microtime());
	$msectime =  (float)sprintf('%.0f', (floatval($msec) + floatval($sec)) * 1000);	
					
	//获取表单值
	$zslx=$_POST["zslx"];
	$zlzszlx=$_POST["zlzszlx"];
	$bgmc=$_POST["bgmc"];
	$bgbh=$_POST["bgbh"];
	
	$tbsm=$_POST["tbsm"];
	$zyyd=$_POST["zyyd"];	
	
	//处理上传的图片附件
	//判断是否有图片传过来
	$flag=0;
if($_FILES["file"]["name"][0]){
	$flag=1;
	$file=$_FILES["file"]["name"];
	$count=count($file);
	$filenames="";
	
	for ($i=0; $i < $count; $i++) {
		$thisimg=$i+1;
		echo "开始上传第    ".$thisimg."   张图片附件";
		echo "<br>";
		if(is_uploaded_file($_FILES["file"]['tmp_name'][$i])){
			$upfile=$_FILES["file"];
			//获取数组里面的值 
			$name=$upfile["name"][$i];//上传文件的文件名 
			$type=$upfile["type"][$i];//上传文件的类型 
			$size=$upfile["size"][$i];//上传文件的大小 
			$tmp_name=$upfile["tmp_name"][$i];//上传文件的临时存放路径 
			
			//判断是否为图片 
			switch ($type){
				case 'image/pjpeg':
					$okType=true;
					break; 
				case 'image/jpeg':
					$okType=true;
					break;
				case 'image/gif':
					$okType=true; 
					break; 
				case 'image/png':
					$okType=true; 
					break;
			}
			if($okType){
				$error=$upfile["error"][$i];//上传后系统返回的值 
				$filename=$msectime+$i;
//				$exptype=explode(".",$name)[1];
				$exptype=pathinfo($name,PATHINFO_EXTENSION);
				$filename=$filename.".".$exptype;
				$path = '../pc_upload/'.$filename;
				$path_gbk = iconv("utf-8", "gbk", $path);
				move_uploaded_file($tmp_name,$path_gbk);//把上传的临时文件移动到pc_upload目录下面 
				if($error==0){
					echo $name."文件上传成功。";
					echo "<br>";
					$upresult=true;
					//多图用“，”隔开
					if($filenames==""){
						$filenames=$filename;
					}else {
						$filenames=$filenames.",".$filename;
					}
					
				}else{
					echo "上传未成功。";
					echo "<br>";
					$upresult=false;
				} 
				
			}else{
				echo "请上传jpg,gif,png等格式的图片！";
				echo "<br>";
				$upresult=false;
			}
						
			
		}		
	}
	echo "附件名称唯一化处理，结果是：".$filenames;
	echo "<br>";
}
	
	echo "数据开始写入数据库中。";
	echo "<br>";
	//数据写入数据库
	$sql = "select * from pc_资料知识列表  where 表格编号='$bgbh'";
		$result = $conn->query($sql);
		if ($result->num_rows == 1) {
			// if($flag==0){
			// 	while($row = $result->fetch_assoc()) {
			// 		$filenames=$row["上传图片"];
			// 	}				
			// }
			$sqli = "update pc_资料知识列表  set 资料知识类型='$zslx',资料知识子类型='$zlzszlx',表格名称='$bgmc',表格编号='$bgbh',上传图片='$filenames',填表说明='$tbsm',注意要点='$zyyd' where 表格编号='$bgbh'";
			$headerpag="../admin/plus/zlzsgl.php";
		} else {
			$sqli = "insert into pc_资料知识列表 (时间戳,资料知识类型,资料知识子类型,表格名称,表格编号,上传图片,填表说明,注意要点,添加时间) values ('$msectime','$zslx','$zlzszlx','$bgmc','$bgbh','$filenames','$tbsm','$zyyd','$timestr')";	
			$headerpag="../admin/plus/zlzsxj.php";		
		}
		
		if ($conn->query($sqli) === TRUE) {
			$jsonresult='success';
		} else {
			$jsonresult='insert或update失败';
		}
	echo $bgbh;	
	echo $jsonresult;
	echo "<br>";
	echo "0秒后跳转原页面。";
	echo $sql;
	echo strlen($tbsm);
	header("refresh:0;url=".$headerpag);
	
?>
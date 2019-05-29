<?php
//require("../Classes/PHPExcel.php");
//require("../Classes/PHPExcel/Reader/Excel2007.php");
require("../Classes/PHPExcel/IOFactory.php");

$filename = "file_excel/资料知识新建导入.xls";
$path_info = pathinfo($filename);
//print_r($path_info);
$ext = $path_info["extension"];
$filename = iconv("utf-8", "gbk", $filename);
if(file_exists($filename)){
	if($ext == "xlsx" || $ext == "xls"){
		$reader = PHPExcel_IOFactory::createReader('Excel5');
	}else{
		exit("文件类型不对！");
	}	
}else{
	exit("数据读取失败，文件不存在！");
}

$PHPExcel = $reader->load($filename); // 载入文件
$sheet = $PHPExcel->getSheet(0); // 读取第一個工作表  
$highestRow = $sheet->getHighestRow(); // 取得总行数  
$highestColumm = $sheet->getHighestColumn(); // 取得总列数  
$arr = array(1 => 'A', 2 => 'B', 3 => 'C', 4 => 'D', 5 => 'E', 6 => 'F', 7 => 'G', 8 => 'H', 9 => 'I', 10 => 'J', 11 => 'K', 12 => 'L', 13 => 'M', 14 => 'N', 15 => 'O', 16 => 'P', 17 => 'Q', 18 => 'R', 19 => 'S', 20 => 'T', 21 => 'U', 22 => 'V', 23 => 'W', 24 => 'X', 25 => 'Y', 26 => 'Z');

echo $highestRow."//".$highestColumm."<br/>";

/** 循环读取每个单元格的数据 */
echo "<table border='1'>";
for($row=1;$row<=$highestRow;$row++){//行循环
	echo "<tr>";
	for($column = 'A';$column <= 'F';$column++){//列循环
		echo "<td>".$sheet->getCell($column.$row)->getValue()."</td>";
	}
	echo "</tr>";
}
echo "</table>";

 
?>
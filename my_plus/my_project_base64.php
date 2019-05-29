<?php
$base_img = $_POST['img'];
//匹配出图片的格式
$base_img = str_replace('data:image/jpeg;base64,', '', $base_img);
//设置文件路径和文件前缀名称
$path = "../upload/";
$prefix='nx_';
$output_file = $prefix.time().rand(100,999).'.jpg';
$path = $path.$output_file;
//创建将数据流文件写入我们创建的文件内容中
$ifp = fopen( $path, "wb" );
//将解码后的截图写入文件
if(fwrite( $ifp, base64_decode( $base_img))){
	$path = str_replace('../','',$path);
	$json = '{"result":"'.$path.'"}';
	echo $json;
};
fclose( $ifp );
?>
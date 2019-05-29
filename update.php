<?php
	$appid="H5E321129";
	$version="2018.02.08.09";	//app版本号
	$note="同欣易送检";	//app描述
	$appurl="http://112.74.34.150:888/txysj/release/txysj.apk";	//app下载地址
	
	$json = '{"appid":"'.$appid.'",
				"version":"'.$version.'",
				"note":"'.$note.'",
				"appurl":"'.$appurl.'"
			}';
	
	echo $json;

?>
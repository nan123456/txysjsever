<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge;chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
  <meta name="keywords" content="">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="shortcut icon" href="#" type="../image/png">
  <title>同欣易送检后台管理系统</title>
  <!--dashboard calendar-->
  <link href="../css/clndr.css" rel="stylesheet">
  
  <!--common-->
  <link href="../css/style.css" rel="stylesheet">
  <link href="../css/style-responsive.css" rel="stylesheet">  
  
  <!--data table-->
  <link rel="stylesheet" href="../js/data-tables/DT_bootstrap.css" />
    
  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <script src="js/respond.min.js"></script>
  <![endif]-->
</head>
<body class="sticky-header">
<section>
    <!-- left side start-->
    <div class="left-side sticky-left-side">
        <!--logo and iconic logo start-->
        <div class="logo">
            <a href="../index.php"><img src="../images/logo.png" alt=""></a>
        </div>
        <div class="logo-icon text-center">
            <a href="../index.php"><img src="../images/logo_icon.png" alt=""></a>
        </div>
        <!--logo and iconic logo end-->

        <div class="left-side-inner">
            <!--sidebar nav start-->
            <ul class="nav nav-pills nav-stacked custom-nav">
                <li class="menu-list nav-active"><a href="#"><i class="fa fa-flag"></i> <span>活动</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="../index.php">新建活动</a></li>
                        <li><a href="hdgl.php">活动管理</a></li>  
                        <li class="active"><a href="bmqd.php">报名签到管理</a></li>                                 
                    </ul>
                </li>
                <li class="menu-list"><a href=""><i class="fa fa-laptop"></i> <span>通告</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="tgxj.php">新建通告</a></li>
                        <li><a href="tggl.php">通告管理</a></li>                       
                    </ul>
                </li>
                <li><a href="hbgl.php"><i class="fa fa-android"></i> <span>伙伴管理</span></a></li>
                <li><a href="jfgl.php"><i class="fa fa-bullhorn"></i> <span>积分管理</span></a></li>                
                <li><a href="xxts.php"><i class="fa fa-bar-chart-o"></i> <span>消息推送</span></a></li>
                <li class="menu-list"><a href=""><i class="fa fa-book"></i> <span>知识</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="zsxj.php">送检知识新建</a></li>
                        <li><a href="zsgl.php">送检知识管理</a></li>
                        <li><a href="zlzsxj.php">资料知识新建</a></li>
                        <li><a href="zlzsgl.php">资料知识管理</a></li>     
                    </ul>
                </li>
                <li class="menu-list"><a href=""><i class="fa fa-comments"></i> <span>小组</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="zyzwzd.php">组员职务字段</a></li>
                       
                    </ul>
                </li>
                <li class="menu-list"><a href=""><i class="fa fa-th"></i> <span>系统管理</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="zhgl.php">账号管理</a></li>
												<li><a href="zhbd.php">工程绑定/解绑</a></li>
												<li><a href = "gyxx.php">关于信息修改</a></li>
                    </ul>
                </li>
                <li class="menu-list"><a href=""><i class="fa fa-twitter"></i> <span>营销管理</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="#">上门拜访</a></li>
                        <li><a href="#">销售跟进</a></li>
                        <li><a href="#">服务追踪</a></li>
                        <li><a href="#">...</a></li>
                    </ul>
                </li>
            </ul>
            <!--sidebar nav end-->
        </div>
    </div>
    <!-- left side end-->    
    <!-- main content start-->
    <div class="main-content" >
        <!-- header section start-->
        <div class="header-section">
            <!--toggle button start-->
            <a class="toggle-btn"><i class="fa fa-bars"></i></a>
            <!--toggle button end-->           
            <!--notification menu start -->
            <div class="menu-right">
                <ul class="notification-menu">                   
                    <li>
                        <a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown">                          
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-usermenu pull-right">
                            <li><a href="#"><i class="fa fa-sign-out"></i> 退出</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!--notification menu end -->
        </div>
        <!-- header section end-->       
        <!--body wrapper start-->
        <div class="wrapper">
            <div class="row">
                <div class="col-md-12">
                    <section class="panel">
                        <header class="panel-heading">
                        	报名签到管理
                              <span class="tools pull-right">
                                <a class="fa fa-chevron-down" href="javascript:;"></a>    
                                <a class="fa fa-times" href="javascript:;"></a>
                             </span>
                        </header>
                        <div class="panel-body">
                        	<div class="adv-table editable-table ">
                        		<div>
                        			<form id="" class="form-horizontal cmxform " method="post">
                        				<?php
                                        	require("../../conn.php");
																					//获取当前年份
																					$arrdate=getdate();
                                        	//如果有数据提交
                                        	$hdnf=$arrdate['year'];
                                        	$hdmc="全部";
																					$qdzt="全部";
                                        	if($_POST){
                                        		$hdnf=$_POST["hdnf"];
                                        		$hdmc=$_POST["hdmc"];
																						$qdzt=$_POST["qdzt"];																						
                                        	}
																	?>
                        				<div class="form-group">
                        					<label for="hdnf" class="control-label col-lg-2">活动年份：</label>
                        					<div class="col-lg-6">                        						
                        						 <select id="hdnf" name="hdnf" class="form-control m-bot15" required="required"> 
                        						 	<?php                        						 	
                        						 		for ($i=2015; $i < $arrdate[year]+3; $i++) {
                        						 			if($i==$hdnf){
                        						 				echo "<option selected='selected'>".$i."</option>";
                        						 			}else {
                        						 				echo "<option>".$i."</option>";
                        						 			}
                        						 			
                        						 		}
                        						 	?>
                        						</select>        
                        					</div>
                        				</div>
                        				<div class="form-group">                        					   
                                    <label for="hdmc" class="control-label col-lg-2">活动名称：</label>
                                    <div class="col-lg-6">
                                        <select id="hdmc" name="hdmc" class="form-control m-bot15" required="required"> 
                                        	<option>全部</option>
                                        	<?php
																					$sql = "select left(活动时间,4),活动名称  from pc_活动列表   where  活动时间=".$hdnf;
                                        	$result = $conn->query($sql);
                                        	while($row = $result->fetch_assoc()) {
                                        	
                                				?>
                                					<option <?php if($hdmc==$row["活动名称"]){echo "selected='selected'";}?>><?php echo $row["活动名称"];?></option>
                                				<?php
                                					}
                                				?>
                                				
                                        </select>                            
                                    </div>                                    
                                </div>
                                <div class="form-group">
                                    <label for="qdzt" class="control-label col-lg-2">签到状态：</label>
                                    <div class="col-lg-3">
                                        <select id="qdzt" name="qdzt" class="form-control m-bot15" required="required"> 
                                        	<option>全部</option>
                                        	<option <?php if($qdzt=="已签到"){echo "selected='selected'";}?>>已签到</option>
                                        	<option <?php if($qdzt=="未签到"){echo "selected='selected'";}?>>未签到</option>                                        	
                                        </select>                            
                                    </div> 
                                    <div class="col-lg-offset-1 col-lg-5">
                                		<button class="btn btn-default btn-info" type="submit">查&nbsp;&nbsp;&nbsp;&nbsp;询</button>                                		
                                	</div>
                                </div>
                        				
                        			</form>
                        		</div>
                        		<div class="space15"></div>
                        		<table class="table table-striped table-hover table-bordered" id="editable-sample">
                        			<thead>
                        				<tr>
                        					<th class="hidden">序号</th>
                        					<th>ID</th>
                        					<th>活动名称</th>
                        					<th>姓名</th>
                        					<th>手机</th>
                        					<th>单位名称</th>
                        					<th>报名时间</th>
                        					<th>签到时间</th>
                        					<th>删除</th>
                        					<th class="hidden">Delete</th>
                        				</tr>
                        			</thead>
                        			<tbody>
                        				<?php 
                        					
																	$where=" where ";
																	if($_POST){
																		$hdmc=$_POST["hdmc"];
																		$qdzt=$_POST["qdzt"];
																		if($hdmc!="全部"){
																			$where=$where."  活动名称='".$hdmc."' ";
																		}else {
																			$where=$where." 活动名称 is not null ";
																		}
																		
																		if($qdzt!="全部"){
																			$where=$where." and 签到状态='".$qdzt."' ";
																		}else {
																			$where=$where." and 签到状态 is not null ";
																		}
																	}else {
																		$where=$where." 1=1 ";
																	}
                        													
                        					$sql = "select * from pc_报名_签到  ".$where;																	
                        					$result = $conn->query($sql);
                        					while($row = $result->fetch_assoc()) {                        					
                        				?>
                        				<tr class="">
                        					<td class="hidden">1</td>
                        					<td><?php echo $row["id"];?></td>
                        					<td><?php echo $row["活动名称"];?></td>
                        					<td><?php echo $row["姓名"];?></td>
                        					<td><?php echo $row["手机"];?></td>
                        					<td><?php echo $row["单位名称"];?></td>
                        					<td><?php echo $row["添加时间"];?></td>
                        					<td><?php echo $row["签到时间"];?></td>       
                        					<td><a class="schu" sjc="<?php echo $row["时间戳"];?>">删除</a></td>
                        					<td class="hidden"><a id="<?php echo $row["时间戳"];?>" class="delete" href="javascript:;" >Delete</a></td>                        					
                        				</tr>
                        				<?php
																	}
																	$conn->close();
																	
																?>
                        				
                        			</tbody>
                        		</table>
                        		<!-- Modal -->
                            <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
                            	<div class="modal-dialog">
                            		<div class="modal-content">
                            			<div class="modal-header">
                            				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            				<h4 class="modal-title">同欣易送检后台管理系统</h4>
                            			</div>
                            			<div class="modal-body">
                            				<p>修改成功！</p>                            			
                            			</div>
                            			<div class="modal-footer">
                            				<button data-dismiss="modal" class="btn btn-primary" type="button">确定</button>                            				
                            			</div>
                            		</div>
                            	</div>
                            </div>
                            <!-- modal -->
                            
                            <!-- Modal -->
                            <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal2" class="modal fade">
                            	<div class="modal-dialog">
                            		<div class="modal-content">
                            			<div class="modal-header">
                            				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            				<h4 class="modal-title">同欣易送检后台管理系统</h4>
                            			</div>
                            			<div class="modal-body">
                            				<p>删除成功！</p>                            			
                            			</div>
                            			<div class="modal-footer">
                            				<button data-dismiss="modal" class="btn btn-primary" type="button">确定</button>                            				
                            			</div>
                            		</div>
                            	</div>
                            </div>
                            <!-- modal -->
                            <!-- Modal -->
                            <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal3" class="modal fade">
                            	<div class="modal-dialog">
                            		<div class="modal-content">
                            			<div class="modal-header">
                            				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            				<h4 class="modal-title">同欣易送检后台管理系统</h4>
                            			</div>
                            			<div class="modal-body">
                            				<p>确定删除吗！</p>                            			
                            			</div>
                            			<div class="modal-footer">
                            				<button id="thisclose" data-dismiss="modal" class="btn btn-default" type="button">取消</button>
                            				<button id="thisdelete" class="btn btn-primary" type="button">确定</button>               				
                            			</div>
                            		</div>
                            	</div>
                            </div>
                            <!-- modal -->
                        	</div>                  
                        </div>
                    </section>
                </div>
            </div>
        </div>
        <!--body wrapper end-->
        
        <!--footer section start-->
        <footer>
            2016 &copy; 同欣易送检后台管理系
        </footer>
        <!--footer section end-->
    </div>
    <!-- main content end-->
</section>
<!-- Placed js at the end of the document so the pages load faster -->
<script src="../js/jquery-1.10.2.min.js"></script>
<script src="../js/jquery-ui-1.9.2.custom.min.js"></script>
<script src="../js/jquery-migrate-1.2.1.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/modernizr.min.js"></script>
<script src="../js/jquery.nicescroll.js"></script>

<!--common scripts for all pages-->
<script src="../js/scripts.js"></script>

<!--data table-->
<script type="text/javascript" src="../js/data-tables/jquery.dataTables.js"></script>
<script type="text/javascript" src="../js/data-tables/DT_bootstrap.js"></script>
<!--script for editable table-->
<script src="../js/editable-table.js"></script>

<script type="text/javascript" src="../js/jquery.validate.min.js"></script>
<script src="../js/charCode.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	jQuery(document).ready(function() {
		EditableTable.init();
	});
	$().ready(function() {
//		//活动年份
//		var mydata=new Date();
//		var myyear=mydata.getFullYear();
//		var str="";
//		//年份下拉框创建
//		for (var i=2015;i<myyear+3;i++) {
//			if (i==myyear) {
//				str=str+'<option selected="selected">'+i+'</option>';
//			} else{
//				str=str+"<option>"+i+"</option>";
//			}			
//		}
//		$("#hdnf").html(str);
		
		
		
				deletesjc="";
        $(".schu").live("click",function(){
        	$('#myModal3').modal();
        	var $sjc=$(this).attr("sjc");
        	deletesjc=$sjc;       	
        });
        
         $("#thisdelete").bind("click",function(){
        	$("#thisclose").trigger("click");
        	$.ajax({
            		url:'../../adminphp/pc_bmqd.php',
            		type:'post',
            		dataType:'json',
            		data:{
            			sqlflag:"delete",
            			sjc:deletesjc
            		},
            		success:function(data){
            			
            			if (data.result=='success') {
            				$('#myModal2').modal();
            				deletesjcid="#"+deletesjc;
            				$(deletesjcid).trigger("click");
            				
            				deletesjc="";
            			} else{
            				var severresult=data.result;
            				alert(severresult);
            			}            			
            			
            		},
            		error:function(xhr,type,errorThrown){
            			alert('ajax错误'+type);
            		}
            		
            	});
        });
        
        //活动年份改变事件，活动名称下拉框内容动态变化
        $("#hdnf").live("change",function(){
        	$.ajax({
            		url:'../../adminphp/pc_hdlb.php',
            		type:'post',
            		dataType:'json',
            		data:{
            			sqlflag:"selectname",
            			hdnf:$("#hdnf").val()
            		},
            		success:function(data){    
            			var count=data.length;
            			var optionhtml="<option>全部</option>";
            			if (count>1) {            				
            				for (var i=0;i<count-1;i++) {
            					var hdnf=data[i].活动名称;
            					optionhtml=optionhtml+"<option>"+hdnf+"</option>";
            				}
            			} else{
            				var result=data[0].result;
            				//alert(result);            		
            			} 
            			$("#hdmc").html(optionhtml);
            		},
            		error:function(xhr,type,errorThrown){
            			alert('ajax错误'+type+"---"+errorThrown);
            		}
            		
            	});
        });
		
	});

	
</script>


</body>
</html>

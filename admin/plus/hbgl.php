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
                <li class="menu-list"><a href="#"><i class="fa fa-flag"></i> <span>活动</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="../index.php">新建活动</a></li>
                        <li><a href="hdgl.php">活动管理</a></li>  
                        <li><a href="bmqd.php">报名签到管理</a></li>                                 
                    </ul>
                </li>
                <li class="menu-list"><a href=""><i class="fa fa-laptop"></i> <span>通告</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="tgxj.php">新建通告</a></li>
                        <li><a href="tggl.php">通告管理</a></li>                       
                    </ul>
                </li>
                <li class="active"><a href="hbgl.php"><i class="fa fa-android"></i> <span>伙伴管理</span></a></li>         
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
        
        <!-- page heading start-->
        <div class="page-heading">
            <h3>
            	<small>该处对应同欣易送检app，关注，伙伴</small>
            </h3>            
        </div>
        <!-- page heading end-->
        
        <!--body wrapper start-->
        <div class="wrapper">
        	<div class="row">
                <div class="col-md-6">
                    <section class="panel">
                        <header class="panel-heading">
                        	伙伴类型
                            <span class="tools pull-right">
                                <a class="fa fa-chevron-down" href="javascript:;"></a>
                                <a class="fa fa-times" href="javascript:;"></a>
                            </span>
                        </header>
                        <div class="panel-body">
                        	<div class="adv-table editable-table ">                        		
                        		<div class="space15"></div>
                        		<table class="table table-striped table-hover table-bordered" id="editable-sample">
                        			<thead>
                        				<tr>
                        					<th>ID</th>
                        					<th>伙伴类型</th>
                        					<th>删除</th>
                        					<th class="hidden">Delete</th>
                        				</tr>
                        			</thead>
                        			<tbody>                        				
                        				<?php
                        					require("../../conn.php");
                        					$sql = "select * from pc_伙伴类型  ";
                        					$result = $conn->query($sql);
                        					while($row = $result->fetch_assoc()) {
                        					
                        				?>
                        				<tr class="">
                        					<td><?php echo $row["id"];?></td>
                        					<td><?php echo $row["伙伴类型"];?></td>
                        					<td><a class="lxschu" sjc="<?php echo $row["时间戳"];?>">删除</a></td>                        					
                        					<td class="hidden"><a id="<?php echo $row["时间戳"];?>" class="delete" href="javascript:;" >Delete</a></td>
                        				</tr>
                        				<?php
																	}
																
																	
																?> 
                        			</tbody>
                        		</table>
                        	</div>
                        </div>
                    </section>
                </div>
                <div class="col-md-6">
                    <section class="panel">
                        <header class="panel-heading">
                        	伙伴类型新建
                            <span class="tools pull-right">
                                <a class="fa fa-chevron-down" href="javascript:;"></a>
                                <a class="fa fa-times" href="javascript:;"></a>
                            </span>
                        </header>
                        <div class="panel-body">
                            <form id="hblxxjform" class="form-horizontal cmxform">
                            	<div class="form-group hidden">
                                    <label for="hblxxjsjc" class="control-label col-lg-2">时间戳：</label>
                                    <div class="col-lg-6">
                                        <input id="hblxxjsjc" name="hblxxjsjc" class="form-control"  size="16" type="text" value="" />
                                    </div>
                                </div>
                                <div class="form-group hidden">
                                    <label for="hblxxjsqlflag" class="control-label col-lg-2">sqlflag：</label>
                                    <div class="col-lg-6">
                                        <input id="hblxxjsqlflag" name="hblxxjsqlflag" class="form-control"  size="16" type="text" value="insert" />
                                    </div>
                                </div>
                            	<div class="form-group">
                                <label for="hblxzd" class="col-lg-3 col-sm-2 control-label">伙伴类型：</label>
                                <div class="col-lg-9">
                                	<input id="hblxzd" name="hblxzd" class="form-control"  size="16" type="text" value="" />                           
                                </div>
                            	</div>
                            	<div class="form-group">
                                	<div class="col-lg-offset-9 col-lg-5">
                                		<button id="hblxxjreset" class="btn btn-default btn-info hidden" type="reset">重&nbsp;&nbsp;&nbsp;&nbsp;置</button>
                                		<button class="btn btn-default btn-info" type="submit">保&nbsp;&nbsp;&nbsp;&nbsp;存</button>
                                		
                                	</div>
                                </div>
                            </form>                        
                         
                        </div>
                    </section>
                </div>
                <div class="col-md-6">
                    <section class="panel">
                        <header class="panel-heading">
                        	伙伴新建
                            <span class="tools pull-right">
                                <a class="fa fa-chevron-down" href="javascript:;"></a>
                                <a class="fa fa-times" href="javascript:;"></a>
                            </span>
                        </header>
                        <div class="panel-body">
                            <form id="hbxjform" class="form-horizontal cmxform">
                            	<div class="form-group hidden">
                                    <label for="sjc" class="control-label col-lg-2">时间戳：</label>
                                    <div class="col-lg-6">
                                        <input id="sjc" name="sjc" class="form-control"  size="16" type="text" value="" />
                                    </div>
                                </div>
                                <div class="form-group hidden">
                                    <label for="sqlflag" class="control-label col-lg-2">sqlflag：</label>
                                    <div class="col-lg-6">
                                        <input id="sqlflag" name="sqlflag" class="form-control"  size="16" type="text" value="insert" />
                                    </div>
                                </div>
                            	<div class="form-group">
                                <label for="hblx" class="col-lg-3 col-sm-2 control-label">伙伴类型：</label>
                                <div class="col-lg-9">
                                	<select id="hblx" name="hblx" class="form-control m-bot15">
                                		<?php
                                			
                                			$sql = "select * from pc_伙伴类型  ";
                                			$result = $conn->query($sql);
                                			while($row = $result->fetch_assoc()) {
                                		?>
                                		<option><?php echo $row["伙伴类型"];?></option> 
                                		<?php
                                			}
                                			
                                		?>                                 		
                                		                            		
                                	</select>                                    
                                </div>
                            	</div>                            	
                            	<div class="form-group">
                                <label for="hbmc" class="col-lg-3 col-sm-2 control-label">伙伴名称：</label>
                                <div class="col-lg-9">
                                        <input id="hbmc" name="hbmc" class="form-control"  size="16" type="text" value="" />
                                </div>
                            	</div>
                            	<div class="form-group">
                                <label for="wzhi" class="col-lg-3 col-sm-2 control-label">网址：</label>
                                <div class="col-lg-9">
                                        <input id="wzhi" name="wzhi" class="form-control"  size="16" type="text" value="" />
                                </div>
                            	</div>
                            	<div class="form-group">
                                	<div class="col-lg-offset-9 col-lg-5">
                                		<button class="btn btn-default btn-info" type="submit">保&nbsp;&nbsp;&nbsp;&nbsp;存</button>
                                		
                                	</div>
                                </div>
                            </form>
                         
                        </div>
                    </section>
                </div>
            </div>
            
            <div class="row">
                <div class="col-md-12">
                    <section class="panel">
                        <header class="panel-heading">
                        	伙伴列表
                            <span class="tools pull-right">
                                <a class="fa fa-chevron-down" href="javascript:;"></a>
                                <a class="fa fa-times" href="javascript:;"></a>
                            </span>
                        </header>
                        <div class="panel-body">
                            <div class="adv-table editable-table ">                        		
                        		<div class="space15"></div>
                        		<table class="table table-striped table-hover table-bordered" id="editable-sample2">
                        			<thead>
                        				<tr>
                        					<th>ID</th>
                        					<th>类型</th>
                        					<th>名称</th>
                        					<th>网址</th>
                        					<th>删除</th>
                        					<th class="hidden">Delete</th>
                        				</tr>
                        			</thead>
                        			<tbody>
                        				<?php
                                			
                                			$sql = "select * from pc_伙伴列表  ";
                                			$result = $conn->query($sql);
                                			while($row = $result->fetch_assoc()) {
                                		?>
                        				<tr class="">
                        					<td><?php echo $row["id"];?></td>
                        					<td><?php echo $row["类型"];?></td>
                        					<td><?php echo $row["名称"];?></td>
                        					<td><?php echo $row["网址"];?></td>   
                        					<td><a class="schu" sjc="<?php echo $row["时间戳"];?>">删除</a></td>
                        					<td class="hidden"><a id="<?php echo $row["时间戳"];?>" class="delete" href="javascript:;" >Delete</a></td>
                        				</tr>
                        				<?php
                                			}
                                			$conn->close();
                                ?>                          				
                        				
                        			</tbody>
                        		</table>
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
<script type="text/javascript">
jQuery(document).ready(function() {
        EditableTable.init();
    });
$().ready(function() {
				//自动填充当前时间戳
				var mytime_hblxxj = function() {
					var myDate=new Date();
					var mytime=myDate.getTime();
					$("#hblxxjsjc").val(mytime);
				};
				mytime_hblxxj();
				
				var mytime_hbxj = function() {
					var myDate=new Date();
					var mytime=myDate.getTime();
					$("#sjc").val(mytime);
				};
				mytime_hbxj();
				
				$("#hblxxjform").validate({
            rules: {
                hblxzd: "required"               
            },
            messages: {
                hblxzd: "不能为空！"               
            },
            submitHandler:function(form) {
            	$.ajax({
            		url:'../../adminphp/pc_hblx.php',
            		type:'post',
            		dataType:'json',
            		data:{
            			sqlflag:$("#hblxxjsqlflag").val(),
            			sjc:$("#hblxxjsjc").val(),
            			hblx:$("#hblxzd").val()
            		},
            		success:function(data){            			
            			if (data.result=='success') {
            				window.location.reload();
            			} else{
            				var severresult=data.result;
            				alert(severresult);
            			}            			
            			
            		},
            		error:function(xhr,type,errorThrown){
            			alert('ajax错误'+type+"---"+errorThrown);
            		}
            		
            	});
            	
            	
            }
        });
        
        $("#hbxjform").validate({
            rules: {
                hblx: "required",
                hbmc: "required",
                wzhi: {
                	required: true,
                	url:true
                }
            },
            messages: {              
                hblx: "伙伴类型不能为空！",
                hbmc: "伙伴名称不能为空",
                wzhi: "请正确输入网址，格式如：http://www.baidu.com"             
            },
            submitHandler:function(form) {
            	$.ajax({
            		url:'../../adminphp/pc_hblb.php',
            		type:'post',
            		dataType:'json',
            		data:$("#hbxjform").serialize(),
            		success:function(data){            			
            			if (data.result=='success') {
            				window.location.reload();
            			} else{
            				var severresult=data.result;
            				alert(severresult);
            			}            			
            			
            		},
            		error:function(xhr,type,errorThrown){
            			alert('ajax错误'+type+"---"+errorThrown);
            		}
            		
            	});
            	
            	
            }
        });
        
        $(".lxschu").live("click",function(){        	
        	var $sjc=$(this).attr("sjc");
        	$.ajax({
            		url:'../../adminphp/pc_hblx.php',
            		type:'post',
            		dataType:'json',
            		data:{
            			sqlflag:"delete",
            			sjc:$sjc
            		},
            		success:function(data){            			
            			if (data.result=='success') {          			
            				$("#"+$sjc).trigger("click");             				
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
        $(".schu").live("click",function(){        	
        	var $sjc=$(this).attr("sjc");
        	$.ajax({
            		url:'../../adminphp/pc_hblb.php',
            		type:'post',
            		dataType:'json',
            		data:{
            			sqlflag:"delete",
            			sjc:$sjc
            		},
            		success:function(data){            			
            			if (data.result=='success') {          			
            				$("#"+$sjc).trigger("click");             				
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
	});
	
</script>


</body>
</html>

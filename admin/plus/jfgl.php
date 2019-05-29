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
  <style type="text/css">
  	.myhidden{
  		border:none;
  	}
  </style>
  
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
                <li><a href="hbgl.php"><i class="fa fa-android"></i> <span>伙伴管理</span></a></li>         
                <li class="active"><a href="jfgl.php"><i class="fa fa-bullhorn"></i> <span>积分管理</span></a></li>                
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
            	<small>该处对应同欣易送检app，关注，活动积分</small>
            </h3>            
        </div>
        <!-- page heading end-->
        
        <!--body wrapper start-->
        <div class="wrapper">
        		<div class="row">
                <div class="col-md-12">
                    <section class="panel">
                        <header class="panel-heading">
                        	积分新建
                            <span class="tools pull-right">
                                <a id="jfxjpanel" class="fa fa-chevron-down" href="javascript:;"></a>
                                <a class="fa fa-times" href="javascript:;"></a>
                            </span>
                        </header>
                        <div id="jfxjpanelbody" class="panel-body">
                        	<form id="jfxjform" class="form-horizontal cmxform">
                            		<div class="form-group hidden">
                                    <label for="xjsjc" class="control-label col-lg-1">时间戳：</label>
                                    <div class="col-lg-4">
                                        <input id="xjsjc" name="xjsjc" class="form-control"  size="16" type="text" value="" />
                                    </div>                               
                                    <label for="xjsqlflag" class="control-label col-lg-1 col-lg-offset-1">sqlflag：</label>
                                    <div class="col-lg-4">
                                        <input id="xjsqlflag" name="xjsqlflag" class="form-control"  size="16" type="text" value="insert" />
                                    </div>
                                </div>
                                <div class="form-group ">
                                    <label for="xjxming" class="control-label col-lg-1">姓名：</label>
                                    <div class="col-lg-4">
                                        <input id="xjxming" name="xjxming" class="form-control"  size="16" type="text" value="" />
                                    </div>                               
                                    <label for="xjsji" class="control-label col-lg-1 col-lg-offset-1">手机：</label>
                                    <div class="col-lg-4">
                                        <input id="xjsji" name="xjsji" class="form-control"  size="16" type="text" value="" />
                                    </div>
                                </div>
                                <div class="form-group ">
                                    <label for="xjjfen" class="control-label col-lg-1">积分：</label>
                                    <div class="col-lg-4">
                                        <input id="xjjfen" name="xjjfen" class="form-control"  size="16" type="text" value="" />
                                    </div>                               
                                    <label for="xjbzhu" class="control-label col-lg-1 col-lg-offset-1">备注：</label>
                                    <div class="col-lg-4">
                                        <textarea id="xjbzhu" name="xjbzhu" rows="3" class="form-control"></textarea>
                                    </div>
                                </div>
                            	<div class="form-group">
                                	<div class="col-lg-offset-10 col-lg-5">
                                		<button class="btn btn-default btn-info" type="submit">保&nbsp;&nbsp;&nbsp;&nbsp;存</button>
                                		<button id="bznr" class="btn btn-default btn-info hidden" type="button">55</button>
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
                        	积分列表
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
                        					<th>姓名</th>
                        					<th>手机</th>
                        					<th>积分</th>
                        					<th>操作</th>
                        					<th>删除</th>
                        					<th class="hidden">Delete</th>
                        				</tr>
                        			</thead>
                        			<tbody>
                        				<?php
                        					require("../../conn.php");
                        					$sql = "select * from pc_积分列表  ";
                        					$result = $conn->query($sql);
                        					while($row = $result->fetch_assoc()) {
                        					
                        				?>
                        				<tr class="">
                        					<td><?php echo $row["id"];?></td>
                        					<td><?php echo $row["姓名"];?></td>
                        					<td><?php echo $row["手机"];?></td>
                        					<td><a class="jfjl" sjc="<?php echo $row["时间戳"];?>"><?php echo $row["积分"];?></a></td>
                        					<td><a class="xxi" sjc="<?php echo $row["时间戳"];?>">操作</a></td>                       
                        					<td><a class="schu" sjc="<?php echo $row["时间戳"];?>">删除</a></td>                        					
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
                    
                    <!-- Modal -->
                            <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal3" class="modal fade">
                            	<div class="modal-dialog">
                            		<div class="modal-content">
                            			<div class="modal-header">
                            				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            				<h4 class="modal-title">同欣易送检后台管理系统</h4>
                            			</div>
                            			<div class="modal-body">
                            				<p>此处删除会删除该用户的所有积分，请慎重！</p>                            			
                            			</div>
                            			<div class="modal-footer">
                            				<button id="thisclose" data-dismiss="modal" class="btn btn-default" type="button">取消</button>
                            				<button id="thisdelete" class="btn btn-primary" type="button">确定删除</button>               				
                            			</div>
                            		</div>
                            	</div>
                            </div>
                            <!-- modal -->
                </div>             
            </div>
            
            <div class="row">
                <div class="col-md-12">
                    <section class="panel">
                        <header class="panel-heading">
                        	积分加减操作
                            <span class="tools pull-right">
                                <a id="xxxxpanel" class="fa fa-chevron-up" href="javascript:;"></a>
                                <a class="fa fa-times" href="javascript:;"></a>
                            </span>
                        </header>
                        <div id="panelbody" style="display: none;" class="panel-body">
                            <form id="" class="form-horizontal cmxform" action="../../adminphp/pc_jfjlb.php" method="post">
                            		<div class="form-group hidden">
                                    <label for="jfsjc" class="control-label col-lg-1">时间戳：</label>
                                    <div class="col-lg-4">
                                        <input id="jfsjc" name="jfsjc" class="form-control"  size="16" type="text" value=""  required="required"/>
                                    </div>                               
                                    <label for="sqlflag" class="control-label col-lg-1 col-lg-offset-1">sqlflag：</label>
                                    <div class="col-lg-4">
                                        <input id="sqlflag" name="sqlflag" class="form-control"  size="16" type="text" value="insert" />
                                    </div>
                                </div>
                                <div class="form-group ">
                                    <label for="xming" class="control-label col-lg-1">姓名：</label>
                                    <div class="col-lg-4">
                                        <input id="xming" name="xming" class="form-control"  size="16" type="text" value="" readonly="readonly"/>
                                    </div>                               
                                    <label for="sji" class="control-label col-lg-1 col-lg-offset-1">手机：</label>
                                    <div class="col-lg-4">
                                        <input id="sji" name="sji" class="form-control"  size="16" type="text" value=""  readonly="readonly"/>
                                    </div>
                                </div>
                                
                                <div class="form-group ">
                                    <label for="jfen" class="control-label col-lg-1">积分：</label>
                                    <div class="col-lg-4">
                                        <input id="jfen" name="jfen" class="form-control"  size="16" type="text" value=""  readonly="readonly"/>
                                    </div>
                                </div>
                                <div class="form-group ">
                                    <label for="cz" class="control-label col-lg-1">操作：</label>
                                    <div class="col-lg-4">                                       
                                        <select id="cz" name="cz" class="form-control m-bot15" required="required">
                                        	<option>加</option> 
                                        	<option>减</option> 
                                        </select>    
                                    </div>
                                    <label for="fz" class="control-label col-lg-1 col-lg-offset-1">分值：</label>
                                    <div class="col-lg-4">
                                        <input id="fz" name="fz" class="form-control"  size="16" type="number" min="1" value="0" required="required"/>
                                    </div>
                                </div>
                                <div class="form-group ">
                                    <label for="sm" class="control-label col-lg-1">说明：</label>
                                    <div class="col-lg-10">
                                        <input id="sm" name="sm" class="form-control"  size="16" type="text" value="" />
                                    </div>
                                </div>
                            	<div class="form-group">
                                	<div class="col-lg-offset-9 col-lg-5">                                		
                                		<button id="bchu" class="btn btn-default btn-info" type="submit" >保&nbsp;&nbsp;&nbsp;&nbsp;存</button>
                                		
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
                        	积分操作记录列表
                              <span class="tools pull-right">
                                <a id="qrpanel" class="fa fa-chevron-up" href="javascript:;"></a>
                                <a class="fa fa-times" href="javascript:;"></a>
                             </span>
                        </header>
                        <div id="" style="display: ;" class="panel-body">
                            <div class="adv-table editable-table ">
                        		<div class="space15"></div>
                        		<table class="table table-striped table-hover table-bordered" id="editable-sample">
                        			<thead>
                        				<tr>
                        					<th class="hidden">序号</th>
                        					<th>ID</th>
                        					<th>时间</th>
                        					<th>操作</th>
                        					<th>加/减值</th>
                        					<th>说明</th>
                        					<th>删除</th>
                        					<th class="hidden">Delete</th>                        					
                        					
                        				</tr>
                        			</thead>
                        			<tbody>
                        				<?php 
                        					$cxjfsjc="";
																	if($_POST){
																		$cxjfsjc=$_POST["cxjfsjc"];
																?>
																<input class="myhidden"  type="text" autofocus="autofocus" readonly="readonly" />
																<?php
																	}
                        					$sql = "select * from pc_积分记录表  where 积分时间戳='".$cxjfsjc."' ";
                        					$result = $conn->query($sql);
                        					while($row = $result->fetch_assoc()) {
                        					
                        				?>
                        				<tr class="">
                        					<td class="hidden">1</td>
                        					<td><?php echo $row["id"];?></td>
                        					<td><?php echo $row["时间"];?></td>
                        					<td><?php echo $row["操作"];?></td>
                        					<td><?php echo $row["变化值"];?></td>
                        					<td><?php echo $row["说明"];?></td>
                        					<td><a class="jfjlschu" sjc="<?php echo $row["时间戳"];?>">删除</a></td>
                        					<td class="hidden"><a id="<?php echo $row["时间戳"];?>" class="delete" href="javascript:;" >Delete</a></td>
                        				</tr>
                        				</tr>
                        				<?php
																	}
																	$conn->close();
																	
																?>
                        				
                        			</tbody>
                        		</table>
                        		
                        	</div>
                        	
                        	<form id="" class="form-horizontal cmxform hidden " method="post">
                        		<input type="text" id="cxjfsjc" name="cxjfsjc" value="" required="required" />
                        		<button id="jfjlbut" class="btn btn-default btn-info" type="submit">查询</button>     
                        	</form>
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
				//禁用回车键
				document.onkeydown = function () {
					if (window.event && window.event.keyCode == 13) {
						window.event.returnValue = false;
					}
				}
				//自动填充当前时间戳
				var mytime_xj = function() {
					var myDate=new Date();
					var mytime=myDate.getTime();
					$("#xjsjc").val(mytime);
				};
				mytime_xj();
				
				$("#jfxjform").validate({
            rules: {
                xjxming: "required",
                xjsji: "required"
            },
            messages: {
                xjxming: "姓名不能为空！",
                xjsji: "手机不能为空！"
            },
            submitHandler:function(form) {
            	$.ajax({
            		url:'../../adminphp/pc_jflb.php',
            		type:'post',
            		dataType:'json',
            		data:{
            			sqlflag:$("#xjsqlflag").val(),
            			sjc:$("#xjsjc").val(),
            			xming:$("#xjxming").val(),
            			sji:$("#xjsji").val(),
            			jfen:$("#xjjfen").val(),
            			bzhu:$("#xjbzhu").val()
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
				
				$(".xxi").live("click",function(){
        	var $sjc=$(this).attr("sjc");
        	$.ajax({
            		url:'../../adminphp/pc_jflb.php',
            		type:'post',
            		dataType:'json',
            		data:{
            			sqlflag:"select",
            			sjc:$sjc
            		},
            		success:function(data){
            			//alert(data);            			
            			var length=data.length;
            			for (var i=0;i<length-1;i++) {
            				$("#jfsjc").val(data[i].时间戳);
            				$("#xming").val(data[i].姓名);
            				$("#sji").val(data[i].手机);
            				$("#jfen").val(data[i].积分);
            			}
            		},
            		error:function(xhr,type,errorThrown){
            			alert('ajax错误'+xhr+"---"+type+'---'+errorThrown);
            		}
            		
            	});
            	if ($("#panelbody").is(":visible")) {            		
            	} else{
            		$("#xxxxpanel").trigger("click");
            	} 
            	if ($("#jfxjpanelbody").is(":visible")) { 
            		$("#jfxjpanel").trigger("click");           		
            	} else{            		
            	}
            	$("#fz").focus();
        });       
        
        deletesjc="";
        $(".schu").live("click",function(){
        	$('#myModal3').modal();
        	var $sjc=$(this).attr("sjc");
        	deletesjc=$sjc;       	
        });
        
				
        $("#thisdelete").live("click",function(){        	
        	//var $sjc=$(this).attr("sjc");
        	$("#thisclose").trigger("click");
        	$.ajax({
            		url:'../../adminphp/pc_jflb.php',
            		type:'post',
            		dataType:'json',
            		data:{
            			sqlflag:"delete",
            			sjc:deletesjc
            		},
            		success:function(data){            			
            			if (data.result=='success') {          			
            				$("#"+deletesjc).trigger("click");             				
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
        
        //报名人数事件监听
        $(".jfjl").live("click",function(){
        	var $sjc=$(this).attr("sjc");
        	$("#cxjfsjc").val($sjc);
        	$("#jfjlbut").trigger("click");
        });
        
         $(".jfjlschu").live("click",function(){        	
        	var $sjc=$(this).attr("sjc");
        	$.ajax({
            		url:'../../adminphp/pc_jfjlb.php',
            		type:'post',
            		dataType:'json',
            		data:{
            			sqlflag:"delete",
            			sjc:$sjc
            		},
            		success:function(data){            			
            			if (data.result=='success') {          			
            				$("#"+$sjc).trigger("click");
            				alert("删除成功！");
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

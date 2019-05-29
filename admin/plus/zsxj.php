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
  
  <!--datetimepicker css-->
  <link rel="stylesheet" type="text/css" href="../js/bootstrap-datetimepicker/css/datetimepicker-custom.css" />
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
                <li><a href="hbgl.php"><i class="fa fa-android"></i> <span>伙伴管理</span></a></li>
                <li><a href="jfgl.php"><i class="fa fa-bullhorn"></i> <span>积分管理</span></a></li>                
                <li><a href="xxts.php"><i class="fa fa-bar-chart-o"></i> <span>消息推送</span></a></li>
                <li class="menu-list nav-active"><a href=""><i class="fa fa-book"></i> <span>知识</span></a>
                    <ul class="sub-menu-list">
                        <li class="active"><a href="zsxj.php">送检知识新建</a></li>
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
            	<small>该处对应同欣易送检app，知识，送检知识</small>
            </h3>            
        </div>
        <!-- page heading end-->
        
        <!--body wrapper start-->
        <div class="wrapper">
        	<div class="row">
                <div class="col-md-6">
                    <section class="panel">
                        <header class="panel-heading">
                        	送检知识类型
                            <span class="tools pull-right">
                                <a id="zslxpanel" class="fa fa-chevron-down" href="javascript:;"></a>
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
                        					<th>送检知识类型</th>
                        					<th>删除</th>
                        					<th class="hidden">Delete</th>
                        				</tr>
                        			</thead>
                        			<tbody>
                        				<?php
                        					require("../../conn.php");
                        					$sql = "select * from pc_送检知识类型  ";
                        					$result = $conn->query($sql);
                        					while($row = $result->fetch_assoc()) {
                        					
                        				?>                        				
                        				<tr class="">
                        					<td><?php echo $row["id"];?></td>
                        					<td><?php echo $row["送检知识类型"];?></td>
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
                </div>
                <div class="col-md-6">
                    <section class="panel">
                        <header class="panel-heading">
                        	类型字段新建
                            <span class="tools pull-right">
                                <a id="zdxjpanel" class="fa fa-chevron-down" href="javascript:;"></a>
                                <a class="fa fa-times" href="javascript:;"></a>
                            </span>
                        </header>
                        <div id="zdxjpanelbody" class="panel-body">
                        	<form id="lxzdform" class="form-horizontal cmxform">
                            	<div class="form-group hidden">
                                    <label for="lxsjc" class="control-label col-lg-2">时间戳：</label>
                                    <div class="col-lg-6">
                                        <input id="lxsjc" name="lxsjc" class="form-control"  size="16" type="text" value="" />
                                    </div>
                                </div>
                                <div class="form-group hidden">
                                    <label for="lxsqlflag" class="control-label col-lg-2">sqlflag：</label>
                                    <div class="col-lg-6">
                                        <input id="lxsqlflag" name="lxsqlflag" class="form-control"  size="16" type="text" value="insert" />
                                    </div>
                                </div>
                            	<div class="form-group">
                                <label for="sjzslx" class="col-lg-3 col-sm-2 control-label">知识类型类型：</label>
                                <div class="col-lg-9">
                                	<input id="sjzslx" name="sjzslx" class="form-control"  size="16" type="text" value="" />                           
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
                        	知识新建
                              <span class="tools pull-right">
                                <a class="fa fa-chevron-down" href="javascript:;"></a>
                                <a class="fa fa-times" href="javascript:;"></a>
                             </span>
                        </header>
                        <div  class="panel-body">
                            <form id="zsxjform" class="form-horizontal cmxform ">
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
                                    <label for="zslx" class="control-label col-lg-2">知识类型：</label>
                                    <div class="col-lg-6">
                                        <select id="zslx" name="zslx" class="form-control m-bot15">
                                       <?php
                                        	$sql = "select * from pc_送检知识类型  ";
                                        	$result = $conn->query($sql);
                                        	while($row = $result->fetch_assoc()) {
                                				?>
                                				<option><?php echo $row["送检知识类型"];?></option> 
                                				<?php
                                					}
																				$conn->close();	
                                			
                                				?>      
                                        </select>    
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="clxc" class="control-label col-lg-2">材料检验/现场检测：</label>
                                    <div class="col-lg-6">
                                    	<select id="clxc" name="clxc" class="form-control m-bot15">
                                        	<option selected="selected">材料检验</option>
                                        	<option>现场检测</option>
                                        	
                                        </select>  
                                    </div>
                                </div>                                
                                <div class="form-group">
                                    <label for="dzbh" class="control-label col-lg-2">定额编号：</label>
                                    <div class="col-lg-6">
                                    	<input id="dzbh" name="dzbh" class="form-control"  size="16" type="text" value="" />                                            	                             
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="dznr" class="control-label col-lg-2">定额内容：</label>
                                    <div class="col-lg-6">
                                    	<input id="dznr" name="dznr" class="form-control"  size="16" type="text" value="" /> 
                                    </div>
                                </div>
                               <div class="form-group">
                                    <label for="sjslyq" class="control-label col-lg-2">送检数量要求：</label>
                                    <div class="col-lg-8">
                                    	<textarea id="sjslyq" name="sjslyq" rows="6" class="form-control"></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="qyff" class="control-label col-lg-2">取样（检验）方法：</label>
                                    <div class="col-lg-8">
                                    	<textarea id="qyff" name="qyff" rows="6" class="form-control"></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="jyxz" class="control-label col-lg-2">检验性质：</label>
                                    <div class="col-lg-8">
                                    	<textarea id="jyxz" name="jyxz" rows="6" class="form-control"></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="bzsm" class="control-label col-lg-2">备注说明：</label>
                                    <div class="col-lg-8">
                                    	<textarea id="bzsm" name="bzsm" rows="6" class="form-control"></textarea>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                	<div class="col-lg-offset-6 col-lg-5">
                                		<button id="reset" class="btn btn-default btn-info hidden" type="reset">重&nbsp;&nbsp;&nbsp;&nbsp;置</button>
                                		<button id="myreset" class="btn btn-default btn-info" type="button">重&nbsp;&nbsp;&nbsp;&nbsp;置</button>
                                		
                                		<button class="btn btn-default btn-info" type="submit">保&nbsp;&nbsp;&nbsp;&nbsp;存</button>
                                		
                                	</div>
                                </div>

                            </form>
                            <!-- Modal -->
                            <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
                            	<div class="modal-dialog">
                            		<div class="modal-content">
                            			<div class="modal-header">
                            				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            				<h4 class="modal-title">同欣易送检后台管理系统</h4>
                            			</div>
                            			<div class="modal-body">
                            				<p>保存成功！</p>                            			
                            			</div>
                            			<div class="modal-footer">
                            				<button data-dismiss="modal" class="btn btn-primary" type="button">确定</button>                            				
                            			</div>
                            		</div>
                            	</div>
                            </div>
                            <!-- modal -->
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

<!--pickers plugins-->
<script type="text/javascript" src="../js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="../js/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
<script type="text/javascript" src="../js/bootstrap-daterangepicker/moment.min.js"></script>
<script type="text/javascript" src="../js/bootstrap-daterangepicker/daterangepicker.js"></script>
<script type="text/javascript" src="../js/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
<script type="text/javascript" src="../js/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
<!--pickers initialization-->
<script src="../js/pickers-init.js"></script>

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
				
				$(".schu").live("click",function(){        	
        	var $sjc=$(this).attr("sjc");
        	$.ajax({
            		url:'../../adminphp/pc_sjzslx.php',
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
        
        //自动填充当前时间戳
				var mytime_lxzd = function() {
					var myDate=new Date();
					var mytime=myDate.getTime();
					$("#lxsjc").val(mytime);
				};
				mytime_lxzd();
				
				$("#lxzdform").validate({
            rules: {
                sjzslx: "required"               
            },
            messages: {
                sjzslx: "不能为空！"               
            },
            submitHandler:function(form) {
            	$.ajax({
            		url:'../../adminphp/pc_sjzslx.php',
            		type:'post',
            		dataType:'json',
            		data:{
            			sqlflag:$("#lxsqlflag").val(),
            			sjc:$("#lxsjc").val(),
            			sjzslx:$("#sjzslx").val()
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
        
        //自动填充当前时间戳
				var mytime_zsxj = function() {
					var myDate=new Date();
					var mytime=myDate.getTime();
					$("#sjc").val(mytime);
				};
				mytime_zsxj();
				
				$("#myreset").bind("click",function(){
					$("#reset").trigger("click");
					mytime_zsxj();
				});
				
        $("#zsxjform").validate({
            rules: {
                dzbh: "required",
                dznr: "required"
               
            },
            messages: {              
                dzbh: "定制编号不能为空！",
                dznr: "定制内容不能为空"         
            },
            submitHandler:function(form) {
            	$.ajax({
            		url:'../../adminphp/pc_zslb.php',
            		type:'post',
            		dataType:'json',
            		data:$("#zsxjform").serialize(),
            		success:function(data){            			
            			if (data.result=='success') {
            				$('#myModal').modal();
            				$("#myreset").trigger("click");
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
      
        
		
	});
	
</script>


</body>
</html>

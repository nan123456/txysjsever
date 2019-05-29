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
  	 <!--file upload-->
  <link rel="stylesheet" type="text/css" href="../css/bootstrap-fileupload.min.css" />    
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
  	.my80{
  		 width: 80%;
  	}  	
  	.divbor{
  		border:1px solid rgb(204, 204, 204);
  		height: auto;
  		min-height: 50px;
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
                <li><a href="jfgl.php"><i class="fa fa-bullhorn"></i> <span>积分管理</span></a></li>                
                <li><a href="xxts.php"><i class="fa fa-bar-chart-o"></i> <span>消息推送</span></a></li>
                <li class="menu-list nav-active"><a href=""><i class="fa fa-book"></i> <span>知识</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="zsxj.php">送检知识新建</a></li>
                        <li><a href="zsgl.php">送检知识管理</a></li>
                        <li><a href="zlzsxj.php">资料知识新建</a></li>
                        <li class="active"><a href="zlzsgl.php">资料知识管理</a></li>                             
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
                        	资料知识管理
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
                        					<th class="hidden">序号</th>
                        					<th>ID</th>
                        					<th>知识类型</th>
                        					<th>子类型</th>
                        					<th>名称</th>
                        					<th>编号</th>                        					
                        					<th>查看</th>
                        					<th>删除</th>
                        					<th class="hidden">Delete</th>
                        				</tr>
                        			</thead>
                        			<tbody>
                        				<?php
                        					require("../../conn.php");
                        					$sql = "select * from pc_资料知识列表";
                        					$result = $conn->query($sql);
                        					while($row = $result->fetch_assoc()) {
                        					
                        				?>
                        				<tr class="">
                        					<td class="hidden">1</td>
                        					<td><?php echo $row["id"];?></td>
                        					<td><?php echo $row["资料知识类型"];?></td>
                        					<td><?php echo $row["资料知识子类型"];?></td>
                        					<td><?php echo $row["表格名称"];?></td>
                        					<td><?php echo $row["表格编号"];?></td>
                        					<td><a class="xxi" sjc="<?php echo $row["时间戳"];?>">详细</a></td>
                        					<td><a class="schu" sjc="<?php echo $row["时间戳"];?>">删除</a></td>
                        					<td class="hidden"><a id="<?php echo $row["时间戳"];?>" class="delete" href="javascript:;" >Delete</a></td>
                        				</tr>
                        				<?php
																	}
																
																?> 
                        			
                        			</tbody>
                        		</table>
                        		<!-- Modal -->
                            <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal1" class="modal fade">
                            	<div class="modal-dialog my80">
                            		<div class="modal-content">
                            			<div class="modal-header">
                            				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            				<h4 class="modal-title">同欣易送检后台管理系统</h4>
                            			</div>
                            			<div class="modal-body">                            				
                            				<form id="zlzsxjform" class="form-horizontal cmxform " method="post" action="../../adminphp/pc_zlzsxj.php" enctype="multipart/form-data">
                            					
                            					<div class="form-group">
                            						<label for="zslx" class="control-label col-lg-2">资料知识类型：</label>
                            						<div class="col-lg-6">
                            							<input type="text" id="zslx" name="zslx" class="form-control m-bot15" />
                            							<!--<select id="zslx" name="zslx" class="form-control m-bot15" required="required">
                                       <?php
                                       		require("../../conn.php");
                                        	$sql = "select * from pc_资料知识类型  ";
                                        	$result = $conn->query($sql);
                                        	while($row = $result->fetch_assoc()) {
                                				?>
                                					<option><?php echo $row["资料知识类型"];?></option> 
                                				<?php
                                					}
                                				?>      
                                        	</select>-->
                                       </div>
                                      </div>
                                      <div class="form-group">
                                      	<label for="zlzszlx" class="control-label col-lg-2">资料知识子类型：</label>
                                      	<div class="col-lg-6">
                                      		<input type="text" id="zlzszlx" name="zlzszlx" class="form-control m-bot15" />
                                      		<!--<select id="zlzszlx" name="zlzszlx" class="form-control m-bot15" required="required">
                                       <?php
                                        	$sql = "select * from pc_资料知识子类型   ";
                                        	$result = $conn->query($sql);
                                        	while($row = $result->fetch_assoc()) {
                                				?>
                                						<option><?php echo $row["资料知识子类型"];?></option> 
                                				<?php
                                					}
																				$conn->close();	
                                			
                                				?>      
                                       	 </select>    -->
                                   			 </div>
                                				</div>
                                				<div class="form-group">
                                					<label for="bgmc" class="control-label col-lg-2">表格名称：</label>
                                					<div class="col-lg-6">
                                						<input id="bgmc" name="bgmc" class="form-control"  size="16" type="text" value=""  required="required"/>
                                					</div>
                                				</div> 
                                				<div class="form-group">
                                					<label for="bgbh" class="control-label col-lg-2">表格编号：</label>
                                					<div class="col-lg-6">
                                						<input id="bgbh" name="bgbh" class="form-control"  size="16" type="text" value=""  required="required"/>
                                					</div>
                                				</div>  
                                <div id="divbgyl" class="form-group">
                                    <label for="bgyl" class="control-label col-lg-2">表格预览：</label>
                                    <div id="tabPho" class="col-lg-8">                                    	
                                    	<div class="col-lg-4" >
                                      	<div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">
                                           <a target="_blank"><img  src="" alt="表格预览" /></a>
                                       </div>
                                      </div>
                                    </div>                                    
                                </div>                                 			
                                	<div id="divsjcp" class="form-group hidden">
                                    <label for="" class="control-label col-lg-2">上传图片：</label>
                                    <div class="col-lg-8">
                                    	<div class="fileupload fileupload-new col-lg-4" data-provides="fileupload">
                                            <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">
                                                <img src="../images/noimage.png" alt="表格" />
                                            </div>
                                            <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; "></div>
                                            <div>
                                                   <span class="btn btn-default btn-file">
                                                   <span class="fileupload-new"><i class="fa fa-paper-clip"></i> 选择</span>
                                                   <span class="fileupload-exists"><i class="fa fa-undo"></i> 修改</span>
                                                   <input name="file[]" type="file" class="default inpFil" />
                                                   </span>
                                                <a href="#" class="btn btn-danger fileupload-exists" data-dismiss="fileupload"><i class="fa fa-trash"></i> 删除</a>
                                            </div>
                                      </div> 
                                     
                                      <div id="addimg" class="col-lg-4" >
                                      	<div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">
                                           <img  src="../images/addimage.png" alt="添加" />
                                        </div> 
                                                             
                                      </div>
                                    </div>                               
                                </div>   
                                <div id="divbut" class="form-group">                                    
                                    <div class="col-lg-offset-2 col-lg-8">                                    	
                                    	<button id="qkbut" class="btn btn-default " type="button">清空图片</button> 
                                    	<button id="cxbut" class="btn btn-default hidden" type="button">撤销清空</button> 
                                    </div>                                    
                                </div>
                                <div class="form-group">
                                    <label for="" class="control-label col-lg-2">填表说明：</label>
                                    <div class="col-lg-8">
                                    	<div id="divtbsm" class="form-control divbor" contenteditable="true"></div>
                                    	<textarea id="tbsm" name="tbsm" class="form-control hidden"  size="16" type="text" value="value"></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="" class="control-label col-lg-2">注意要点：</label>
                                    <div class="col-lg-8">
                                    	<div id="divzyyd" class="form-control divbor" contenteditable="true"></div>
                                    	<textarea id="zyyd" name="zyyd" class="form-control hidden"  size="16" type="text" value="value">></textarea>
                                    </div>
                                </div>                               
                                
                                <div class="form-group">
                                	<div class="col-lg-offset-8 col-lg-5">
                                		<button class="btn btn-default btn-info" type="submit">确定修改</button> 
                                	</div>
                                </div>                           
                            					
                            					</form>
                            			</div>
                            			
                            		</div>
                            	</div>
                            </div>
                            <!-- modal -->
                            
                            <!-- Modal -->
                            <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="delModal" class="modal fade">
                            	<div class="modal-dialog">
                            		<div class="modal-content">
                            			<div class="modal-header">
                            				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            				<h4 class="modal-title">同欣易送检后台管理系统</h4>
                            			</div>
                            			<div class="modal-body">
                            				<p>确定删除该记录吗！</p>                            			
                            			</div>
                            			<div class="modal-footer">
                            				<button data-dismiss="modal" class="btn btn-default" type="button">取消</button>
                            				<button id="delbut" class="btn btn-primary" type="button">确定</button>               				
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
<!--file upload-->
<script type="text/javascript" src="../js/bootstrap-fileupload.min.js"></script>

<!--data table-->
<script type="text/javascript" src="../js/data-tables/jquery.dataTables.js"></script>
<script type="text/javascript" src="../js/data-tables/DT_bootstrap.js"></script>
<!--script for editable table-->
<script src="../js/editable-table.js"></script>

<!--pickers initialization-->
<script src="../js/pickers-init.js"></script>

<script type="text/javascript" src="../js/jquery.validate.min.js"></script>

<script type="text/javascript">
	jQuery(document).ready(function() {
		EditableTable.init();		
	});
	$().ready(function() {		
		//$('#myModal1').modal();
		
		//图片预览两个按钮事件监听
		$("#divbut").live("click",function(event){
			var targetId=event.target.id;
			switch(targetId){
				case "qkbut":		//清空按钮
					$("#divbgyl").addClass("hidden");
      		$("#divsjcp").removeClass("hidden");
      		
      		$("#qkbut").addClass("hidden");
      		$("#cxbut").removeClass("hidden");
      		
      		//所有file表单必填属性
      		$(":file").attr("required","required");
					break;
			case "cxbut":		//撤销按钮
					$("#divbgyl").removeClass("hidden");
      		$("#divsjcp").addClass("hidden");
      		
      		$("#qkbut").removeClass("hidden");
      		$("#cxbut").addClass("hidden");
      		
      		//所有file表单移除必填属性，否则无法提交
      		$(":file").removeAttr("required");			
					break;
				}
			});
			//记录删除事件监听
			deletesjc="";
			$(".schu").live("click",function(){				
        $('#delModal').modal();
        var $sjc=$(this).attr("sjc");
        deletesjc=$sjc;       	
      });
      $("#delbut").live("click",function(){				
        $('#delModal').modal();        
        $.ajax({
        	url:'../../adminphp/pc_zlzslb.php',
        	type:'post',
        	dataType:'json',
        	data:{
        		sqlflag:"delete",
        		sjc:deletesjc
        	},
        	success:function(data){
        		if (data.result=='success') {
        			window.location.reload();
            }
         },
         error:function(xhr,type,errorThrown){
         	alert('ajax错误'+type);
         }
        });
       
      });
      
      //创建表格图片预览
      var creTablePho=function (str) {
      	console.log(str);
      	if (str){
      		var ind=str.indexOf(",");
      	if (ind>0) {
      		var spl=str.split(",");
      		var cout=spl.length;
      		var addpPhoHtml="";
      		for (var i=0;i<cout;i++) {
      			addpPhoHtml=addpPhoHtml+'<div class="col-lg-4" ><div class="fileupload-new thumbnail" style="width: 200px; height: 150px;"><a href="../../pc_upload/'+spl[i]+' " target="_blank"><img src="../../pc_upload/'+spl[i]+'" alt="表格预览" /></a></div></div>';
      		}
      	} else{
      		addpPhoHtml='<div class="col-lg-4" ><div class="fileupload-new thumbnail" style="width: 200px; height: 150px;"><a href="../../pc_upload/'+str+' " target="_blank"><img src="../../pc_upload/'+str+'" alt="表格预览" /></a></div></div>';
      	}
      	
      	}
      	
      	$("#tabPho").html(addpPhoHtml);
      }
      
      //详细事件监听      
      $(".xxi").live("click",function(){
      	$('#myModal1').modal();
       	var sjc=$(this).attr("sjc");
//     	alert(sjc);
       	$.ajax({
       		url:'../../adminphp/pc_zlzslb.php',
       		type:'post',
       		dataType:'json',
       		data:{
       			sqlflag:"select",
       			sjc:sjc
       		},
       		success:function(data){     
//     			console.log(data);  			
//						alert(data[7]);
       			var length=data.length;   
//     			alert(length);		
//     			for (var i=0;i<length-1;i++) {       				
//     				//$("#modSjc").val(data[i].时间戳);
       				$("#zslx").val(data[2]);
       				$("#zlzszlx").val(data[3]);
       				$("#bgmc").val(data[4]);
       				$("#bgbh").val(data[5]);
       				var $sctp=data[6];
       				var $tbsm=data[7];
       				var $zyyd=data[8];
       				creTablePho($sctp);
//     				document.getElementById("tbsm").innerHTML =data[7];
							console.log($sctp);
       				$("#divtbsm").html($tbsm);
       				$("#divzyyd").html($zyyd);
//     			}       			
       		},
       		error:function(xhr,type,errorThrown){
       			alert('ajax错误'+type+'---'+errorThrown);
       		}
       	});
      });
      
      //添加图片附件选择器
        $("#addimg").live("click",function(){
        	//判断前一个图片选择器是否为空，为空则禁止添加
        	var prevInpFile=$(this).prev().find(".inpFil");
        	var inpFilVal=prevInpFile.val()
        	if (inpFilVal.toLocaleString()!="") {
        		var html='<div class="fileupload fileupload-new col-lg-4" data-provides="fileupload"><div class="fileupload-new thumbnail" style="width: 200px; height: 150px;"><img src="../images/noimage.png" alt="表格" /></div><div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; "></div><div><span class="btn btn-default btn-file"><span class="fileupload-new"><i class="fa fa-paper-clip"></i> 选择</span><span class="fileupload-exists"><i class="fa fa-undo"></i> 修改</span><input name="file[]" type="file" class="default inpFil" required="required"/></span><a id="delimg" href="#" class="btn btn-danger fileupload-exists" data-dismiss="fileupload"><i class="fa fa-trash"></i> 删除</a></div></div> ';
        		$(this).before(html);
        	}else{
        		alert("前一个图片选择器是空，请添加");
        	}
        
        });
        
        //表单提交事件监听
        $("form").on("submit",function(){
        	var $tb=$("#divtbsm").html();
        	var $zy=$("#divzyyd").html();
        	$("#tbsm").val($tb);
        	$("#zyyd").val($zy);
        });
   
		
	});

</script>


</body>
</html>

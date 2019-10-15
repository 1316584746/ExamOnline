<%@page  contentType="text/html; charset=utf-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>功能管理-网上书店</title>
<meta charset="utf-8">
<!--全局CSS-->

<link rel="stylesheet" type="text/css" href="/static/css/admin.css">
		<link rel="stylesheet" type="text/css" href="/static/css/pintuer.css">
		<script src="/static/js/jquery.js"></script>
		<script src="/static/js/pintuer.js"></script>



</head>
<body>
    <!-- 页面顶部导航条 -->
	<div class="row panel titlePanel">
		<div class="col-md-12">
			<div class="col-md-3">
				<h3>
					<i class="fa fa-dashboard"></i> 
				</h3>
			</div>
			<div class="col-md-6">
				<div style="text-align: center;"></div>
			</div>
		
		</div>
	</div>
    <!-- 页面内容体 -->
   <div class="panel admin-panel">
  <div class="panel-head"><strong class="icon-reorder"> 修改功能</strong></div>
  	<div class="panel admin-panel margin-top" id="add">
			<!--<div class="panel-head"><strong><span class="icon-pencil-square-o"></span> 操作成功</strong></div>-->
			<div class="body-content">
				<form method="post" class="form-x" action="">
					<table class="table table-hover text-left">
						<div class="panel-body">
			         
		              <div class="form-group col-md-6 form-inline" >
		                  <label class="control-label-required">名称</label>
		                  <input class="form-control" type="text" placeholder="请输入功能的名称">
		                </div>
		                <div class="form-group col-md-6 form-inline" >
		                  <label class="control-label-required">URI</label>
		                  <input class="form-control" type="text" placeholder="请输入功能的URI">
		                </div>
		                <div class="form-group col-md-6 form-inline" >
		                  <label class="control-label-norequired">说明</label>
		                  <textarea class="form-control" rows="2" cols="40" placeholder="请输入功能的说明"></textarea>
		                </div>
			    </div>
					</table>	

			</form>
		</div>
		<div class="field">
			<a href="Functionlist.html"><button class="button bg-main icon-check-square-o" type="submit"> 返回</button></a>
			<a href=""><button class="button bg-main icon-check-square-o" type="submit"> 提交</button></a>
		</div>
		

	</div></div>
</body>
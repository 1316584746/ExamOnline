<%@page  contentType="text/html; charset=utf-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="zh-cn">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<meta name="renderer" content="webkit">
		<title></title>
		<link rel="stylesheet" type="text/css" href="/static/css/admin.css">
		<link rel="stylesheet" type="text/css" href="/static/css/pintuer.css">
		<script src="/static/js/jquery.js"></script>
		<script src="/static/js/pintuer.js"></script>
	</head>

	<body>
		<div class="panel admin-panel">
			<div class="panel-head"><strong class="icon-reorder"> 行政班管理</strong></div>
			<div class="panel-head"><strong><span class="icon-pencil-square-o"></span> 功能基本信息</strong></div>
			<table class="table table-hover text-left">
				<tr>
					<th width="33%">名称</th>
					<th width="33%">URI</th>
					<th width="33%">说明</th>

				</tr>

				<tr>
					<td>行政班管理功能</td>
					<td>functions/PoliticalClassDetail.html</td>
					<td>对行政班信息进行操作</td>
				</tr>

			</table>
		</div>

		<div class="panel admin-panel margin-top" id="add">
			<div class="panel-head"><strong><span class="icon-pencil-square-o"></span> 能运用此功能的角色</strong></div>
			<div class="body-content">
				<form method="post" class="form-x" action="">
					<table class="table table-hover text-left">
						<tr>
							<th width="33%">名称</th>
							<th width="33%">职责</th>
						</tr>
						<tr>
							<td>超级管理员</td>
							<td>可对所有信息进行查看和更新</td>
						</tr>
						<tr>
							<td>系部主任</td>
							<td>可对所有信息进行查看</td>
						</tr>

					</table>


			</form>
		</div>
		<a href="../Functionlist.html"><button class="button bg-main icon-check-square-o" type="submit"> 返回</button></a>
		</div>
	</body>

</html>
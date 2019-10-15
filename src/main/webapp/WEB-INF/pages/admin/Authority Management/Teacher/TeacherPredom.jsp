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
		<div class="panel admin-panel margin-top" id="#add">
			<div class="panel-head"><strong><span class="icon-pencil-square-o"></span> 职位基本信息</strong></div>
			<div class="body-content">
				<form method="post" class="form-x" action="">
					<table class="table table-hover text-left">
						<tr>
							<th width="33%">名称</th>
							<th width="33%">职责</th>
						</tr>
						<tr>
							<td>教师</td>
							<td>可对所有信息进行查看和更新</td>
						</tr>
					</table>	
			</div>

		<div class="panel admin-panel margin-top" id="add">
			<div class="panel-head"><strong><span class="icon-pencil-square-o"></span> 配置能使用的功能</strong></div>
			<div class="body-content">
				<form method="post" class="form-x" action="">
					<table class="table table-hover text-left">
						<thead>
							<tr>
								<th>选择</th>
								<th>名称</th>
								<th>URI</th>
								<th>说明</th>
							</tr>
						</thead>

						<tbody>
							<tr>
								<td><input type="checkbox" value=""></td>
								<td>课程管理</td>
								<td>functions/CourseDetail.html</td>
								<td>对课程信息进行操作</td>
							</tr>
							<tr>
								<td><input type="checkbox" value=""></td>
								<td>选课管理</td>
								<td>functions/SCourseDetail.html</td>
								<td>对选课信息进行操作</td>
							</tr>
							<tr>
								<td><input type="checkbox" value=""></td>
								<td>学生管理</td>
								<td>functions/StudentDetail.html</td>
								<td>对学生信息进行操作</td>
							</tr>
							
						</tbody>
					</table>
			</div>

		</div>
		</form>
		</div>
		</div>
		<div class="field">
			
			<a href="../RolesList.jsp"><button class="button bg-main icon-check-square-o" type="submit"> 返回</button></a>

			<button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
		</div>
	</body>

</html>
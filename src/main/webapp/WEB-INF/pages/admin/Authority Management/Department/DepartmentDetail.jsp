<%@page  contentType="text/html; charset=utf-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="zh-cn">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<meta name="renderer" content="webkit">
		<title>职位管理</title>
		<link rel="stylesheet" type="text/css" href="/static/css/admin.css">
		<link rel="stylesheet" type="text/css" href="/static/css/pintuer.css">
		<script src="/static/css/jquery.js"></script>
		<script src="/static/css/pintuer.js"></script>
	</head>

	<body>
		<div class="panel admin-panel">
			<div class="panel-head"><strong class="icon-reorder">职位管理</strong></div>

			<table class="table table-hover text-left">
				<tr>
					<th width="33%">名称</th>
					<!--<th width="33%">URI</th>-->
					<th width="33%">说明</th>

				</tr>

				<tr>
					<td>系部主任权限</td>
					<!--<td>/Admin/Functions/BeginDetail.html</td>-->
					<td>对开课信息进行操作</td>
				</tr>

			</table>
		</div>

		<div class="panel admin-panel margin-top" id="add">
			<div class="panel-head"><strong><span class="icon-pencil-square-o"></span>人员</strong></div>
			<div class="body-content">
				<form method="post" class="form-x" action="">
					<table class="table table-hover text-left">
						<tr>
							<th width="20%">头像</th>
							<th width="20%">姓名</th>
							<th width="20%">性别</th>
							<th width="20%">身份证号</th>
							<th width="20%">联系电话</th>
						</tr>
						<tr>
							<td>
								<a href="#" rel="rs-dialog" data-target="bigPicModal" title="点击看大图">
								<img src="/bookshop/img/portrait.jpg" class="img-thumbnail" alt="头像" width="50" height="50">
								</a>
							</td>
							<td>张小华</td>
							<td>男</td>
							<td>610404197310101234</td>
							<td>13668270601</td>
						</tr>
					</table>
			</form>
		</div>
		<div class="panel admin-panel margin-top" id="add">
			<div class="panel-head"><strong><span class="icon-pencil-square-o"></span>能使用的功能</strong></div>
			<div class="body-content">
				<form method="post" class="form-x" action="">
					<table class="table table-hover text-left">
						<tr>
							<th width="33%">名称</th>
							<th width="33%">URI</th>
							<th width="33%">说明</th>
							
						</tr>
						<tr>
							<td>系部管理</td>
							<td>function/Department.html</td>
							<td>对系部信息进行操作</td>
							
						</tr>
						<tr>
							<td>教师管理</td>
							<td>function/TeacherDetail.html</td>
							<td>对教师信息进行操作</td>
							
						</tr>
						<tr>
							<td>学生管理</td>
							<td>function/StudentDetail.html</td>
							<td>对学生信息进行操作</td>
							
						</tr>
						<tr>
							<td>课程管理</td>
							<td>function/CourseDetail.html</td>
							<td>对课程信息进行操作</td>
							
						</tr>
						<tr>
							<td>专业管理</td>
							<td>function/MajorDetail.html</td>
							<td>对专业信息进行操作</td>
							
						</tr>
						<tr>
							<td>行政班管理</td>
							<td>function/PoliticalDetail.html</td>
							<td>对行政班信息进行操作</td>
							
						</tr>
						<tr>
							<td>选课管理</td>
							<td>function/SCourseDetail.html</td>
							<td>对选课信息进行操作</td>
							
						</tr>
						<tr>
							<td>学年管理</td>
							<td>function/YearsDetail.html</td>
							<td>对学年信息进行操作</td>
							
						</tr>
					</table>	

			</form>
		</div>
		<div class="field">
			<a href="../RolesList.jsp"><button class="button bg-main icon-check-square-o" type="submit"> 返回</button></a>
		</div>
		</div>
		</div>
	</body>
</html>
<%@page  contentType="text/html; charset=utf-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">

	<head>，<br />
		<meta charset="utf-8">
		<!--全局CSS-->
	<link rel="stylesheet" type="text/css" href="/static/css/admin.css">
	<link rel="stylesheet" type="text/css" href="/static/css/pintuer.css">
<script src="/static/js/jquery.js"></script>
<script src="/static/js/pintuer.js"></script>

		<!--私有CSS-->
		<link rel="stylesheet" href="/bookshop/plugins/myModal/myModal.css">
	</head>

	<body>
		<!-- 页面顶部导航条 -->
		<div class="row panel titlePanel">
			<div class="col-md-12">
				<div class="col-md-3">
					<h3>
				<div class="panel-head"><strong class="icon-reorder"> 职位管理</strong></div>
				</h3>
				</div>
				<div class="col-md-6">
					<div style="text-align: center;"></div>
				</div>
			</div>
		</div>
		<!-- 页面内容体 -->

		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default" style="margin-bottom: 0px;">
					<div id="collapseFunctionQuery" class="panel-collapse collapse"></div>
				</div>
			</div>

			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="row col-md-12">
							<div class="padding border-bottom">
								<a href="${pageContext.request.contextPath}/admin/Authority Management/Root/root_add" rel="rs-dialog" data-target="updateModal">
									<button type="button" class="button border-yellow" onclick="window.location.href=''">
										<span class="icon-plus-square-o"></span> 添加职位</button></a>
							</div>
						</div>
					</div>
					<div class="panel-body">

						<table width="539" class="table table-hover table-bordered table-striped" id="dataTable">
							<thead>
								<tr>
									<th width="102">名称</th>
									<th width="147">职责</th>
									<th width="159">操作</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td height="48">超级管理员</td>
									<td>可对所有信息进行查看和更新</td>
									<td>
										<a href="${pageContext.request.contextPath}/admin/Authority Management/Root/RootDetail"><button class="button alert-blue" type="button">详情</button></a>
										<a href="${pageContext.request.contextPath}/admin/RolesManage/modify"><button class="button alert-green" type="button">修改</button></a>
										<a href="${pageContext.request.contextPath}/admin/Authority Management/Root/RootPredom"><button class="button alert-yellow" type="button">配置权限</button></a>
										
									</td>
								</tr>

								<tr>
									<td height="48">系部主任</td>
									<td>可对所有信息进行查看</td>
									<td>
										<a href="${pageContext.request.contextPath}/admin/Authority Management/Department/DepartmentDetail"><button class="button alert-blue" type="button">详情</button></a>
										<a href="${pageContext.request.contextPath}/admin/RolesManage/modify"><button class="button alert-green" type="button">修改</button></a>
										<a href="${pageContext.request.contextPath}/admin/Authority Management/Department/DepartmentPredom"><button class="button alert-yellow" type="button">配置权限</button></a>
										
									</td>
								</tr>
								<tr>
									<td height="48">教师</td>
									<td>可对所有信息进行查看</td>
									<td>
										<a href="${pageContext.request.contextPath}/admin/Authority Management/Teacher/TeacherDetail"><button class="button alert-blue" type="button">详情</button></a>
										<a href="${pageContext.request.contextPath}/admin/RolesManage/modify"><button class="button alert-green" type="button">修改</button></a>
										<a href="${pageContext.request.contextPath}/admin/Authority Management/Teacher/TeacherPredom"><button class="button alert-yellow" type="button">配置权限</button></a>
										
									</td>
								</tr>
								<tr>
									<td height="48">学生</td>
									<td>可对学生信息进行查看</td>
									<td>
										<a href="${pageContext.request.contextPath}/admin/Authority Management/Student/StudentDetail"><button class="button alert-blue" type="button">详情</button></a>
										<a href="${pageContext.request.contextPath}/admin/RolesManage/modify"><button class="button alert-green" type="button">修改</button></a>
										<a href="${pageContext.request.contextPath}/admin/Authority Management/Student/StudentPredom"><button class="button alert-yellow" type="button">配置权限</button></a>
										
									</td>
								</tr>
							</tbody>
						</table>

					</div>

				</div>
			</div>
		</div>

		</div>


				</div>
			</form>
		</div>
	</body>

</html>
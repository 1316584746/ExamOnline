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


	</head>

	<body>
		<!-- 页面顶部导航条 -->
		<div class="row panel titlePanel">
			<div class="col-md-12">
				<div class="col-md-3">
					<h3>
				<div class="panel-head"><strong class="icon-reorder"> 功能管理</strong></div>
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
								<a href="#" rel="rs-dialog" data-target="updateModal"><button type="button" class="button border-yellow" onclick="window.location.href='#add'"><span class="icon-plus-square-o"></span> 添加功能</button></a>
							</div>
						</div>
					</div>
					<div class="panel-body">

						<table width="539" class="table table-hover table-bordered table-striped" id="dataTable">
							<thead>
								<tr>
									<th width="102">名称</th>
									<th width="147">URI</th>
									<th width="111">说明</th>
									<th width="159">操作</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td height="48">系部管理功能</td>
									<td>functions/DepartmentDetail.html</td>
									<td>拥有此功能可以对系部信息进行操作</td>
									<td>
										<a href="${pageContext.request.contextPath}/admin/FunctionsManage/Department/DepartmentDetail"><button class="button alert-blue" type="button">详情</button></a>
										<a href="${pageContext.request.contextPath}/admin/FunctionsManage/modify"><button class="button alert-green" type="button">修改</button></a>
										<a href="${pageContext.request.contextPath}/admin/FunctionsManage/Department/DepartmentPredom"><button class="button alert-yellow" type="button">配置权限</button></a>
										<a href="${pageContext.request.contextPath}/admin/FunctionsManage/success"><button class="button alert-red" type="button">禁用</button></a>
									</td>
								</tr>

								<tr>
									<td height="48">教师管理功能</td>
									<td>functions/TeacherDetail.html</td>
									<td>拥有此功能可以对教师信息进行操作</td>
									<td>
										<a href="${pageContext.request.contextPath}/admin/FunctionsManage/Teacher/TeacherDetail"><button class="button alert-blue" type="button">详情</button></a>
										<a href="${pageContext.request.contextPath}/admin/FunctionsManage/modify"><button class="button alert-green" type="button">修改</button></a>
										<a href="${pageContext.request.contextPath}/admin/FunctionsManage/Teacher/TeacherPredom"><button class="button alert-yellow" type="button">配置权限</button></a>
										<a href="${pageContext.request.contextPath}/admin/FunctionsManage/success"><button class="button alert-red" type="button">禁用</button></a>
									</td>
								</tr>
								<tr>
									<td height="48">学生管理功能</td>
									<td>/functions/StudentDetail.html</td>
									<td>拥有此功能可以对学生信息进行操作</td>
									<td>
										<a href="${pageContext.request.contextPath}/admin/FunctionsManage/Student/StudentDetail"><button class="button alert-blue" type="button">详情</button></a>
										<a href="${pageContext.request.contextPath}/admin/FunctionsManage/modify"><button class="button alert-green" type="button">修改</button></a>
										<a href="${pageContext.request.contextPath}/admin/FunctionsManage/Student/StudentPredom"><button class="button alert-yellow" type="button">配置权限</button></a>
										<a href="${pageContext.request.contextPath}/admin/FunctionsManage/success"><button class="button alert-red" type="button">禁用</button></a>
									</td>
								</tr>
								<tr>
									<td height="48">课程管理功能</td>
									<td>/functions/CourseDetail.html</td>
									<td>拥有此功能可以对课程信息进行操作</td>
									<td>
										<a href="${pageContext.request.contextPath}/admin/FunctionsManage/Course/CourseDetail"><button class="button alert-blue" type="button">详情</button></a>
										<a href="${pageContext.request.contextPath}/admin/FunctionsManage/modify"><button class="button alert-green" type="button">修改</button></a>
										<a href="${pageContext.request.contextPath}/admin/FunctionsManage/Course/CoursePredom"><button class="button alert-yellow" type="button">配置权限</button></a>
										<a href="${pageContext.request.contextPath}/admin/FunctionsManage/success"><button class="button alert-red" type="button">禁用</button></a>
									</td>
								</tr>
								<tr>
									<td height="48">专业管理功能</td>
									<td>/functions/MajorDetail.html</td>
									<td>拥有此功能可以对专业信息进行操作</td>
									<td>
										<a href="${pageContext.request.contextPath}/admin/FunctionsManage/Major/MajorDetail"><button class="button alert-blue" type="button">详情</button></a>
										<a href="${pageContext.request.contextPath}/admin/FunctionsManage/modify"><button class="button alert-green" type="button">修改</button></a>
										<a href="${pageContext.request.contextPath}/admin/FunctionsManage/Major/MajorPredom"><button class="button alert-yellow" type="button">配置权限</button></a>
										<a href="${pageContext.request.contextPath}/admin/FunctionsManage/success"><button class="button alert-red" type="button">禁用</button></a>
									</td>
								</tr>
								<tr>
									<td height="48">行政班管理功能</td>
									<td>/functions/PoliticalClassDetail.html</td>
									<td>拥有此功能可以对行政班信息进行操作</td>
									<td>
										<a href="${pageContext.request.contextPath}/admin/FunctionsManage/PoliticalClass/PoliticalClassDetail"><button class="button alert-blue" type="button">详情</button></a>
										<a href="${pageContext.request.contextPath}/admin/FunctionsManage/modify"><button class="button alert-green" type="button">修改</button></a>
										<a href="${pageContext.request.contextPath}/admin/FunctionsManage/PoliticalClass/PoliticalClassPredom"><button class="button alert-yellow" type="button">配置权限</button></a>
										<a href="${pageContext.request.contextPath}/admin/FunctionsManage/success"><button class="button alert-red" type="button">禁用</button></a>
									</td>
								</tr>
								<tr>
									<td height="48">开课管理功能</td>
									<td>functions/BeginDetail.html</td>
									<td>拥有此功能可以对开课信息进行操作</td>
									<td>
										<a href="${pageContext.request.contextPath}/admin/FunctionsManage/Begin/BeginDetail"><button class="button alert-blue" type="button">详情</button></a>
										<a href="${pageContext.request.contextPath}/admin/FunctionsManage/modify"><button class="button alert-green" type="button">修改</button></a>
										<a href="${pageContext.request.contextPath}/admin/FunctionsManage/Begin/BeginPredom"><button class="button alert-yellow" type="button">配置权限</button></a>
										<a href="${pageContext.request.contextPath}/admin/FunctionsManage/success"><button class="button alert-red" type="button">禁用</button></a>
									</td>
								</tr>
								<tr>
									<td height="48">选课管理功能</td>
									<td>functions/SCourseDetail.html</td>
									<td>拥有此功能可以对选课信息进行操作</td>
									<td>
										<a href="${pageContext.request.contextPath}/admin/FunctionsManage/SCourse/SCourseDetail"><button class="button alert-blue" type="button">详情</button></a>
										<a href="${pageContext.request.contextPath}/admin/FunctionsManage/modify"><button class="button alert-green" type="button">修改</button></a>
										<a href="${pageContext.request.contextPath}/admin/FunctionsManage/SCourse/SCoursePredom"><button class="button alert-yellow" type="button">配置权限</button></a>
										<a href="${pageContext.request.contextPath}/admin/FunctionsManage/success"><button class="button alert-red" type="button">禁用</button></a>
									</td>
								</tr>
								<tr>
									<td height="48">学年管理功能</td>
									<td>functions/YearDetail.html</td>
									<td>拥有此功能可以对学年信息进行操作</td>
									<td>
										<a href="${pageContext.request.contextPath}/admin/FunctionsManage/Years/YearsDetail"><button class="button alert-blue" type="button">详情</button></a>
										<a href="${pageContext.request.contextPath}/admin/FunctionsManage/modify"><button class="button alert-green" type="button">修改</button></a>
										<a href="${pageContext.request.contextPath}/admin/FunctionsManage/Years/YearsPredom"><button class="button alert-yellow" type="button">配置权限</button></a>
										<a href="${pageContext.request.contextPath}/admin/FunctionsManage/success"><button class="button alert-red" type="button">禁用</button></a>
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

		<!--全局JS-->
		<script src="/bookshop/js/admin/share/jquery-3.2.1.min.js"></script>
		<script src="/bookshop/js/admin/share/bootstrap.min.js"></script>
		<script src="/bookshop/js/admin/share/share.js"></script>
		<!--私有JS-->
		<script src="/bookshop/plugins/myModal/myModal.js"></script>

		<script type="text/javascript">
		</script>
	</body>

</html>
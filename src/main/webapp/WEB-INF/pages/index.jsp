<%@page  contentType="text/html; charset=utf-8" language="java" isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>在线考试系统管理后台</title>
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />

    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="/static/css/font.css">
	<link rel="stylesheet" href="/static/css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="/static/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="/static/js/xadmin.js"></script>

</head>
<body>
    <!-- 顶部开始 -->
    <div class="container">
        <div class="logo"><a href="./index.html">在线考试系统管理后台</a></div>
        <div class="left_open">
            <i title="展开左侧栏" class="iconfont">&#xe699;</i>
        </div>
        <ul class="layui-nav left fast-add" lay-filter="">
          <li class="layui-nav-item">
          </li>
        </ul>
        <ul class="layui-nav right" lay-filter="">
          <li class="layui-nav-item">
            <a href="javascript:;">${login.stu_name}</a>
            <dl class="layui-nav-child"> <!-- 二级菜单 -->
              <dd><a onclick="x_admin_show('个人信息','http://www.baidu.com')">个人信息</a></dd>
              <dd><a onclick="x_admin_show('切换帐号','http://www.baidu.com')">切换帐号</a></dd>
              <dd><a href="javascript:logout();">退出</a></dd>

            </dl>
          </li>
        </ul>
        
    </div>
    <!-- 顶部结束 -->
    <!-- 中部开始 -->
     <!-- 左侧菜单开始 -->
    <div class="left-nav">
      <div id="side-nav">
        <ul id="nav">
            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe6b8;</i>
                    <cite>信息管理管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="${pageContext.request.contextPath}/admin/InformationManagement/department">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>系部管理</cite>
                            
                        </a>
                    </li >
                    <li>
                        <a _href="${pageContext.request.contextPath}/admin/InformationManagement/profession">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>专业管理</cite>
                            
                        </a>
                    </li>
                    <li>
                        <a _href="${pageContext.request.contextPath}/admin/InformationManagement/course">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>课程管理</cite>
                        </a>
                    </li>
                    <li>
                        <a _href="${pageContext.request.contextPath}/admin/InformationManagement/Ocourse">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>开课管理</cite>
                        </a>
                    </li>
                    <li>
                        <a _href="${pageContext.request.contextPath}/admin/InformationManagement/Scourse">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>选课管理</cite>
                        </a>
                    </li>
                    <li>
                        <a _href="${pageContext.request.contextPath}/admin/InformationManagement/teacher">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>教师管理</cite>
                        </a>
                    </li>
                    <li>
                        <a _href="${pageContext.request.contextPath}/admin/InformationManagement/student">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>学生管理</cite>
                        </a>
                    </li>
                    <li>
                        <a _href="${pageContext.request.contextPath}/admin/InformationManagement/Eclass">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>行政班管理</cite>
                        </a>
                    </li>
                    <li>
                        <a _href="${pageContext.request.contextPath}/admin/InformationManagement/Tclass">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>教学班管理</cite>
                        </a>
                    </li>
                    <li>
                        <a _href="${pageContext.request.contextPath}/admin/InformationManagement/semester">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>学期学年管理</cite>
                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe723;</i>
                    <cite>权限管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="${pageContext.request.contextPath}/admin/Authority Management/RolesList">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>职位管理</cite>
                        </a>
                    </li >
                </ul>
                <ul class="sub-menu">
                    <li>
                        <a _href="${pageContext.request.contextPath}/admin/Authority Management/Functionlist">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>功能管理</cite>
                        </a>
                    </li >
                    <li>

                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe723;</i>
                    <cite>题库管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="${pageContext.request.contextPath}/admin/QuestionBankManage/unit">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>单元管理</cite>
                        </a>
                    </li >
                    <li>
                        <a _href="${pageContext.request.contextPath}/admin/QuestionBankManage/QuestionTypes">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>题型管理</cite>
                        </a>
                    </li >
                    <li>
                        <a _href="${pageContext.request.contextPath}/admin/QuestionBankManage/test">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>试题管理</cite>
                        </a>
                    </li>
                </ul>
            </li>

            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe723;</i>
                    <cite>考试管理系统</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="${pageContext.request.contextPath}/exam">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>考试管理</cite>
                        </a>
                    </li >
                    <li>
                        <a _href="${pageContext.request.contextPath}/randomtest">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>随机组卷</cite>
                        </a>
                    </li >

                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe726;</i>
                    <cite>在线考试管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="${pageContext.request.contextPath}">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>在线考试功能+阅卷</cite>
                        </a>
                    </li >
                    <li>
                        <a _href="${pageContext.request.contextPath}">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>学生成绩查询</cite>
                        </a>
                    </li >
                    <li>
                        <a _href="${pageContext.request.contextPath}">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>教学班成绩汇总</cite>
                        </a>
                    </li >

                </ul>
            </li>


        </ul>
      </div>
    </div>
    <!-- <div class="x-slide_left"></div> -->
    <!-- 左侧菜单结束 -->
    <!-- 右侧主体开始 -->
    <div class="page-content">
        <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
          <ul class="layui-tab-title">
            <li class="home"><i class="layui-icon">&#xe68e;</i>我的桌面</li>
          </ul>
          <div class="layui-tab-content">
            <div class="layui-tab-item layui-show">
                <iframe src='${pageContext.request.contextPath}/welcome' frameborder="0" scrolling="yes" class="x-iframe"></iframe>
            </div>
          </div>
        </div>
    </div>
    <div class="page-content-bg"></div>
    <!-- 右侧主体结束 -->
    <!-- 中部结束 -->
    <!-- 底部开始 -->
    <div class="footer">
        <div class="copyright">Copyright ©2017 x-admin 2.3 All Rights Reserved  更多模板：<a href="http://www.mycodes.net/" target="_blank">源码之家</a></div>  
    </div>
    <!-- 底部结束 -->

</body>

<script>
    /**
     *
     * 退出登录的询问
     */
   function logout() {
       layer.confirm('确定退出吗?',function (index) {
           //访问退出登录的方法
           location.href="${pageContext.request.contextPath}/logout"
       })
   } 
</script>
</html>
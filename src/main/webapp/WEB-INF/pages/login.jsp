<%@page  contentType="text/html; charset=utf-8"  language="java"  isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>成都东软学院在线考试系统管理后台</title>
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />

    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="static/css/font.css">
	<link rel="stylesheet" href="static/css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="static/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="static/js/xadmin.js"></script>

</head>
<body class="login-bg">
    
    <div class="login layui-anim layui-anim-up">
        <div class="message">成都东软学院在线考试系统-管理登录</div>
        <div id="darkbannerwrap"></div>
        
        <form method="post" class="layui-form" >
            <input name="stu_name" placeholder="用户名"  type="text" lay-verify="required" class="layui-input"  >
            <hr class="hr15">
            <input name="password" lay-verify="required" placeholder="密码"  type="password" class="layui-input" >
            <hr class="hr15">
            <input value="登录" lay-submit lay-filter="login" style="width:100%;" type="submit">
            <hr class="hr20" >
        </form>
    </div>

    <script>
        $(function  () {
            layui.use('form', function(){
              var form = layui.form;

              //监听提交
              form.on('submit(login)', function(data){
                //data.field是表单提交的数据;
                  //通过ajax将数据提交到后端;
                  $.ajax({
                      type:"post",//提交的方法
                      url:"${pageContext.request.contextPath}/login/action",//提交到后端接受数据的地址
                      data:data.field,//提交到后端的数据
                      dataType:"json",//后端返回的数据类型
                      success:function (data) {
                          //回调函数,data是后端返回的json数据
                         console.log(data);
                          layer.msg(data.msg,function(){
                         if(data.code==200){
                             location.href='${pageContext.request.contextPath}/index';
                         }
                          });
                      }
                  });


                return false;
              });
            });
        })

        
    </script>

    
    <!-- 底部结束 -->

</body>
</html>
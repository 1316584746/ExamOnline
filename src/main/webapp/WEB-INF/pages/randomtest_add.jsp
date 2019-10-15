<%@page  contentType="text/html; charset=utf-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  
  <head>
    <meta charset="UTF-8">
    <title>随机组卷添加页面</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="static/css/font.css">
    <link rel="stylesheet" href="static/css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="static/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="static/js/xadmin.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
      <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
      <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  
  <body>
    <div class="x-body layui-anim layui-anim-up">
        <form class="layui-form">
            <div class="layui-form-item">
                <label  class="layui-form-label">
                    <span class="x-red">*</span>试题科目
                </label>
                <div class="layui-input-inline">
                    <input type="text"  name="test_sub"lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>

          <div class="layui-form-item">
              <label  class="layui-form-label">
                  <span class="x-red">*</span>出题人
              </label>
              <div class="layui-input-inline">
                  <input type="text"  name="home" lay-verify="home"
                  autocomplete="off" class="layui-input">
              </div>
          </div>
          <div class="layui-form-item">
              <label  class="layui-form-label">
                  <span class="x-red">*</span>考试时间
              </label>
              <div class="layui-input-inline">
                  <input type="text"  name="time" required=""lay-verify="time"
                  autocomplete="off" class="layui-input">
              </div>
          </div>
            <div class="layui-form-item">
                <label  class="layui-form-label">
                    <span class="x-red">*</span>试卷分数
                </label>
                <div class="layui-input-inline">
                    <input type="text"  name="score" required=""lay-verify="score"
                           autocomplete="off" class="layui-input">
                </div>
            </div>

          <div class="layui-form-item">
              <label  class="layui-form-label">
              </label>
              <button  class="layui-btn" lay-filter="add" lay-submit="">
                  组卷
              </button>
          </div>
      </form>
    </div>
    <script type="text/javascript">
        layui.use(['form','layer'], function(){
            //$ = layui.jquery;
            var form = layui.form
                ,layer = layui.layer;



          //监听提交
          form.on('submit(add)', function(data){
            console.log(data.field);
            //异步,将数据提交给java
            $.ajax({
                type:"post",
                url:"${pageContext.request.contextPath}/randomTest/action",
                data:data.field,
                dataType:"json",
                success:function (data) {
                    console.log(data);
                    layer.alert(data.msg, {icon: 6},function () {
                        if(data.code == 200){
                            // 获得frame索引
                            var index = parent.layer.getFrameIndex(window.name);
                            //关闭当前frame
                            parent.layer.close(index);
                        }
                    });
                }
            });

         /*  //发异步，把数据提交给php
            layer.alert("增加成功", {icon: 6},function () {
                // 获得frame索引
                var index = parent.layer.getFrameIndex(window.name);
                //关闭当前frame
                parent.layer.close(index);
            });*/
            return false;

          });
        });



    </script>

  </body>

</html>
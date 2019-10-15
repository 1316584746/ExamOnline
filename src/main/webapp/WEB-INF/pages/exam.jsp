<%@page  contentType="text/html; charset=utf-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>考试管理</title>
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
    <div class="x-nav">
      <span class="layui-breadcrumb">
        <a href="">首页</a>
        <a href="">考试管理系统</a>
        <a>
          <cite>考试管理</cite></a>
      </span>
      <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
    </div>
    <div class="x-body">
      <div class="layui-row">
        <form class="layui-form layui-col-md12 x-so layui-form-pane">
          <input class="layui-input" placeholder="" name="cate_name">
          <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon"></i>搜索</button>
        </form>
      </div>
      <blockquote class="layui-elem-quote">最近有新的考试公告!!大家记得查看!<i class="layui-icon x-show" status='true'>&#xe623;</i></blockquote>
      <xblock>
        <button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除</button>
        <span class="x-right" style="line-height:40px">共有数据：88 条</span>
      </xblock>
      <table class="layui-table layui-form">
        <thead>
          <tr>
            <th width="20">
              <div class="layui-unselect header layui-form-checkbox" lay-skin="primary"><i class="layui-icon">&#xe605;</i></div>
            </th>
            <th width="70">序号</th>
            <th>通知栏</th>
            <th width="50">排序</th>
            <th width="50">状态</th>
            <th width="220">操作</th>
        </thead>
        <tbody class="x-cate">
          <tr cate-id='1' fid='0' >
            <td>
              <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='2'><i class="layui-icon">&#xe605;</i></div>
            </td>
            <td>1</td>
            <td>
              <i class="layui-icon x-show" status='true'>&#xe623;</i>
              关于做好2019年下半年全国计算机等级考试报名工作的通知
              <span class="date" style="float:right">2010-04-02</span>
            </td>
            <td><input type="text" class="layui-input x-sort" name="order" value="1"></td>
            <td>
              <input type="checkbox" name="switch"  lay-text="开启|停用"  checked="" lay-skin="switch">
            </td>
            <td class="td-manage">

              <button class="layui-btn-danger layui-btn layui-btn-xs"  onclick="member_del(this,'要删除的id')" href="javascript:;" ><i class="layui-icon">&#xe640;</i>删除</button>
            </td>
          </tr>
          <tr cate-id='2' fid='1' >
            <td>
              <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='2'><i class="layui-icon">&#xe605;</i></div>
            </td>
            <td>2</td>
            <td>
              &nbsp;&nbsp;&nbsp;&nbsp;
              <i class="layui-icon x-show" status='true'>&#xe623;</i>
              关于做好2019年下半年全国计算机等级考试报名工作的通知
              <span class="date" style="float:right">2010-04-02</span>
            </td>
            <td><input type="text" class="layui-input x-sort" name="order" value="1"></td>
            <td>
              <input type="checkbox" name="switch"  lay-text="开启|停用"  checked="" lay-skin="switch">
            </td>
            <td class="td-manage">

              <button class="layui-btn-danger layui-btn layui-btn-xs"  onclick="member_del(this,'要删除的id')" href="javascript:;" ><i class="layui-icon">&#xe640;</i>删除</button>
            </td>
          </tr>
          <tr cate-id='3' fid='2' >
            <td>
              <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='2'><i class="layui-icon">&#xe605;</i></div>
            </td>
            <td>3</td>
            <td>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            </td>
            <td><input type="text" class="layui-input x-sort" name="order" value="1"></td>
            <td>
              <input type="checkbox" name="switch"  lay-text="开启|停用"  checked="" lay-skin="switch">
            </td>
            <td class="td-manage">

              <button class="layui-btn-danger layui-btn layui-btn-xs"  onclick="member_del(this,'要删除的id')" href="javascript:;" ><i class="layui-icon">&#xe640;</i>删除</button>
            </td>
          </tr>
          <tr cate-id='4' fid='2' >
            <td>
              <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='2'><i class="layui-icon">&#xe605;</i></div>
            </td>
            <td>4</td>
            <td>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              关于做好2019年下半年全国计算机等级考试报名工作的通知
              <span class="date" style="float:right">2010-04-02</span>
            </td>
            <td><input type="text" class="layui-input x-sort" name="order" value="1"></td>
            <td>
              <input type="checkbox" name="switch"  lay-text="开启|停用"  checked="" lay-skin="switch">
            </td>
            <td class="td-manage">

              <button class="layui-btn-danger layui-btn layui-btn-xs"  onclick="member_del(this,'要删除的id')" href="javascript:;" ><i class="layui-icon">&#xe640;</i>删除</button>
            </td>
          </tr>
          <tr cate-id='5' fid='0' >
            <td>
              <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='2'><i class="layui-icon">&#xe605;</i></div>
            </td>
            <td>5</td>
            <td>
              
              <i class="layui-icon x-show" status='true'>&#xe623;</i>
              关于做好2019年下半年全国计算机等级考试报名工作的通知
              <span class="date" style="float:right">2010-04-02</span>
            </td>
            <td><input type="text" class="layui-input x-sort" name="order" value="1"></td>
            <td>
              <input type="checkbox" name="switch"  lay-text="开启|停用"  checked="" lay-skin="switch">
            </td>
            <td class="td-manage">

              <button class="layui-btn-danger layui-btn layui-btn-xs"  onclick="member_del(this,'要删除的id')" href="javascript:;" ><i class="layui-icon">&#xe640;</i>删除</button>
            </td>
          </tr>
          <tr cate-id='6' fid='5' >
            <td>
              <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='2'><i class="layui-icon">&#xe605;</i></div>
            </td>
            <td>6</td>
            <td>
              &nbsp;&nbsp;&nbsp;&nbsp;

            </td>
            <td><input type="text" class="layui-input x-sort" name="order" value="1"></td>
            <td>
              <input type="checkbox" name="switch"  lay-text="开启|停用"  checked="" lay-skin="switch">
            </td>
            <td class="td-manage">

              <button class="layui-btn-danger layui-btn layui-btn-xs"  onclick="member_del(this,'要删除的id')" href="javascript:;" ><i class="layui-icon">&#xe640;</i>删除</button>
            </td>
          </tr>
          <tr cate-id='7' fid='5' >
            <td>
              <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='2'><i class="layui-icon">&#xe605;</i></div>
            </td>
            <td>7</td>
            <td>
              &nbsp;&nbsp;&nbsp;&nbsp;

            </td>
            <td><input type="text" class="layui-input x-sort" name="order" value="1"></td>
            <td>
              <input type="checkbox" name="switch"  lay-text="开启|停用"  checked="" lay-skin="switch">
            </td>
            <td class="td-manage">

              <button class="layui-btn-danger layui-btn layui-btn-xs"  onclick="member_del(this,'要删除的id')" href="javascript:;" ><i class="layui-icon">&#xe640;</i>删除</button>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
    <style type="text/css">
      
    </style>
    <script>
      layui.use(['form'], function(){
        form = layui.form;
        
      });

      

      /*用户-删除*/
      function member_del(obj,id){
          layer.confirm('确认要删除吗？',function(index){
              //发异步删除数据
              $(obj).parents("tr").remove();
              layer.msg('已删除!',{icon:1,time:1000});
          });
      }



      function delAll (argument) {

        var data = tableCheck.getData();
  
        layer.confirm('确认要删除吗？'+data,function(index){
            //捉到所有被选中的，发异步进行删除
            layer.msg('删除成功', {icon: 1});
            $(".layui-form-checked").not('.header').parents('tr').remove();
        });
      }
    </script>

  </body>

</html>
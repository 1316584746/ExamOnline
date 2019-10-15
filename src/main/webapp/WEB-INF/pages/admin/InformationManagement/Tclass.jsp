<%@page  contentType="text/html; charset=utf-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="/static/css/admin.css">
<link rel="stylesheet" href="/static/css/pintuer.css">
<script src="/static/js/jquery.js"></script>
<script src="/static/js/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head"><strong class="icon-reorder"> 教学班列表</strong></div>
  <div class="padding border-bottom">  
  <button type="button" class="button border-yellow" onclick="window.location.href='#add'"><span class="icon-plus-square-o"></span> 添加教学班</button>
  </div>
  <table class="table table-hover text-left">
    <tr>
      <th width="10%">年级</th>
      <th width="20%">指导老师</th>
      <th width="20%">班级数</th>
      <th width="15%">人数</th>
      <th width="20%">备注</th>
      <th width="15%">操作</th>
    </tr>
   
    <tr>
      <td>2017级</td>     
      <td>杨佳</td>     
      <td>2</td>
      <td>92</td>
      <td>信息工程1、2班</td>
      <td><div class="button-group">
      <a class="button border-main" href="modify.html"><span class="icon-edit"></span> 修改</a>
      <a class="button border-red" href="javascript:void(0)" onclick="return del(1,1)"><span class="icon-trash-o"></span> 删除</a>
      </div></td>
    </tr>
    <tr>
    <tr>
      <td>2017级</td>     
      <td>杨佳</td>     
      <td>2</td>
      <td>92</td>
      <td>信息工程1、2班</td>
      <td><div class="button-group">
      <a class="button border-main" href="modify.html"><span class="icon-edit"></span> 修改</a>
      <a class="button border-red" href="javascript:void(0)" onclick="return del(1,1)"><span class="icon-trash-o"></span> 删除</a>
      </div></td>
    </tr>
    <tr>
  
  </table>
</div>
<script type="text/javascript">
function del(id,mid){
	if(confirm("您确定要删除吗?")){
	
	}
}
</script>
<div class="panel admin-panel margin-top" id="add">
  <div class="panel-head"><strong><span class="icon-pencil-square-o"></span> 增加教学班</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="">    
      <div class="form-group">
        <div class="label">
          <label>指导老师：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="title" data-validate="required:请输入指导老师名称" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
      <div class="label">
      	<label>年级：</label>
      </div>
      <div class="field">
      	<input type="text" class="input w50" value="" name="title" data-validate="required:,number:ID必须为数字且不能为空" />
      	<div class="tips"></div>
      </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>人数：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="title" data-validate="required:,number:ID必须为数字且不能为空" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>备注：</label>
        </div>
        <div class="field">
          <textarea type="text" class="input" name="note" value=""></textarea>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
        </div>
      </div>
    </form>
  </div>
</div>
</body></html>
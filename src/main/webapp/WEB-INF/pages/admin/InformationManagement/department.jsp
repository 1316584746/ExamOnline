<%@page  contentType="text/html; charset=utf-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title>系部管理</title>
<link rel="stylesheet" href="/static/css/admin.css">
<link rel="stylesheet" href="/static/css/pintuer.css">
<script src="/static/js/jquery.js"></script>
<script src="/static/js/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head"><strong class="icon-reorder"> 系部列表</strong></div>
  <div class="padding border-bottom">
  <button type="button" class="button border-yellow" onclick="window.location.href='#add'"><span class="icon-plus-square-o"></span> 添加系部</button>
  </div>
  <table class="table table-hover text-left">
    <tr>
      <th width="10%">ID</th>
      <th width="20%">Logo</th>
      <th width="15%">系名</th>
      <th width="20%">系主任</th>
      <th width="10%">备注</th>
      <th width="15%">操作</th>
    </tr>
   
    <tr>
      <td>1</td>     
      <td><img src="/static/images/11.jpg" alt="" width="120" height="50" /></td>     
      <td>信软系</td>
      <td>贾骐</td>
      <td>数科团队、软工团队</td>
      <td><div class="button-group">
      <a class="button border-main" href="modify.html"><span class="icon-edit"></span> 修改</a>
      <a class="button border-red" href="javascript:void(0)" onclick="return del(1,1)"><span class="icon-trash-o"></span> 删除</a>
      </div></td>
    </tr>
    <tr>
      <td>2</td>     
      <td><img src="/static/images/11.jpg" alt="" width="120" height="50" /></td>
      <td>首页焦点图</td>
      <td>描述文字....</td>
      <td>1</td>
      <td><div class="button-group">
      <a class="button border-main" href="#add"><span class="icon-edit"></span> 修改</a>
      <a class="button border-red" href="javascript:void(0)" onclick="return del(1,1)"><span class="icon-trash-o"></span> 删除</a>
      </div></td>
    </tr>
    <tr>
      <td>3</td>     
      <td><img src="/static/images/11.jpg" alt="" width="120" height="50" /></td>     
      <td>首页焦点图</td>
      <td>描述文字....</td>
      <td>1</td>
      <td><div class="button-group">
      <a class="button border-main" href="#add"><span class="icon-edit"></span> 修改</a>
      <a class="button border-red" href="javascript:void(0)" onclick="return del(1,1)"><span class="icon-trash-o"></span> 删除</a>
      </div></td>
    </tr>
    
  </table>
</div>
<script type="text/javascript">
function del(id,mid){
	if(confirm("您确定要删除吗?")){
	
	}
}
</script>
<div class="panel admin-panel margin-top" id="add">
  <div class="panel-head"><strong><span class="icon-pencil-square-o"></span> 增加系部</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="">
      <div class="form-group">
        <div class="label">
          <label>系名：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="title" data-validate="required:请输入系名" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>Logo：</label>
        </div>
        <div class="field">
          <input type="text" id="url1" name="img" class="input tips" style="width:25%; float:left;"  value="" data-toggle="hover" data-place="right" data-image="" />
          <input type="button" class="button bg-blue margin-left" id="image1" value="+ 浏览上传"  style="float:left;">
          <div class="tipss">Logo尺寸：1920*500</div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>系主任：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="title" data-validate="required:请输入系主任" />
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
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
  <div class="panel-head"><strong class="icon-reorder"> 添加单元</strong></div>
  <div class="padding border-bottom">  
  <button type="button" class="button border-yellow" onclick="window.location.href='#add'"><span class="icon-plus-square-o"></span> 添加单元</button>
  </div>
  <table class="table table-hover text-left">
    <tr>
      <th width="10%">ID</th>
      <th width="20%">对应学科</th>
      <th width="15%">单元序号</th>
      <th width="20%">单元名称</th>
      <th width="10%">备注</th>
      <th width="15%">操作</th>
    </tr>
   
    <tr>
      <td>1</td>     
      <td>JavaWeb</td>     
      <td>1</td>
      <td>Web应用开发简介</td>
      <td></td>
      <td><div class="button-group">
      <a class="button border-main" href="QuestionModify.html"><span class="icon-edit"></span> 修改</a>
      <a class="button border-red" href="javascript:void(0)" onclick="return del(1,1)"><span class="icon-trash-o"></span> 删除</a>
      </div></td>
    </tr>
    <tr>
      <td>2</td>     
      <td>JavaWeb</td>     
      <td>1</td>
      <td>网页前端开发基础</td>
      <td></td>
      <td><div class="button-group">
      <a class="button border-main" href="modify.jsp"><span class="icon-edit"></span> 修改</a>
      <a class="button border-red" href="javascript:void(0)" onclick="return del(1,1)"><span class="icon-trash-o"></span> 删除</a>
      </div></td>
    </tr>
    <tr>
      <td>3</td>     
      <td>JavaWeb</td>     
      <td>1</td>
      <td>JS脚本语言</td>
      <td></td>
      <td><div class="button-group">
      <a class="button border-main" href="modify.jsp"><span class="icon-edit"></span> 修改</a>
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
  <div class="panel-head"><strong><span class="icon-pencil-square-o"></span>添加单元</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="">    
      <div class="form-group">
        <div class="label">
          <label>对应学科：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="title" data-validate="required:请输入学科" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>单元序号：</label>
        </div>
         <div class="field">
          <input type="text" class="input w50" value="" name="title" data-validate="required:单元序号" />
          <div class="tips"></div>
        </div>>
      </div>
      <div class="form-group">
        <div class="label">
          <label>单元名称：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="title" data-validate="required:单元名称" />
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
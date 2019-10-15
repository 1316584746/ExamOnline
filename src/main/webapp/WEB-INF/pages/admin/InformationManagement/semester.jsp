<%@page  contentType="text/html; charset=utf-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title>学期学年管理</title>
<link rel="stylesheet" href="/static/css/admin.css">
<link rel="stylesheet" href="/static/css/pintuer.css">
<script src="/static/js/jquery.js"></script>
<script src="/static/js/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head"><strong class="icon-reorder"> 学期学年列表</strong></div>
  <div class="padding border-bottom">  
  <button type="button" class="button border-yellow" onclick="window.location.href='#add'"><span class="icon-plus-square-o"></span> 添加学期学年</button>
  </div>
  <table class="table table-hover text-left">
    <tr>
      <th width="10%">ID</th>
      <th width="15%">学年</th>
      <th width="10%">学期</th>
      <th width="15%">开学日期</th>
      <th width="15%">放假日期</th>
      <th width="15%">备注</th>
      <th width="15%">操作</th>
    </tr>
   
    <tr>
      <td>1</td>
      <td>2019-2020学年</td>
      <td>第1学期</td>
      <td>2019年9月15日</td>
      <td>2020年2月03日</td>
      <td></td>
      <td><div class="button-group">
      <a class="button border-main" href="modify.html"><span class="icon-edit"></span> 修改</a>
      <a class="button border-red" href="javascript:void(0)" onclick="return del(1,1)"><span class="icon-trash-o"></span> 删除</a>
      </div></td>
    </tr>
    <tr>
      <td>2</td>
      <td>2019-2020学年</td>
      <td>第1学期</td>
      <td>2019年9月15日</td>
      <td>2020年2月03日</td>
      <td></td>
      <td><div class="button-group">
      <a class="button border-main" href="modify.html"><span class="icon-edit"></span> 修改</a>
      <a class="button border-red" href="javascript:void(0)" onclick="return del(1,1)"><span class="icon-trash-o"></span> 删除</a>
      </div></td>
    </tr>
    <tr>
      <td>3</td>
      <td>2019-2020学年</td>
      <td>第1学期</td>
      <td>2019年9月15日</td>
      <td>2020年2月03日</td>
      <td></td>
      <td><div class="button-group">
      <a class="button border-main" href="modify.html"><span class="icon-edit"></span> 修改</a>
      <a class="button border-red" href="javascript:void(0)" onclick="return del(1,1)"><span class="icon-trash-o"></span> 删除</a>
      </div></td>
    </tr>
    <tr>
        <td colspan="8"><div class="pagelist"> <a href="">上一页</a> <span class="current">1</span><a href="">2</a><a href="">3</a><a href="">下一页</a><a href="">尾页</a> </div></td>
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
  <div class="panel-head"><strong><span class="icon-pencil-square-o"></span> 增加开课</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="">    
      <div class="form-group">
        <div class="label">
          <label>学年：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="title" data-validate="required:请输入学年" />
          <div class="tips"></div>
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label>学期：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="title" data-validate="required:请输入学期" />
          <div class="tips"></div>
        </div>
      </div>
       
      <div class="form-group">
        <div class="label">
          <label>开学日期：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="title" data-validate="required:请输入开学日期" />
          <div class="tips"></div>
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label>放假日期：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="title" data-validate="required:请输入放假日期" />
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
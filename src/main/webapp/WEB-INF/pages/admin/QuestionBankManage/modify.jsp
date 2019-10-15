<%@page  contentType="text/html; charset=utf-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="./static/css/admin.css">
<link rel="stylesheet" href="./static/css/pintuer.css">
<script src="./static/js/jquery.js"></script>
<script src="./static/js/pintuer.js"></script>
</head>
<body>

</div>
<script type="text/javascript">
function del(id,mid){
	if(confirm("您确定要删除吗?")){
	
	}
}
</script>
<div class="panel admin-panel margin-top" id="add">
  <div class="panel-head"><strong><span class="icon-pencil-square-o"></span> 修改</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="test.jsp">
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
          <label>题型编号：</label>
        </div>
         <div class="field">
          <input type="text" class="input w50" value="" name="title" data-validate="required:单元序号" />
          <div class="tips"></div>
        </div>>
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
          <label>试题内容：</label>
        </div>
        <div class="field">
          <textarea type="text" class="input" name="note" value=""></textarea>
          <div class="tips"></div>
        </div>
        <div class="label">
          <label>试题答案：</label>
        </div>
        <div class="field">
          <textarea type="text" class="input" name="note" value=""></textarea>
          <div class="tips"></div>
        </div>
        
     <div class="label">
          <label>试题分值：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="title" data-validate="required:试题分值" />
          <div class="tips"></div>
        </div>
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <a href="ModifySuccessful.html"><button class="button bg-main icon-check-square-o" type="submit"> 提交</button></a>
        </div>
      </div>
    </form>
  </div>
</div>
</body></html>
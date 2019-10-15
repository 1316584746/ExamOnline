<%@page  contentType="text/html; charset=utf-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>课程管理</title>  
    <link rel="stylesheet" href="/static/css/admin.css">
<link rel="stylesheet" href="/static/css/pintuer.css">
<script src="/static/js/jquery.js"></script>
<script src="/static/js/pintuer.js"></script> 
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head"><strong class="icon-reorder"> 课程列表</strong></div>
  <div class="padding border-bottom">
  <a class="button border-yellow" href=""><span class="icon-plus-square-o"></span> 添加课程</a>
  </div> 
  <table class="table table-hover text-left">
    <tr>
      <th width="10%">ID</th>
      <th width="15%">课程名称</th>
      <th width="15%">开设专业</th>
      <th width="10%">开设年级</th>
      <th width="20%">课程概述</th>
      <th width="20%">操作</th>
    </tr>
   
    <tr>
      <td>01</td>      
      <td>Web应用开发</td>  
      <td>信息工程</td>
      <td>2017级</td>
      <td>.....</td>
      <td>
      <div class="button-group">
      <a type="button" class="button border-main" href="#"><span class="icon-edit"></span>修改</a>
       <a class="button border-red" href="javascript:void(0)" onclick="return del(17)"><span class="icon-trash-o"></span> 删除</a>
      </div>
      </td>
    </tr>
    
    <tr>
      <td>01</td>      
      <td>Web应用开发</td>  
      <td>信息工程</td>
      <td>2017级</td>
      <td>.....</td>
      <td>
      <div class="button-group">
      <a type="button" class="button border-main" href="#"><span class="icon-edit"></span>修改</a>
       <a class="button border-red" href="javascript:void(0)" onclick="return del(17)"><span class="icon-trash-o"></span> 删除</a>
      </div>
      </td>
    </tr> 
    
    <tr>
      <td>01</td>      
      <td>Web应用开发</td>  
      <td>信息工程</td>
      <td>2017级</td>
      <td>.....</td>
      <td>
      <div class="button-group">
      <a type="button" class="button border-main" href="#"><span class="icon-edit"></span>修改</a>
       <a class="button border-red" href="javascript:void(0)" onclick="return del(17)"><span class="icon-trash-o"></span> 删除</a>
      </div>
      </td>
    </tr> 
    
    <tr>
      <td>01</td>      
      <td>Web应用开发</td>  
      <td>信息工程</td>
      <td>2017级</td>
      <td>.....</td>
      <td>
      <div class="button-group">
      <a type="button" class="button border-main" href="#"><span class="icon-edit"></span>修改</a>
       <a class="button border-red" href="javascript:void(0)" onclick="return del(17)"><span class="icon-trash-o"></span> 删除</a>
      </div>
      </td>
    </tr> 
    
    <tr>
      <td>01</td>      
      <td>Web应用开发</td>  
      <td>信息工程</td>
      <td>2017级</td>
      <td>.....</td>
      <td>
      <div class="button-group">
      <a type="button" class="button border-main" href="#"><span class="icon-edit"></span>修改</a>
       <a class="button border-red" href="javascript:void(0)" onclick="return del(17)"><span class="icon-trash-o"></span> 删除</a>
      </div>
      </td>
    </tr> 
    <tr>
        <td colspan="8"><div class="pagelist"> <a href="">上一页</a> <span class="current">1</span><a href="">2</a><a href="">3</a><a href="">下一页</a><a href="">尾页</a> </div></td>
      </tr>
  </table>
</div>
<script>
function del(id){
	if(confirm("您确定要删除吗?")){
		
	}
}
</script>
<div class="panel admin-panel margin-top">
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>增加课程</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="">   
      <input type="hidden" name="id"  value="" />  
      <div class="form-group">
        <div class="label">
          <label>ID：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="sort" value=""  data-validate="required:,number:ID必须为数字且不能为空" />
          <div class="tips"></div>
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label>课程名称：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="title" value="" data-validate="required:请输入课程名称" />         
          <div class="tips"></div>
        </div>
      </div> 
    
      <div class="form-group">
        <div class="label">
          <label>开设专业：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="title" value="" data-validate="required:请输入专业名称" />         
          <div class="tips"></div>
          </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>开设年级：</label>
        </div>
        <div class="field">
          <input type="text" class="input" name="s_title" value=""/>         
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>课程概述：</label>
        </div>
        <div class="field">
          <textarea type="text" class="input" name="s_desc" style="height:100px;" ></textarea>        
        </div>
     </div>
    
     <div class="form-group">
        <div class="label">
          <label>显示：</label>
        </div>
        <div class="field">
          <div class="button-group radio">
          
          <label class="button active">
         	  <span class="icon icon-check"></span>             
              <input name="isshow" value="1" type="radio" checked="checked">是             
          </label>             
        
          <label class="button active"><span class="icon icon-times"></span>          	
              <input name="isshow" value="0"  type="radio" checked="checked">否
          </label>         
           </div>       
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
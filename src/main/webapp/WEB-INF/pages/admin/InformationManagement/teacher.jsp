<%@page  contentType="text/html; charset=utf-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title>教师管理</title>
<link rel="stylesheet" href="/static/css/admin.css">
<link rel="stylesheet" href="/static/css/pintuer.css">
<script src="/static/js/jquery.js"></script>
<script src="/static/js/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel">
  <form method="post" action="" id="listform">
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"> 教师列表</strong> <a href="" style="float:right; display:none;">添加字段</a></div>
    <div class="padding border-bottom">
      <ul class="search" style="padding-left:10px;">
        <li> <a class="button border-main icon-plus-square-o" href="add.html"> 添加教师</a> </li>
        <li>搜索：</li>
        <li>系部
          <select name="department" class="input" onchange="changesearch()" style="width:200px; line-height:17px; display:inline-block">
            <option value="0">信息与软件工程系</option>
            <option value="1">计算机科学与技术系</option>
          </select>
          &nbsp;&nbsp;
          专业
          <select name="profession" class="input" onchange="changesearch()"  style="width:200px; line-height:17px;display:inline-block">
            <option value="0">信息工程</option>
            <option value="1">软件工程</option>
            <option value="2">大数据科学与技术</option>
          </select>
          &nbsp;&nbsp;
          班级
          <select name="class" class="input" onchange="changesearch()"  style="width:200px; line-height:17px;display:inline-block">
            <option value="0">信工17201</option>
            <option value="1">信工17202</option>
            <option value="2">大数据17201</option>
            <option value="3">大数据17202</option>
          </select>
        </li>
        <li>
          <input type="text" placeholder="请输入搜索关键字" name="keywords" class="input" style="width:200px; line-height:17px;display:inline-block" />
          <a href="javascript:void(0)" class="button border-main icon-search" onclick="changesearch()" > 搜索</a></li>
      </ul>
    </div>
    <table class="table table-hover text-left">
   	<!--<tr>
    	<th width="5%" style="text-align:left; padding-left:20px;"></th>
      <th width="10%">ID</th>
      <th width="10%">教师名</th>
      <th width="10%">教师照片</th>
      <th width="15%">性别</th>
      <th width="10%">所属系部</th>
      <th width="10%">联系电话</th>
      <th width="15%">办公地址</th>
      <th width="15%">操作</th>
    </tr>-->
    <tr>
	    <th width="10%" style="text-align:center; padding-left:20px;">ID</th>
	    <th width="15%">教师名</th>
      <th width="10%">教师照片</th>
      <th width="15%">性别</th>
      <th width="10%">所属系部</th>
      <th width="10%">联系电话</th>
      <th width="15%">办公地址</th>
      <th width="15%">操作</th>
    </tr>
   
    <volist name="list" id="vo">
    	<tr>
	      <td style="text-align:center; padding-left:20px;"><input type="checkbox" name="id[]" value="" />
	       1</td>
	      <td>张小华</td>
	      <td><img src="/static/images/11.jpg" alt="" width="120" height="50" /></td>
	      <td>男</td>
	      <td>信息与软件工程系</td>
	      <td>xxxxxxxx</td>
	      <td>C2-301</td>
	      <td><div class="button-group">
				  <a class="button border-main" href="#add"><span class="icon-edit"></span> 修改</a>
				  <a class="button border-red" href="javascript:void(0)" onclick="return del(1,1)"><span class="icon-trash-o"></span> 删除</a>
				  </div>
	      </td>
	    </tr>
	    <tr>
	      <td style="text-align:center; padding-left:20px;"><input type="checkbox" name="id[]" value="" />
	       2</td>
	      <td>张小华</td>
	      <td><img src="/static/images/11.jpg" alt="" width="120" height="50" /></td>
	      <td>男</td>
	      <td>信息与软件工程系</td>
	      <td>xxxxxxxx</td>
	      <td>C2-301</td>
	      <td><div class="button-group">
				  <a class="button border-main" href="#add"><span class="icon-edit"></span> 修改</a>
				  <a class="button border-red" href="javascript:void(0)" onclick="return del(1,1)"><span class="icon-trash-o"></span> 删除</a>
				  </div>
	      </td>
	    </tr>
		  <tr>
	      <td style="text-align:center; padding-left:20px;"><input type="checkbox" name="id[]" value="" />
	       3</td>
	      <td>张小华</td>
	      <td><img src="/static/images/11.jpg" alt="" width="120" height="50" /></td>
	      <td>男</td>
	      <td>信息与软件工程系</td>
	      <td>xxxxxxxx</td>
	      <td>C2-301</td>
	      <td><div class="button-group">
				  <a class="button border-main" href="#add"><span class="icon-edit"></span> 修改</a>
				  <a class="button border-red" href="javascript:void(0)" onclick="return del(1,1)"><span class="icon-trash-o"></span> 删除</a>
				  </div>
	      </td>
	    </tr>
		  <tr>
	      <td style="text-align:center; padding-left:20px;"><input type="checkbox" name="id[]" value="" />
	       4</td>
	      <td>张小华</td>
	      <td><img src="/static/images/11.jpg" alt="" width="120" height="50" /></td>
	      <td>男</td>
	      <td>信息与软件工程系</td>
	      <td>xxxxxxxx</td>
	      <td>C2-301</td>
	      <td><div class="button-group">
				  <a class="button border-main" href="#add"><span class="icon-edit"></span> 修改</a>
				  <a class="button border-red" href="javascript:void(0)" onclick="return del(1,1)"><span class="icon-trash-o"></span> 删除</a>
				  </div>
	      </td>
	    </tr>
	    <tr>
	  		<td style="text-align:center; padding-left:20px;"><input type="checkbox" id="checkall"/>
		      全选 </td>
		    <td></td>
		    <td></td>
		    <td></td>
		    <td></td>
		    <td></td>
		    <td></td>
		    <td>
		    	<div class="button-group">
					  <a class="button border-main" href="#add"><span class="icon-edit"></span> 修改</a>
					  <a class="button border-red" href="javascript:void(0)" onclick="return del(1,1)"><span class="icon-trash-o"></span> 删除</a>
					</div>
	      </td>
	    </tr>
      <tr>
        <td colspan="8"><div class="pagelist"> <a href="">上一页</a> <span class="current">1</span><a href="">2</a><a href="">3</a><a href="">下一页</a><a href="">尾页</a> </div></td>
      </tr>
    </table>
  </div>
</form>
<script type="text/javascript">

//搜索
function changesearch(){	
		
}

//单个删除
function del(id,mid,iscid){
	if(confirm("您确定要删除吗?")){
		
	}
}

//全选
$("#checkall").click(function(){ 
  $("input[name='id[]']").each(function(){
	  if (this.checked) {
		  this.checked = false;
	  }
	  else {
		  this.checked = true;
	  }
  });
})

//批量删除
function DelSelect(){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		var t=confirm("您确认要删除选中的内容吗？");
		if (t==false) return false;		
		$("#listform").submit();		
	}
	else{
		alert("请选择您要删除的内容!");
		return false;
	}
}



</script>
<div class="panel admin-panel margin-top" id="add">
  <div class="panel-head"><strong><span class="icon-pencil-square-o"></span> 增加教师</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="">    
      <div class="form-group">
        <div class="label">
          <label>教师名：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="title" data-validate="required:请输入教师名" />
          <div class="tips"></div>
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label>教师照片：</label>
        </div>
        <div class="field">
          <input type="text" id="url1" name="img" class="input tips" style="width:25%; float:left;"  value="" data-toggle="hover" data-place="right" data-image="" />
          <input type="button" class="button bg-blue margin-left" id="image1" value="+ 浏览上传"  style="float:left;">
          <div class="tipss">图片尺寸：1920*500</div>
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label>性别：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="title" data-validate="required:请输入性别" />
          <div class="tips"></div>
        </div>
      </div>
       
      <div class="form-group">
        <div class="label">
          <label>班级所属系部：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="title" data-validate="required:请输入所属系部" />
          <div class="tips"></div>
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label>联系电话：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="title" data-validate="required:请输入联系电话" />
          <div class="tips"></div>
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label>身份证号码：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="title" data-validate="required:请输入身份证号码" />
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
</div>
</body></html>
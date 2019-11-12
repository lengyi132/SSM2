<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'AddProduct.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$.getJSON('queryCategory','parentId=0',function(rs){
				var select = $("[name=categoryLevel1Id]");
				for ( var i = 0; i < rs.length; i++) {
					var cate=rs[i];
					var option=null;
					option=$("<option value='"+cate.id+"'>"+cate.name+"</option>");
					select.append(option);
				}
				select.change();
			});
			$("[name=categoryLevel1Id]").change(function(){
				$("[name=categoryLevel2Id]").html("");
				$("[name=categoryLevel3Id]").html("");
				var parentId=$(this).val();
				$.getJSON('queryCategory','parentId='+parentId,function(rs){
					var select=$("[name=categoryLevel2Id]");
					for ( var i = 0; i < rs.length; i++) {
						var cate=rs[i];
						var option=null;
						option=$("<option value='"+cate.id+"'>"+cate.name+"</option>");
						select.append(option);
					}
					select.change();
				});
			});
			$("[name=categoryLevel2Id]").change(function(){
				$("[name=categoryLevel3Id]").html("");
				var parentId=$(this).val();
				$.getJSON('queryCategory','parentId='+parentId,function(rs){
					var select=$("[name=categoryLevel3Id]");
					for ( var i = 0; i < rs.length; i++) {
						var cate=rs[i];
						var option=null;
						option=$("<option value='"+cate.id+"'>"+cate.name+"</option>");
						select.append(option);
					}
				});
			});
		});
	</script>

  </head>
  
  <body>
    	<h3>添加商品</h3>
    	<hr>
    	<form action="addProduct" method="post" enctype="multipart/form-data">
    		<table>
    			<tr height="30px">
	    			<td align="right" width="200px">商品名称:</td>
	    			<td><input type="text" name="name"></td>
    			</tr>
    			<tr height="30px">
	    			<td align="right" width="200px">商品描述:</td>
    				<td><input type="text" name="description"></td>
    			</tr>
    			<tr height="30px">
	    			<td align="right" width="200px">商品单价:</td>
    				<td><input type="text" name="price"></td>
    			</tr>
    			<tr height="30px">
	    			<td align="right" width="200px">商品库存:</td>
    				<td><input type="text" name="stock"></td>
    			</tr>
    			<tr height="30px">
	    			<td align="right" width="200px">一级类别:</td>
    				<td><select name="categoryLevel1Id"></select></td>
    			</tr>
    			<tr height="30px">
	    			<td align="right" width="200px">二级类别:</td>
    				<td><select name="categoryLevel2Id"></select></td>
    			</tr>
    			<tr height="30px">
	    			<td align="right" width="200px">三级类别:</td>
    				<td><select name="categoryLevel3Id"></select></td>
    			</tr>
    			<tr height="30px">
	    			<td align="right" width="200px">是否已删除:</td>
    				<td><input type="checkbox" name="isDelete"></td>
    			</tr>
    			<tr height="30px">
	    			<td align="right" width="200px">商品图片:</td>
    				<td><input type="file" name="fileName"></td>
    			</tr>
    			<tr height="40px">
                <td>&nbsp;</td>
                <td style="line-height:20px;">
                	<font color="#ff4e00">小提示：</font><br /> 您可以上传以下格式的文件：gif、jpg、png
                </td>
              </tr>
    			<tr><td></td><td><input type="submit" value="添加"></td></tr>
    		</table>
    	</form>
  </body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'productList.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript">
		$(document).ready(function(){
			var yj=null;
			var ej=null;
			var sj=null;
			<c:if test="${! empty product.categoryLevel1Id}">
				yj=${requestScope.product.categoryLevel1Id};
			</c:if>
			<c:if test="${! empty product.categoryLevel2Id}">
				ej=${requestScope.product.categoryLevel2Id};
			</c:if>
			<c:if test="${! empty product.categoryLevel3Id}">
				sj=${requestScope.product.categoryLevel3Id};
			</c:if>
			
			//加载所有的1级类别
			$.getJSON('queryCategory','parentId=0',function(rs){
				var select=$("[name=categoryLevel1Id]");
				for ( var i = 0; i < rs.length; i++) {
					var cate=rs[i];
					var option=null;
					if (yj!=null&&yj==cate.id) {
						option=$("<option selected value='"+cate.id+"'>"+cate.name+"</option>");
					}else{
						option=$("<option value='"+cate.id+"'>"+cate.name+"</option>");
					}
					select.append(option);
				}
				select.change();
			});
			
			$("[name=categoryLevel1Id]").change(function(){
				//$("[name=categoryLevel2Id]").html("");
				//$("[name=categoryLevel3Id]").html("");
				$("[name=categoryLevel2Id] option:gt(0)").remove();
				$("[name=categoryLevel3Id] option:gt(0)").remove();
				var parentId=$(this).val();
				$.getJSON('queryCategory','parentId='+parentId,function(rs){
					var select=$("[name=categoryLevel2Id]");
					for ( var i = 0; i < rs.length; i++) {
						var cate=rs[i];
						var option=null;
						if (ej!=null&&ej==cate.id) {
							option=$("<option selected value='"+cate.id+"'>"+cate.name+"</option>");
						}else{
							option=$("<option value='"+cate.id+"'>"+cate.name+"</option>");
						}
						select.append(option);
					}
				select.change();
				});
			});
			
			$("[name=categoryLevel2Id]").change(function(){
				//$("[name=categoryLevel3Id]").html("");
				$("[name=categoryLevel3Id] option:gt(0)").remove();
				var parentId=$(this).val();
				$.getJSON('queryCategory','parentId='+parentId,function(rs){
					var select=$("[name=categoryLevel3Id]");
					for ( var i = 0; i < rs.length; i++) {
						var cate=rs[i];
						var option=null;
						if (sj!=null&&sj==cate.id) {
							option=$("<option selected value='"+cate.id+"'>"+cate.name+"</option>");
						}else{
							option=$("<option value='"+cate.id+"'>"+cate.name+"</option>");
						}
						select.append(option);
					}
				});
			});
			$("#div_page a").click(function(){
				 var page=$(this).attr("page");
				 $("#yema").val(page);
				 $("#form_select").submit();
			});
		});
		
		/* function dofenye(num){
			$("#yema").val(num);
			$("#form_select").submit();	
		} */
	</script>

</head>

<body>
	${Msg }
	<h3>查看商品</h3>
	<div style="height:100px;">
		<form action="allProduct" method="post" id="form_select">
			<input type="hidden" id="yema" name="pageIndex" value="1">
			名称：<input type="text" id="name" name="name" value="${requestScope.product.name }" />
			一级类别：<select name="categoryLevel1Id"><option value="">全部</option></select>
			二级类别：<select name="categoryLevel2Id"><option value="">全部</option></select>
			三级类别：<select name="categoryLevel3Id"><option value="">全部</option></select><br> <br>
			商品说明：<input type="text" name="description" value="${requestScope.product.description }" />
			价格范围：<input type="text" name="price" style="width:80px" value="${requestScope.product.price }" />
			--<input type="text" name="price2" style="width:80px" value="${requestScope.product.price2 }" />
			已删除：<input type="checkbox" name="isDelete" />
			 &nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="搜索" />
		</form>
	</div>

	<table width="900px">
		<tr align="center">
			<td width="30%">图片</td>
			<td width="20%">名称</td>
			<td width="15%">单价</td>
			<td width="15%">库存</td>
			<td width="20%">操作</td>
		</tr>
		<c:forEach items="${requestScope.pageBean.data }" var="product">
			<tr align="center">
				<td><img src="<%=path %>/${product.fileName }" width="120" height="90" /></td>
				<td>${product.name }</td>
				<td>${product.price }</td>
				<td>${product.stock }</td>
				<td><a>修改</a>|<a>删除</a></td>
			</tr>
		</c:forEach>
	</table>
	<div id="div_page" style="text-align: center;">
			<h3>当前第${requestScope.pageBean.pageIndex }页,一共${requestScope.pageBean.pageCount}页</h3>
			<h3><a href="javascript:;" page="1">首页</a>|
			<a href="javascript:;" page="${requestScope.pageBean.pageIndex-1}">上一页</a>|
			<a href="javascript:;" page="${requestScope.pageBean.pageIndex+1}">下一页</a>|
			<a href="javascript:;" page="${requestScope.pageBean.pageCount}">尾页</a></h3>
		</div>
</body>
</html>

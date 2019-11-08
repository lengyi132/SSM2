<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="js/jquery-1.11.1.min_044d0927.js"></script>
	<script type="text/javascript" src="js/jquery.bxslider_e88acd1b.js"></script>
    
    <script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="js/menu.js"></script>    
        
	<script type="text/javascript" src="js/select.js"></script>
    
	<script type="text/javascript" src="js/lrscroll.js"></script>
    
    <script type="text/javascript" src="js/iban.js"></script>
    <script type="text/javascript" src="js/fban.js"></script>
    <script type="text/javascript" src="js/f_ban.js"></script>
    <script type="text/javascript" src="js/mban.js"></script>
    <script type="text/javascript" src="js/bban.js"></script>
    <script type="text/javascript" src="js/hban.js"></script>
    <script type="text/javascript" src="js/tban.js"></script>
    
	<script type="text/javascript" src="js/lrscroll_1.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#show").click(function(){
				$.getJSON("showUserList.action","",function(rs){
					for ( var i = 0; i < rs.length; i++) {
						var li=$("<li></li>");
						li.html(rs[i].userName+","+rs[i].mobile);
						$("#ul_user").append(li);
					}
				});
			});
			$("#all").click(function(){
				$.getJSON("showAddresslist.action","",function(rs){
					for ( var i = 0; i < rs.length; i++) {
						var li=$("<li></li>");
						li.html("<a href='deleteAddress/"+rs[i].id+"/"+rs[i].userId+"'>"+rs[i].address+","+rs[i].createTime+"</a>");
						$("#ul_address").append(li);
					}
				});
			});
		});
	</script>
  </head>
  
  <body>
       	<input type="button" id="show" value="查看所有用户">
       	<ul id="ul_user"></ul>
       		<input type="button" id="all" value="查看所有收货地址">
       	<ul id="ul_address"></ul>
  </body>
</html>

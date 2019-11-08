<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addUser.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<h3>添加用户详细信息</h3><hr>
    <form action="addUser" method="post">
    	<table>
    		<tr height="30">
    			<td align="right" width="200">登录名:</td>
    			<td><input type="text" name="loginName"></td>
    		</tr>
    		<tr height="30">
    			<td align="right" width="200">真实姓名:</td>
    			<td><input type="text" name="userName"></td>
    		</tr>
    		<tr height="30">
    			<td align="right" width="200">密码:</td>
    			<td><input type="password" name="password"></td>
    		</tr>
    		<tr height="30">
    			<td align="right" width="200">确认密码:</td>
    			<td><input type="password" name="qpassword"></td>
    		</tr>
    		<tr height="30">
    			<td align="right" width="200">性别:</td>
    			<td>
    			<input type="radio" value="1" name="sex" checked="checked"/>男
                &nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" value="0" name="sex"/>女
    			</td>
    		</tr>
    		<tr height="30">
    			<td align="right" width="200">身份证号:</td>
    			<td><input type="text" name="identityCode"></td>
    		</tr>
    		<tr height="30">
    			<td align="right" width="200">电子邮件:</td>
    			<td><input type="text" name="email"></td>
    		</tr>
    		<tr height="30">
    			<td align="right" width="200">电话:</td>
    			<td><input type="text" name="mobile"></td>
    		</tr>
    		<tr height="30">
    			<td align="right" width="200">工作类型:</td>
    			<td><input type="radio" value="0" name="type" checked="checked"/>前台
                &nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" value="1" name="type"/>后台
                </td>
    		</tr>
    		<tr><td></td><td><input type="submit" value="添加"></td></tr>
    	</table>
    </form>
  </body>
</html>

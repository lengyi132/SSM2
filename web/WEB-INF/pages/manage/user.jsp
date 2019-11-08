<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'user.jsp' starting page</title>
    
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
 	<h3>${Msg}</h3>
    <form action="updateUser" method="post">
    <h3>用户详细信息</h3><hr>
    	<table>
    		<tr height="30" >
    			<td align="right" width="200">ID:</td>
    			<td><input type="text" name="id" readonly="readonly" value="${user.id }"></td>
    		</tr>
    		<tr height="30">
    			<td align="right" width="200">登录名:</td>
    			<td><input type="text" name="loginName" value="${user.loginName }"></td>
    		</tr>
    		<tr height="30">
    			<td align="right" width="200">真实姓名:</td>
    			<td><input type="text" name="userName" value="${user.userName }"></td>
    		</tr>
    		<tr height="30">
    			<td align="right" width="200">密码:</td>
    			<td><input type="text" name="password" value="${user.password }"></td>
    		</tr>
    		<tr height="30">
    			<td align="right" width="200">性别:</td>
    			<td>
    			<c:if test="${user.sex==1 }">
    			<input type="radio" value="1" name="sex" checked="checked"/>男
                &nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" value="0" name="sex"/>女
    			</c:if>
    			<c:if test="${user.sex==0 }">
    			<input type="radio" value="1" name="sex" />男
                &nbsp;&nbsp;&nbsp;&nbsp;
                <input type="radio" value="0" name="sex" checked="checked"/>女
                </c:if>
    			</td>
    		</tr>
    		<tr height="30">
    			<td align="right" width="200">身份证号:</td>
    			<td><input type="text" name="identityCode" value="${user.identityCode }"></td>
    		</tr>
    		<tr height="30">
    			<td align="right" width="200">电子邮件:</td>
    			<td><input type="text" name="email" value="${user.email }"></td>
    		</tr>
    		<tr height="30">
    			<td align="right" width="200">电话:</td>
    			<td><input type="text" name="mobile" value="${user.mobile }"></td>
    		</tr>
    		<tr height="30">
    			<td align="right" width="200">工作类型:</td>
    			<td><c:if test="${user.type==0 }">
    			<input type="radio" value="0" name="type" checked="checked"/>前台
                &nbsp;&nbsp;&nbsp;&nbsp;
                <input type="radio" value="1" name="type"/>后台
                </c:if>
    			<c:if test="${user.type==1 }">
    			<input type="radio" value="0" name="type" />前台
                &nbsp;&nbsp;&nbsp;&nbsp;
                <input type="radio" value="1" name="type" checked="checked"/>后台
                </c:if>
                </td>
    		</tr>
    		<tr><td></td><td><input type="submit" value="保存"></td></tr>
    	</table>
    </form>
  </body>
</html>

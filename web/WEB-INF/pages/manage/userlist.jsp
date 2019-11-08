<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript">
    function dosubmit(pageIndex) {
        document.getElementById("pageIndex").value = pageIndex;
        document.getElementById("fm_user").submit();
    }


</script>
<link type="text/css" rel="stylesheet" href="css/style.css"/>

<div class="m_right">
    <h3>${Msg}</h3>
    <div class="mem_tit">用户信息</div>

    <c:if test="${requestScope.reg eq 'true' }">
        <script type="text/javascript">
            alert("删除成功");
        </script>
    </c:if>

    <c:if test="${request.reg eq 'false' }">
        <script type="text/javascript">
            alert("删除失败");
        </script>
    </c:if>

    <c:if test="${Msg eq 'true' }">
        <script type="text/javascript">
            alert("用户添加成功");
        </script>
    </c:if>

    <c:if test="${Msg eq 'false' }">
        <script type="text/javascript">
            alert("用户添加失败");
        </script>
    </c:if>

    <form action="allUser" method="post" id="fm_user">
        &nbsp;登录名：<input type="text" name="loginName" value="${user.loginName }">
        &nbsp;用户名：<input type="text" name="userName" value="${user.userName }">
        &nbsp;电话：<input type="text" name="mobile" value="${user.mobile }">
        <input type="hidden" name="pageIndex" id="pageIndex">
        &nbsp;<input type="submit" value="搜索">
    </form>
    <hr>
    <table border="0" class="order_tab" style="width:930px; text-align:center; margin-bottom:30px;" cellspacing="0"
           cellpadding="0">
        <tr>
            <td><font color="#ff4e00">登录名</font></td>
            <td>用户名</td>
            <td>性别</td>
            <td>邮箱</td>
            <td>电话</td>
            <td>操作</td>
        </tr>
        <c:forEach items="${page.data }" var="user">
            <tr>
                <td><font color="#ff4e00"><a href="queryUserServlet?id=${user.id }">
                        ${user.loginName }</a></font></td>
                <td>${user.userName }</td>
                <td>${user.sex==1?"男":"女" }</td>
                <td>${user.email }</td>
                <td>${user.mobile }</td>
                <td><a id="update" href="queryUser/${user.id }">修改</a>|
                    <a id="delete" href="deleteUser/${user.id }">删除</a></td>
            </tr>
        </c:forEach>
    </table>
    <h3 align="center">
        第${page.pageIndex }页，共${page.pageCount }页<br>
        <a href="javascript:" onclick="dosubmit(1)">首页</a>|
        <a href="javascript:" onclick="dosubmit(${page.pageIndex-1 })">上一页</a>|
        <a href="javascript:" onclick="dosubmit(${page.pageIndex+1 })">下一页</a>|
        <a href="javascript:" onclick="dosubmit(${page.pageCount })">尾页</a>|</h3>

</div>
    

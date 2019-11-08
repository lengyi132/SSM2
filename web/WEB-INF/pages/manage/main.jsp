<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link type="text/css" rel="stylesheet" href="css/style.css" />
    <!--[if IE 6]>
    <script src="js/iepng.js" type="text/javascript"></script>
        <script type="text/javascript">
           EvPNG.fix('div, ul, img, li, input, a'); 
        </script>
    <![endif]-->
        
    <script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="js/menu.js"></script>    
        
	<script type="text/javascript" src="js/select.js"></script>
        
    
<title>尤洪</title>
</head>
<body>  
<!--Begin Header Begin-->
<div class="m_top_bg">
    <div class="top">
        <div class="m_logo"><a href="Index.html"><img src="images/logo1.png" /></a></div>
        <div class="m_search">
            <form>
                <input type="text" value="" class="m_ipt" />
                <input type="submit" value="搜索" class="m_btn" name="select"/>
            </form>                      
            <span class="fl"><a href="#">咖啡</a><a href="#">iphone 6S</a><a href="#">新鲜美食</a><a href="#">蛋糕</a><a href="#">日用品</a><a href="#">连衣裙</a></span>
        </div>
    </div>
</div>
<!--End Header End--> 
<div class="i_bg bg_color">
    <!--Begin 用户中心 Begin -->
	<div class="m_content">
		<div>您当前所在的位置><a href="welcome" target="right">易买网</a>>后台管理</div>
   		<div class="m_left">
        	<div class="left_n">管理中心</div>
            <div class="left_m">
            	<div class="left_m_t t_bg1">账户管理</div>
                <ul>
                	<li><a href="allUser" class="now" target="right">查看所有</a></li>
                    <li><a href="initAddUser" target="right">新增</a></li>
                </ul>
            </div>
            <div class="left_m">
            	<div class="left_m_t t_bg1">商品类别管理</div>
                <ul>
                	<li><a href="../allCategorieServlet" class="now" target="right">查看所有</a></li>
                    <li><a href="Member_Address.html">新增</a></li>
                </ul>
            </div>
            <div class="left_m">
            	<div class="left_m_t t_bg1">商品管理</div>
                <ul>
                	<li><a href="allProductServlet" class="now" target="right">查看所有</a></li>
                    <li><a href="addProduct.jsp" target="right">新增</a></li>
                </ul>
            </div>
            <div class="left_m">
            	<div class="left_m_t t_bg1">新闻管理</div>
                <ul>
                	<li><a href="Member_Order.html" class="now">查看所有</a></li>
                    <li><a href="Member_Address.html">新增</a></li>
                </ul>
            </div>
        </div>
       <iframe src="welcome" frameborder="0" name="right" width="970" height="1000" ></iframe>
	 
    </div>
	 
        
</div>

</body>


<!--[if IE 6]>
<script src="//letskillie6.googlecode.com/svn/trunk/2/zh_CN.js"></script>
<![endif]-->
</html>

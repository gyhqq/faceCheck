<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="conn.Boos.*" %>
<% request.setCharacterEncoding("UTF-8");
String boosid =(String)session.getAttribute("boosid");
	boosLogin bsl=new boosLogin();
String name = bsl.getboosname(boosid).toString();
String pass = bsl.getboospass(boosid).toString();
 %>
<%
    String serverName = request.getServerName();
    String path = request.getContextPath();
    String basePath = "";
    if (serverName.equals("localhost")) {
        /*本地测试时*/
        basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    } else {
        /*线上运行时*/
        basePath = request.getScheme()+"s://"+request.getServerName()+path+"/";
    }
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <link rel="stylesheet" type="text/css" href="../css/styles.css">
    <base href="<%=basePath%>">
    <title>My JSP 'boos.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  <body class="usin">
  欢迎您登陆到本系统：
  <div class="usinn">
 您的个人信息<br/>
  BOOSID:<%=boosid %><br/>
  BOOS名字：<%=name %><br/>
  BOOS密码：<%=pass %></div>
  </body>
</html>

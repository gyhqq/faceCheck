<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
 <% String boosid =(String)session.getAttribute("boosid");
 if (boosid == null||boosid.length()==0)
 {
 out.print("<script>alert('请登陆打卡考勤！！！'); window.location='../BSlogin.jsp' </script>");
 }%>

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
    <base href="<%=basePath%>">
    <title>BOOS管理主页</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
    <frameset  cols="13%,87%" framespacing="0" frameborder="no" border="0">
  <!-- 左半部默认命名为leftFrame -->
  <frame src="./Boos/Menu.jsp" name="leftFrame"  id="leftFrame" title="topFrame" />
  <frameset rows="13%,87%" framespacing="0" frameborder="no" border="0">
   <frame src="./Boos/top.jsp" name="topFrame"  id="topFrame" title="topFrame" scrolling="no" noresize="noresize" />
     <frame src="./Boos/boos.jsp" name="setFrame"  id="setFrame" title="setFrame" />
  </frameset></frameset>
   <noframes><body>
  </body></noframes>
</html>

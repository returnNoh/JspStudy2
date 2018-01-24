<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="DB.border_new" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자용글쓰기</title>
</head>
<body>
<center>
<form name="new" method="post" action="border_new.jsp">
글 제목:<input type="text" name="border_title" size="50"><p>

글 내용:<input type="text" name="border_contents" style="width:400px; height:100px;">

<input type="submit" value="글 작성완료"> <input type="button" value="목록으로" onclick="JavaScript:location='border_main.jsp'">
<%
request.setCharacterEncoding("UTF-8");

if(request.getParameter("border_title")!=null){
border_new bo = new border_new();
bo.setContent(request.getParameter("border_contents"));
bo.setTitle(request.getParameter("border_title"));
bo.border_new();
response.sendRedirect("border_main.jsp");
%>

<% }%>

</form>
</center>
</body>
</html>
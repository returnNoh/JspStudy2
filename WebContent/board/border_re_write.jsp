<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="DB.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자용글쓰기</title>
</head>
<body>
<center>
<%
		border_rewrite br = new border_rewrite();

request.setCharacterEncoding("UTF-8");
int border_num = Integer.parseInt(request.getParameter("border_num"));
br.con1();
br.ps=br.conn.prepareStatement("select border_title,border_contents from border where border_num=?");
br.ps.setInt(1, border_num);
br.rs=br.ps.executeQuery();
br.rs.next();

%>
<form name="new" method="post" action="border_main.jsp">
글 제목:<input type="text" name="border_title" size="50" value="<%=br.rs.getString("border_title")%>"><p>

글 내용:<input type="text" name="border_contents" value = "<%=br.rs.getString("border_contents")%> style="width:400px; height:100px;">

<input type="submit" value="글 작성완료">
</form>
</center>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%
	request.setCharacterEncoding("UTF-8");
	int garo = Integer.parseInt(request.getParameter("tr_cnt"));
	int sero = Integer.parseInt(request.getParameter("td_cnt"));
	
%>
</head>
<body>
<center>
<table border="1" width=70% height=80% cellspacing="10"
			 cellpadding="10">
<%for(int i=0; i<sero;i++){%>
<tr><%for(int k=0; k<garo;k++){ %>
<td></td>
<%} %>
</tr>
<%} %>
</table>
<a href="JavaScript:history.go(-1)">다시 입력하기</a>
</center>
</body>
</html>
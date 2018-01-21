<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	request.setCharacterEncoding("UTF-8");
	String msg = request.getParameter("msg");
	int number = Integer.parseInt(request.getParameter("number"));
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%for(int i=0;i<number;i++){%>
<%="반복할문자열 "+(i+1)+" 번째 반복중"+msg%><p>
<%}; %>


</body>
</html>
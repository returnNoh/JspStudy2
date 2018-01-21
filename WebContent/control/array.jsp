<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP 5번째 예제(배열의 값 출력)</title>
</head>
<body>

<%!
//배열선언
	String keyword[] = {"ScriptLet","Expression","Declaration","Comment"};


%> 
<center>
<table border="" width=200px>
<%for(int i=0; i<keyword.length;i++){ %>
<tr><td><%=i%></td><td><%=keyword[i] %></td></tr>
<%}; %>
</table>
</center>
</body>
</html>
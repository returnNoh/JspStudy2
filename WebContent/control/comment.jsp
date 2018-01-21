<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP 4번째 예제(주석)</title>
</head>
<body fgcolor="green">
<!-- 눈에 보이는 주석 -->
<%-- 눈에 안보이는 주석 --%>
<h1>JSP 주석 연습중</h1>

<!-- 8+5=<%=8+5 /*표현식 내부에 자바주석도 가능(안보이는주석)*/%> 
눈에 보이는 주석안에는 표현식을 쓸 수 있다.//주석에서 계산되서 소스에서만 보임
주석안에 있는 표현식이지만 잘못쓰면 오류가남--> 

<%--8+5 = <%=8+5%> 
눈에 안보이는 주석 안에는 표현식을 쓸 수 없다. --%>

</body>
</html>
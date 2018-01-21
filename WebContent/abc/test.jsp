<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP페이지 3번째(표현식2)</title>
</head>
<body>
<%!
		String name = "홍길동";
public String getName(){
	return name;
}
%>

<%
float f=2.3f;
int i = Math.round(f); // 정적메소드 

//날짜 -> Date
//외부의 특정 패키지에 존재하는 클래스를 불러오는방법 -> import
	java.util.Date d = new java.util.Date();

out.println("d의 값=>"+d);

%>
<hr><p>
정수 f의 반올림값은?<%=i %><p>
현재 날짜와 시간은? <%=d.toString() %><p> <!-- 세미콜론 X -->
함수 불러오기  이름은? <%=getName() %>

</body>
</html>
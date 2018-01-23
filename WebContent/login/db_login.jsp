<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

PreparedStatement ps = null;
ResultSet rs = null;
String sql=null;
Connection conn=null;
String url = "jdbc:oracle:thin:@192.168.0.16:1521:orcl"; // localhost에 아이피주소, 1521은 포트번호 orcl은 뭐였더라..
try {
	// 드라이버 로드
	Class.forName("oracle.jdbc.driver.OracleDriver"); // 접속할 데이터베이스의 드라이버를 메모리에 로드
	// 상위 패키지명.하위패키지명..OracleDriver(드라이버클래스명) => oracle6압축파일 내부의 드라이버경로

	// 연결객체 얻어오기
	conn = DriverManager.getConnection(url, "Scott", "tiger"); // 1접속할 컴퓨터위치 2접속할 계정명 3암호

	System.out.println("접속? :" + conn); // 그냥 확인용
	
	ps=conn.prepareStatement("select id,name from user where id=? and pass=?");
	ps.setString(1, request.getParameter("log_id"));
	ps.setString(2, request.getParameter("log_pass"));
	rs=ps.executeQuery();
	
	rs.next();
	session.setAttribute("id", rs.getString(1));
	session.setAttribute("name",rs.getString(2));
	
	
} catch (Exception e) {
	System.out.println("접속실패");
	%><script>alert("로그인 정보가 없습니다.");</script>
	<%
}


%>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<%!
String str="노인욱";
Connection conn=null;
PreparedStatement ps = null;
ResultSet rs = null;

public void con(){
	
	
	String url = "jdbc:oracle:thin:@192.168.0.16:1521:orcl"; // localhost에 아이피주소, 1521은 포트번호 orcl은 뭐였더라..
	try {
		// 드라이버 로드
		Class.forName("oracle.jdbc.driver.OracleDriver"); // 접속할 데이터베이스의 드라이버를 메모리에 로드
		// 상위 패키지명.하위패키지명..OracleDriver(드라이버클래스명) => oracle6압축파일 내부의 드라이버경로

		// 연결객체 얻어오기
		conn = DriverManager.getConnection(url, "Scott", "tiger"); // 1접속할 컴퓨터위치 2접속할 계정명 3암호

		System.out.println("접속? :" + conn); // 그냥 확인용
	} catch (Exception e) {
		System.out.println("접속실패");
}
	
}
		String border_number;
		String border_title;
		String id;
		String join;
%>
<%	request.setCharacterEncoding("UTF-8");
		int border_num = Integer.parseInt(request.getParameter("num"));
		con();
		ps=conn.prepareStatement("select border_title,border_contents from border where border_num=?");
		ps.setInt(1, border_num);
		rs=ps.executeQuery();
		rs.next();
%>

</head>
<body>
<center>
<form name="new" method="post" action="border_main.jsp">
글 제목:<input type="text" readonly name="border_title" size="50" value="<%=rs.getString("border_title")%>"><p>

글 내용:<input type="text" disabled name="border_contents" value = "<%=rs.getString("border_contents")%>" style="width:400px; height:100px;">

<input type="button" value="글 목록으로" onclick="JavaScript:history.go(-1)"><br>
<input type="button" value="글 삭제하기" onclick=""><br>
<a href="border_re_write.jsp">글 수정하기</a>
</form>
</center>
<%if(rs!=null)rs.close();
		if(ps!=null)ps.close();
			if(conn!=null)conn.close();
%>
</body>
</html>
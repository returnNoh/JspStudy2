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
<%
		request.setCharacterEncoding("UTF-8");

		con();
		if(request.getParameter("border_title")!=null){
		String title = request.getParameter("border_title");
		String contents = request.getParameter("border_contents");
		ps=conn.prepareStatement("insert into border values((select max(border_num)+1 from border),?,'system',0,?)");
		ps.setString(1, title);
		ps.setString(2, contents);
		ps.execute();
		}
		ps=conn.prepareStatement("select * from border order by border_num desc");
		rs=ps.executeQuery();
		
%>
</head>
<body>

<form>

<table align="center"
         width="70%" 
		  height="100%" 
		   border=""
		    cellspacing="10"
			 cellpadding="10"
			 name = "tab">

<%for(int i=0; i<10;i++){  %>
<tr><%if(rs.next()){ %>
<td><%=rs.getString("border_num")%></td>
<td><a href="border_contents.jsp?num=<%=rs.getString("border_num")%>"><%=rs.getString("border_title")%></a></td>
<td><%=rs.getString("border_id")%></td>
<td><%=rs.getString("border_join")%></td>
</tr>

<%}} %>
<tr>
<td>
<select name="select">
<option value="1"> 글 제목 </option>
<option value="2"> 글 번호 </option>
<option value="3"> 글쓴이 </option>
<option value="4"> 글 내용 </option>
</td>
<td>
<input type="text" name="search" placeholder="검색내용">
</td>
<td align="right">
<input  type="button" value="글 작성" onclick="self.location='border_new.jsp'">
</td>

</tr>

</table>




</form>
<%if(rs!=null)rs.close();
		if(ps!=null)ps.close();
			if(conn!=null)conn.close();
%>
</body>
</html>
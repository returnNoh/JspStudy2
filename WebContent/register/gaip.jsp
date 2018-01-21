<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*,java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>성공했다!</title>
<%!String str="노인욱";
Connection conn=null;
PreparedStatement ps = null;

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

%>
<%
con();
request.setCharacterEncoding("UTF-8");
String ID = request.getParameter("ID");
String yab= request.getParameter("yab");
String pw = request.getParameter("pw"); 
String name = request.getParameter("name");
String mail1 = request.getParameter("mail");
String mail2 = request.getParameter("mail2");
String mail = mail1+" "+mail2;
String juso1 = request.getParameter("juso1");
String juso2 = request.getParameter("juso2");
String juso3 = request.getParameter("juso3");
String juso = juso1+" "+juso2+" "+juso3;
try{
ps = conn.prepareStatement("insert into user value(?,?,?,?,?,?)");
ps.setString(1, ID);
ps.setString(2, yab);
ps.setString(3, pw);
ps.setString(4, name);
ps.setString(5, mail);
ps.setString(6, juso);
ps.executeUpdate();
if(ps!=null)ps.close();
if(conn!=null)conn.close();
}catch(Exception e){
	out.println("삽입오류"+e);
}
%>
</head>
<body>
<h1>입력받은것을 사용하여 출력</h1>
<%="입력받은 아이디는"+ID+"입니다." %><br>
<%="입력받은 닉네임은"+yab+"입니다." %><br>
<%="입력받은 비번은"+pw+"입니다." %><br>
<%="입력받은 이름은"+name+"입니다." %><br>
<%="입력받은 이메일은"+mail1+"@"+mail2+"입니다." %><br>
<%="입력받은 주소는"+juso1+" "+juso2+" "+juso3+"입니다." %><br>
<%="입력받은 주소의 결합(juso)는"+juso+"입니다" %>
<input type="button" value = "메인 페이지로" onclick="self.location='../main.jsp'">

</body>
</html>
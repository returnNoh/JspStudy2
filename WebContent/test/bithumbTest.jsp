<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.*,java.util.*,java.net.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<%

try{
	String coinName="BTC";
	URL url = new URL("https://api.bithumb.com/public/recent_transactions/"+coinName);
	String postSql="&offset=0&count=20";
	URLConnection conn = url.openConnection();
	
	conn.setDoOutput(true);
	OutputStreamWriter wr = new OutputStreamWriter(conn.getOutputStream());
	wr.write(postSql);
	wr.flush();
	BufferedReader reader = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	StringBuilder sb = new StringBuilder();
	String line=null;
	
	while((line=reader.readLine())!=null){
		sb.append(line+"\n");
	}
%>


</head>
<body>
<table border="1">

<%
while((line=reader.readLine())!=null){
%>
<tr><td>
<%sb.append(line);%><br>
</td></tr>

<%}
out.println(sb);
}catch(Exception e){System.out.println("못불러옴"+e);}%>
</table>

</body>
</html>
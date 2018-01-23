<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login...</title>
<script>
function time(){
	setTimeout(
		location.href='../main.jsp'
	, 3000);
}
</script>

</head>
<body onload="time()">
<h1>로그인중...</h1>
<jsp:include page="db_login.jsp" flush="false" />

<script>

</script>
</body>
</html>
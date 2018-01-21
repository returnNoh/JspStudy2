<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>

function check_null(){
	if(document.getElementById("text_id").value==""){
		document.getElementById("text_id").placeholder="반드시 입력해야 합니다."
		return;
	}
	else {
		if(document.getElementById("text_pass").value==""){
		document.getElementById("text_pass").placeholder="반드시 입력해야 합니다."
		return;
	}
	}
	document.myform.submit();
}

</script>
</head>
<body>

<form name = "myform" method="post" action="../log_main.jsp">

<table align="center"
         width="70%" 
		  height="100%" 
		   border=""
		    cellspacing="10"
			 cellpadding="10"
			 name = "tab">
			 <tr>
			 <td>
			 <h3>아이디:</h3>
			 </td>
			 <td>
			 <input type="text" id="text_id" name="log_id">
			 </td>
			 </tr>
			 <tr>
			 <td>
			 <h3>비번:</h3>
			 </td>
			 <td>
			 <input type="text" id="text_pass" name="log_pass">
			 </td>
			 </tr>
			 <tr>
			 <td>
			 <input type="button" value="회원가입" onclick="self.location='../register/가입예제.jsp'">
			 </td>
			 <td>
			 <input type="button" value="로그인" onclick="check_null()">
			 </td>
			 </tr>
			 </table>


</from>

</body>
</html>
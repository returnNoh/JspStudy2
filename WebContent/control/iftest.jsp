<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>요청을 받아서 처리해주는 페이지</title>
<%!
	String msg; // 전달받은 값 ==영어 -> 한글로 변경해서 출력하기 위해..
	
%>
<%	//입력방식이 post일경우 인코딩설정을 해야한다.
		request.setCharacterEncoding("UTF-8");
		String color=request.getParameter("color");
		String name=request.getParameter("name");
		
		System.out.println("name=>"+name+"\ncolor=>"+color);
		//equals() -> 대소문자 구분
		if(color.equals("blue")){
				msg="파란색";
		}else if(color.equals("red")){
			msg="빨강색";
	}else if(color.equals("yellow")){
		msg="노랑색";
}else if(color.equals("white")){
	msg="하양색";
}else{
	msg="파란색";
}
		
%>
</head>
<body bgcolor="<%=color %>">
<h1>이름은 <%=name %> 입니다.</h1>
선택된 색상은 <%=msg %> 입니다.
<!-- history.back() 뒤로가기. == history.go(-1) -->
</body>
</html>
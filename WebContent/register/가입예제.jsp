<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title> 가입신청 예제 </title>

  <style>
td.x{background-color:#ffffcc;
     font-weight:bold;
	 text-align:center;
}

body{background:#fff url(../images/bg3.jpg) repeat-x bottom}

  </style>
  <script>
  //var gun = document.myform.tab.tr1.td1.ID2.value
  function Unique(value){
	  if(value=="아이디 중복체크")
	  open("study/Unique.html","w","left=300,top=250,width=400,height=200,toolbar=yes,scrollbars=yes,resizable=no")
  	  else if(value=="닉네임 중복체크")
  	  open("study/Unique2.html","w","left=300,top=250,width=400,height=200,toolbar=yes,scrollbars=yes,resizable=no")
  }
  
  
  function Cleck(){ // 회원가입시 공백체크, 글자수 누락 체크
	  
	  //아이
	  if(document.myform.ID.value==""){
		  document.myform.ID.placeholder="필수 입력"
	  }
	  else if(document.myform.ID.value.length<6 || document.myform.ID.value.length>10){
		 alert("아이디는 6글자에서 10글자 사이로 입력해 주십시오.")
		 document.myform.ID.placeholder="필수 입력"
	  }
	  //닉네임
	  if(document.myform.yab.value==""){
		  document.myform.yab.placeholder="필수 입력"
	  }
	  //비밀번호
	  if(document.myform.pw.value==""){
		  document.myform.pw.placeholder="필수 입력"
	  }
	  else if(document.myform.pw.value.length<6 || document.myform.pw.value.length>10){
		 alert("비밀번호는 6글자에서 10글자 사이로 입력해 주십시오.")
		 document.myform.pw.placeholder="6글자에서 10글자"
		 
	  }
	  if(document.myform.name.value==""){
		  document.myform.name.placeholder="필수 입력"
	  }
	 
	  
	  
  }
  
  </script>
 </head>
 <body onload="document.myform.ID.focus();">
<form name="myform" method="post" action = "gaip.jsp">

<header>
<h1><center> 회원가입 양식 연습 <center></h1>
</header>
 <table align="center"
         width="70%" 
		  height="100%" 
		   border=""
		    cellspacing="10"
			 cellpadding="10"
			 name = "tab">
			 
			 <tr name = "tr1">
			  <td class="x" colspan="2">아이디＊</td>
			
			  <td name="td1" colspan="4"><input type="ID" name="ID" size="15" maxlength="15" placeholder="<user id>" required>
			  <input type="button" id="ID2" value="아이디 중복체크" onclick="Unique(this.value)"></td>
			  </tr>
			 
			  <tr name="tr2">

			  
			   <td class="x" colspan="2">별명＊</td>
			
			  <td name="td2" colspan="4"><input type="text" name="yab" size="15" maxlength="15" required>
			  <input type="button" id="yab2" value="닉네임 중복체크" onclick="Unique(this.value)"></td>
			   </tr>

			    <tr>
			  
			   <td class="x" colspan="2">비밀번호＊</td>
			
			  <td colspan="4"><input type="password" name="pw" size="15" maxlength="15" placeholder="<password> required"></td>
			   </tr>

			    <tr>
			  
			   <td class="x" colspan="2" >성명＊</td>
			
			  <td colspan="4"><input type="name" name="name" size="15" maxlength="15" required></td>
			   </tr>

			    <tr>
			  
			   <td class="x" colspan="2" >전자우편＊</td>
			
			  <td colspan="4"><input type="text" name="mail" size="10" maxlength="10" required>
			  @
			  <input type="text" name="mail2" size="15" maxlength="15" required>
			  <select name="email">
			  <option>직접입력</option>
			  <option>네이버</option>
			  <option>다음</option>
			  <option>구글</option>
			  <option>야후</option>
			  <option>msn</option>

			  </td>
			   </tr>

			    <tr>
			  
			   <td class="x" colspan="2">주소＊</td>
			
			  <td colspan="4"><input type="text" name="juso1" size="5" maxlength="5" valign="top" required>
			  <input type="button" value="우편번호 찾기" onclick="alert('미구현')"><br>
			  <input type="text" name="juso2" size="15" maxlength="15" valign="bottom" required>
			  <input type="text" name="juso3" size="20" maxlength="20" valign="bottom" required placeholder="상세주소를 입력해주세요.">
			  </td>

			   </tr>

			    <tr>
			  
			   <td class="x" colspan="2">전화번호</td>
			
			  <td colspan="4">
			  <select name="number">
			  <option>선택</option>
			  <option>02</option>
			  <option>061</option>
			  <option>031</option>
			  </select>
			  -<input type="text" name="num1" size="10" maxlength="4">
			  -<input type="text" name="num2" size="10" maxlength="4">

			  
			  </td>
			   </tr>

			    <tr>
			  
			   <td class="x" colspan="2">휴대전화</td>
			
			  <td colspan="4">
			  <select name="number">
			  <option>선택</option>
			  <option>010</option>
			  <option>011</option>
			  <option>016</option>
			  </select>
			  -<input type="text" name="num1" size="10" maxlength="4">
			  -<input type="text" name="num1" size="10" maxlength="4">
			  </td>
			   </tr>

			    <tr>
			  
			   <td class="x" colspan="2">생년월일</td>
			
			  <td colspan="4">
			  <select name="year">
			  <option>선택</option>
			  <option>1999</option>
			  <option>1993</option>
			  <option>1989</option>
			  </select>
			  년

			   <select name="mmm">
			  <option>선택</option>
			  <option>12</option>
			  <option>10</option>
			  <option>11</option>
			  </select>
			  월

			   <select name="da">
			  <option>선택</option>
			  <option>2</option>
			  <option>3</option>
			  <option>4</option>
			  </select>
			  일

			  <input type="radio" name="dd" selected>양력
			  <input type="radio" name="dd">음력


			  
			  </td>
			   </tr>

			    <tr>
			  
			   <td class="x" colspan="2">결혼</td>
			
			  <td colspan="4">
			  <input type="radio" name="marry" selected>미혼
			  <input type="radio" name="marry">기혼

			  </td>
			   </tr>

			    <tr>
			  
			   <td class="x" colspan="2">추천인 아이디</td>
			
			  <td colspan="4" ><input type="text" name="marry" bgcolor="blue"></td>

			  </tr>

			  <tr>
			  <td colspan="6" align="center">
			  
			  <input type="submit" value="회원가입">  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
			  <input type="reset" value="초기화">

			 </tr>
</form>
 
 </table>

 </body>
</html>

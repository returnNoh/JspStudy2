<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title> 레이아웃 과제 </title>
<%request.setCharacterEncoding("UTF-8");
	if(request.getParameter("log_id")!=null){
		
	}
%>


  <style>
	  

@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);

*{padding:0;
   margin:0 auto;   
   
   }
   #web{width:1000px;	
            font-family: 'Jeju Gothic', serif;
            margin:0 auto;
			padding:px;
			border:3px solid;
			background-color:#ffffff;

			
			}
			 
	#mm{
        width:70%         ;
		height:50px        ;
		border:1px solid black;
	    float:left; /*왼쪽부터*/
		position:relative; /*특정한 태그를 중심(h1)*/
		left:5%;  
		top:30px; /*로고 텍스트의 오른쪽에 배치*/
        z-index:5; /* 숫자는 임의로 부여가 가능->숫자클수록 맨앞에 위치 */
		box-shadow:0px 5px 10px;
		background-color:#FFC107;
		
}

	h1{ /*로고*/ 
        float:left;  
        position:relative;
        left:3%; /*x좌표 */
        top:40px; /*y좌표*/
		
		background-color:#FFC107;
		}
       
.main1{
    /*display:none;*/
	position:absolute;
	top:10px; /* 상위 메뉴가 top:20px */
	left:10%;
	font-size:20px;
	

}
#bo{
              position:absolute;
			  left:10%;
			  top:55px;
       } 


	.main2{
	
	position:absolute;
	left:30%;
	top:10px;
	font-size:20px;
	}
	#bo1{
              position:absolute;
			  left:30%;
			  top:55px;


	}
	.main3{
	position:absolute;
	left:50%;
	top:10px;
	font-size:20px;
	}
	#bo2{
              position:absolute;
			  left:50%;
			  top:55px;
	
	}

	.main4{
	position:absolute;
	left:70%;
	top:10px;
	font-size:20px;
	}

	#bo3{
              position:absolute;
			  left:70%;
			  top:55px;
	
	}
	



    li{list-style-type:none;}
   .sub5{
   border:solid;
   float:left;
   width:350px;
   margin-bottom:10px;
   margin-left:30px;
    box-shadow:-5px 5px 20px;
	background-color:white;
   }
   .sub5:hover{background-color:blue;
   .right(display:none;)
   }
    .sub2{clear:both;
	border:solid;
   float:right;
   width:350px;
   margin-bottom:10px;
   margin-right:30px;
   box-shadow:5px 5px 20px;
   background-color:white;
   }
     .sub3{clear:both;
	 border:solid;
   float:left;
   width:350px;
   margin-bottom:10px;
   margin-left:30px;
    box-shadow:-5px 5px 20px;
	background-color:white;
   }
      .sub4{clear:both;
	  border:solid;
   float:right;
   width:350px;
   margin-bottom:10px;
   margin-right:30px;
   box-shadow:5px 5px 20px;
   background-color:white;
   }
   
      .right{ 
	  border:solid;
	  float:right;
	  width:45%;
	  height:300px;
	  margin-bottom:100px;
	  margin-right:100px;
	  box-shadow:5px 5px 20px;
	  
	  
	  }
	   .left{
	   border:solid;
	  float:left;
	  width:45%;
	  height:350px;
	  margin-bottom:100px;
	  margin-left:100px;
	   box-shadow:-5px 5px 20px;
	   
	  }

#log {
        
		 float:right;
		 padding:1px;
         position:relative;
		 right:3%;
		 top:30px;
		 border:3px double;
		 width:70px;
		 height:65px;
		 box-shadow:5px 5px 10px;
		 background-color:#FFC107;
		 color:black;
		 }
		 .log1:hover{
      background-color:mediumpurple; /*배경색*/
      color:white; /*글자색*/}
	  .log2:hover{
      background-color:mediumpurple; /*배경색*/
      color:white; /*글자색*/
}


	  .cycle-slideshow{ clear:both;}

	 

#ul1 li,#ul1 li a{
    z-index:15;
	color:white;
	   
}

.cycle-slideshow {
position:relative;
top:50px;
left:0px;
margin-bottom:150px;
border:outset;
box-shadow:0px 10px 15px;
background-color:white;


}

.cycle-slideshow img{
width:350px;
height:300px;
}

.sub5 > figure > img { width:350px; height:350px; }
.sub2 > figure > img { width:350px; height:350px; }
.sub3 > figure > img { width:350px; height:350px; }
.sub4 > figure > img { width:350px; height:350px; }

	 

	  footer{clear:both;
position:relative;
border:1px solid black;
height:100px;
top:150px;
margin:0 auto;
background-color:#FF6F00;
} /*꼬리말의 글자들을 오른쪽에 배치*/

.nv3 {
position:relative;
top: 20px;
}

.nv3 > ul > li{
float:left;
margin-left:4.3%;             
}

.nv4 {
margin-top:20px;
 position:relative;
 top:20px;

}
.nv4 > ul > li{
float:left;
margin-left:4.3%
}
	 
	 .sub{
    display:none;
	position:absolute;
	top:40px; /* 상위 메뉴가 top:30px */
	left:80px;
}
/*ul태그 밑의 li태그와 ul태그 밑에있는 li 밑의 모든 a태그에 적용*/
    .sub li,.sub li a{
    z-index:100;
	color:green;
}

.sub1 {/*3단계 하위메뉴*/
       display:none;
	   float:right;
	   position:relative;
	   left:5px;
	   border:solid;
}
   

   .main1,.main2,.main3,.main4:visited{color:blue;text-decoration:none;}
   .main1,.main2,.main3,.main4:link{color:black;text-decoration:none;}

.main1:hover{
      background-color:mediumpurple; /*배경색*/
      color:white; /*글자색*/
}

.main2:hover{
      background-color:mediumpurple; /*배경색*/
      color:white; /*글자색*/
}

.main3:hover{
      background-color:mediumpurple; /*배경색*/
      color:white; /*글자색*/
	  }
	  .main3:hover{
      background-color:mediumpurple; /*배경색*/
      color:white; /*글자색*/
	  }

.main4:hover{
      background-color:mediumpurple; /*배경색*/
      color:white; /*글자색*/
}
h2{
text-decoration:blink;
}
#pl1 {position: relative;
top:0px;
      width:100%;
      height:150px;
      background-color:#FFC107
      }
	  #pl2 {position: relative;
      top:0px;
      width:100%;
      height:360px;
      background-color:#FFECB3
      }
	  #pl3 {position: relative;
      top:0px;
      width:100%;
      height:408px;
      
      }
	  #pl4 {position: relative;
      top:0px;
      width:100%;
      height:455px;
      background-color:#FFD54F
      }
	  #pl5 {position: relative;
      top:0px;
      width:100%;
      height:405px;
      
      }
	  
  </style>

 <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
 <script src="js/main.js"></script>
 <script src="js/jquery.cycle2.js"></script>

  
 </head>
 <body>

 <div id="web"><!-- 제일 외곽 레이아웃 -->
<div id="pl1">
      <header id="head"><h1>보드게임</h1>

      
	  
	      <nav id="mm">
		          <div> <a href="#" class="main1"><b>시타델</b></a>
				          <ul class="sub" id="bo">
						         <li>       <ul>
								                            <li><a href="#">기본 배치</a></li>
															<li><a href="#">승리 목표</a></li>
															<li><a href="#">진행 방식</a></li>
															<li><a href="#">역할</a>

															
															
															
															</li>
															<li><a href="#"  class="a1">인원별 룰</a>
															<ul class="sub1">
															     <li><a href="#">4인</a></li>
																 <li><a href="#">5인</a></li>
																 <li><a href="#">6인</a></li>

															</ul>
															</li>
															<li><a href="#">점수 계산</a></li>
								                </ul>								 							 
								 </li>
																 
						  </ul>
				  

				  </div>
				  				  <div><a href="#" class="main2"><b>보난자</b></a>
								  <ul class="sub" id="bo1">
									                                              <li><a href="#">기본 배치</a></li>
																				  <li><a href="#">승리 목표</a></li>
																				  <li><a href="#">진행 방식</a></li>
																				  <li><a href="#">인원별 룰</a></li>
																				  <li><a href="#">각각 역할</a></li>
								  </ul>
								  </div>

				                  <div><a href="#" class="main3"><b>아발론</b></a>
								  <ul class="sub" id="bo2">
									                                              <li><a href="#">기본 배치</a></li>
																				  <li><a href="#">승리 목표</a></li>
																				  <li><a href="#">진행 방식</a></li>
																				  <li><a href="#">인원별 룰</a></li>
																				  <li><a href="#">각각 역할</a></li>
								  </ul>
								  </div>
								    
									<div><a href="#" class="main4"><b>멘</b></a>
								  <ul class="sub" id="bo3">
									              <li><a href="#">기본 배치</a></li>
												  <li><a href="#">진행 방식</a></li>
												  <li><a href="#">승리 조건</a></li>
												  <li><a href="#">예외 승리</a></li>
								  </ul>
								  
								  </div>
		  </nav> <!--상단 메뉴 (왼쪽)7-->
		  
		<%if(request.getParameter("id")==null){ %>
		        <nav id="log">
				          <ul>
				              <li><a class="log1" href="login/로그인.jsp">login</a></li><br>
							  <li><a class="log2" href="register/가입예제.jsp">회원가입</a></li>
						  </ul>

				</nav> <!--로그인부분 (상단 우측)3-->
		<%} %>
		
				</header>
			</div>
      
				<div class="cycle-slideshow"> <!-- 애니메이션 줄 이미지 3개 -->
		   <img src="img/catan.jpg" alt="카탄">
		   <img src="img/puko.jpg" alt="푸에르토리코">
		   <img src="img/pinces.jpg" alt="피렌체의 제후">
		    
		   </div>
		   
<div id="pl2">
		   <div class="sub5">
						     <figure>
							     <img src="img/city.jpg" alt="시타델 설명">
								  
							 </figure>
			</div>

			<div class="right" name="right">
			<h2><center>시타델</center></h2>
			<p>시타델이 스테디하게 사랑받는 이유는<br> 간단한 게임 구성물과 이해하기 쉬운 룰, <br>그럼에도 불구하고 잘 잡혀있는 직업 간의 밸런스로 인해 다른<br>매니악한 보드게임들에 비하면 진입장벽이 낮다는 점이다.<p><br> 직업이 18개나 된다 하더라도 실제 게임에서 쓰이는 것은<br> 8개[3]뿐이며, 직업들에 대한 설명도 이해하기 쉽게 카드에 <br> 다 적혀있어, 모든 직업에 대한 설명을 암기하지 않는다 <br>하더라도, 대충 그 설명을 보고 해도 플레이는 가능하다.</p>
			
			</div>
		</div>

		<div id="pl3">
			<div class="sub2">
						     <figure>
							     <img src="img/avalon.jpg" alt="아발론 설명">
								   
							 </figure>
			</div>

            <div class="left">
			<h2><center>레지스탕스 아발론</center></h2>
			<p>마피아(게임)이라고 알려져있는, 오프라인 친목게임을 <br>보드게임으로 만든 것. 마피아 게임의 규칙을 좀 더 <br> 잘 정비하고, 성문화하여 아서 왕 전설의 세계관을 입힌 게임.</p>
<p>원조는 레지스탕스라는 게임이며 아발론은 거기에 테마와 <br>추가 규칙을 덧붙인 것이다.</p>
<br>
<p>게임의 목표는 멀린이 자신의 정체를 들키지 않은 상황에 <br>최대 5라운드까지 진행되는 퀘스트에서 세번을 성공시키면<br> 선의 세력의 승리이고, 그 외의 경우에는 <br>악의 세력의 승리이다. 혹은 한라운드에서 다섯번이상 원정대<br> 구성에 실패하는경우에도 악의 세력의 승리이다.</p>
			
			</div>
		</div>


<div id="pl4">

			<div class="sub3">
						     <figure>
							     <img src="img/bonan.jpg" alt="보난자 설명">
								
							 </figure>
			</div>

			<div class="right">
			<h2><center>보난자</center></h2>
			콩을 심고 물물교환하고 수확해 팔아서 떼돈을 버는 게임이다. 11종류의 콩이 있고, 플레이어는 원하는 종류를 골라 키워야 한다. 밭 하나엔 같은 콩만 심어야 하고<br> 정해진 순서대로만 콩을 심어야 하는 제약이 있으므로<br>서로서로 필요한 콩을 교환할 필요가 있는데, 이 물물교환에서 느낄 수 있는 중상모략과 뒤통수,아기자기함이 포인트.<br> 떠들썩한 시장바닥 분위기를 내는 데 제격인 게임이다.
<p><br>
많은 사람이 참가할 수 있고 규칙이 쉬우며, 사람들끼리<br> 상호작용하는 게 많아서 보드카페나 모임에서 초보자들에게도 곧잘 추천해주기도 한다.
			
			</div>
		</div>


		<div id="pl5">
			<div class="sub4">
						     <figure>
							     <img src="img/hal.jpg" alt="할리갈리 설명">
								     
							 </figure>
			</div>

			  <div class="left">
			  <h2><center>할리갈리</center></h2>
			  귀여운 카드의 과일들과 10초만에 누구든 이해 가능한 룰은 뛰어난 장점중 하나이며, 그런 게임에서 긴장감과 초조함등을 모두 구현해 내 뛰어난 보드게임이란 평을 받고 있다. 	
			  
			  <p><br>일단 룰이 간단하기 때문에 보드 게임방에 처음 온 사람들이 많이 하게 되는 게임이지만, 그 실체는 사람의 피를 말리는 막장게임이다.</p>
			</div>
		</div>

			<footer>
			<nav class="nv3">
		     <ul>
				<li><a href="#">서비스 이용약관</a></li>
				<li class="|1">|</li>
				<li><a href="#">개인정보처리 방침</a></li>
				<li class="|1">|</li>
				<li><a href="#">고객서비스 센터</a></li>
				<li class="|1">|</li>
				<li><a href="#">영상정보처리기 운영방침</a></li>
		     </ul><br>
		  </nav>
		  <nav class="nv4">
		     <ul>
				<li>facebook:kopswq@naver.com</li>
				<li>e-mail:kopswq@naver.com</li>
				<li>Tel:010-7151-2187</li>
				<li>Fax:02-123-4567</li>
		     </ul>
		  </nav>
			</footer>
						   



 </div>

 </body>
</html>

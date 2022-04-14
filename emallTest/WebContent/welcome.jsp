<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import = "java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>welcome</title>
</head>
<body>

	<!-- CSS only -->
	<!-- 부트스트랩 쓰기 위해 붙이는 태그 <body> 아래 위치-->
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
		crossorigin="anonymous">


<%@include file = "_header.jsp"%>


	<%!//자바나라의 선언문//선언문		//<%! 선언문에다 변수 선언한 이유?
	//선언문에서 선언하면 전역변수가 되기 때문에 스크립틀릿에서 하면 지역변수가 되어서
	String greeting = "Welcome to e-MALL";
	String tagline = "Welcome to Web Market!!!";%>





<!-- 표현문 -->
	<!-- html 주석 단축키 ctrl shift / -->
	<div class="alert alert-secondary" role="alert"><!-- html5 이상 전용으로 박스형태의 컨테이너를 만드는 구문 -->
		<!-- 부트스트랩에서 가져온 class="alert alert-secondary" role="alert"> -->
		<div class="container">

			<h1 class="display-3">
				<%=greeting%>
			</h1>


		</div>
	</div>


	<div class="container">
		<div class="text-center">	<!-- 텍스트를 가운데로 -->
			<h3><%=tagline%></h3>
			<%
				Date day = new Date();
				int hour = day.getHours();
				int minute = day.getMinutes();
				int second = day.getSeconds();
				
				String CT = hour + ":" + minute + ":" + second;
				out.print("현재 접속 시각: " + CT + "\n");
			%>
			
		</div>
		<hr><!-- 믿줄 -->
	</div>


<%@include file = "_footer.jsp"%>


	<!-- JavaScript Bundle with Popper -->
	<!-- 부트스트랩 쓰기 위해 붙이는 태그 </body> 위에 위치 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>


</body>
</html>
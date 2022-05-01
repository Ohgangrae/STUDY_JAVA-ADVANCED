<%@page import="jdbc.ProductDAO"%>
<%@page import="jdbc.ProductDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!//선언문
	String title = "상품 상세";%>
	<!-- CSS only -->
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
		crossorigin="anonymous">

	<%@ include file="/_header.jsp"%>
	<!-- '/' 를 붙이는 이유 같은 폴더(product)에 없고 webcontent 에 헤더 풋터가 있기때문에 하나를 올려줘야함 -->

	<!-- 표현문 -->
	<!-- html 주석 단축키 ctrl shift / -->
	<div class="alert alert-secondary" role="alert">
		<!-- html5 이상 전용으로 박스형태의 컨테이너를 만드는 구문 -->
		<!-- 부트스트랩에서 가져온 class="alert alert-secondary" role="alert"> -->
		<div class="container">
			<h1 class="display-3">
				<%=title%>
			</h1>
		</div>
	</div>

	<%
		String pid = request.getParameter("pid");

	ProductDTO product = (new ProductDAO()).getDetail(pid);
	%>

	<div class="container">
		<div class="row">
			<div class="col-ma-5">
				<img src="/images/<%=product.getPimage() %>" style="width: 100%">
			</div>
			<div class="col-ma-6">
				<h3><%=product.getPname()%></h3>
				<p><%=product.getPdesc()%>
				<p>
					<b>상품코드 : <%=product.getPid()%></b>
				<p>
					<b>상품가격 : <%=product.getPprice()%></b> <a href=""
						class="btn btn-info">상품주문</a> <a href="productlist.jsp"
						class="btn btn-secondary">상품목록</a>
			</div>
		</div>
	</div>






	<%@ include file="/_footer.jsp"%>
	<!-- '/' 를 붙이는 이유 같은 폴더(product)에 없고 webcontent 에 헤더 풋터가 있기때문에 하나를 올려줘야함 -->

	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

</body>
</html>
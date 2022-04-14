<%@page import="jdbc.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품목록</title>
</head>
<body>
	<%!//선언문
	String title = "상품 목록";%>



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

	<div class="container">
		<div class="row" align="center">
			<!-- 행 방향으로 가운데 배치 -->
			
			<%		//for 문 (시작)
			ArrayList<ProductDTO> products = (new ProductDAO()).getList();
			
			
				for (ProductDTO product : products){
					
				
			%>
			
			
			<!-- 1칸짜리이기 때문에 for문을 돌려서 늘려야함 -->
			<div class="col-md-4">
				<!-- 4개씩 -->
				<img src="" style="width: 100%">
				<!-- 칸에 꽉 채워라 -->
				<h3><%=product.getPname() %></h3>
				<p><%=product.getPprice() %>원
				<p><a href="productdetail.jsp?pid=<%=product.getPid() %>" class="btn btn-secondary" role="button">상세정보</a>
				<!-- 버튼을 누르면 상세정보 링크로 들어간다 -->
			</div>
			
			<% } //for문 (끝) %>
			
		</div>
		<hr>
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
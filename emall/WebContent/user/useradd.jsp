<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 등록</title>
</head>
<body>
	<%!//선언문
	String title = "회원 등록";%>
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


	<div class="container" align="Center">
		<form action="useradddb.jsp" method="post">

			<div class="form-group row">
				<!-- tr개념 -->
				<label class="col-sm-2">아이디</label>
				<!-- td개념 -->
				<div class="col-sm-3">
					<!-- td시작 -->
					<input type="text" name="uid" class="form-control">
					<!-- td끝 -->
				</div>
			</div>

			<div class="form-group row">
				<!-- tr개념 -->
				<label class="col-sm-2">암호</label>
				<!-- td개념 -->
				<div class="col-sm-3">
					<!-- td시작 -->
					<input type="password" name="upw" class="form-control">
					<!-- td끝 -->
				</div>
			</div>

			<div class="form-group row">
				<!-- tr개념 -->
				<label class="col-sm-2">이름</label>
				<!-- td개념 -->
				<div class="col-sm-3">
					<!-- td시작 -->
					<input type="text" name="uname" class="form-control">
					<!-- td끝 -->
				</div>
			</div>

			<div class="form-group row">
				<!-- tr개념 -->
				<label class="col-sm-2">성별</label>
				<div class="form-check form-check-inline">
					  <input name="ugender" class="form-check-input" type="radio" id="inlineCheckbox3" value="남성">
					  <label class="form-check-label" for="inlineCheckbox3">남성</label>
					</div>
					
					<div class="form-check form-check-inline">
					  <input name="ugender" class="form-check-input" type="radio" id="inlineCheckbox3" value="여성">
					  <label class="form-check-label" for="inlineCheckbox3">여성</label>
					</div>

			<div class="form-group row">
				<!-- tr개념 -->
				<label class="col-sm-2">생년월일</label>
				<!-- td개념 -->
				<div class="col-sm-3">
					<!-- td시작 -->
					<input type="text" name="ubirth" class="form-control">
					<!-- td끝 -->
				</div>
			</div>
			
			<div class="form-group row">
				<!-- tr개념 -->
				<label class="col-sm-2">이메일</label>
				<!-- td개념 -->
				<div class="col-sm-3">
					<!-- td시작 -->
					<input type="text" name="uemail" class="form-control">
					<!-- td끝 -->
				</div>
			</div>
			
			<div class="form-group row">
				<!-- tr개념 -->
				<label class="col-sm-2">전화번호</label>
				<!-- td개념 -->
				<div class="col-sm-3">
					<!-- td시작 -->
					<input type="text" name="uphone" class="form-control">
					<!-- td끝 -->
				</div>
			</div>
			
			
			<div class="form-group row">
				<!-- tr개념 -->
				<label class="col-sm-2">주소</label>
				<!-- td개념 -->
				<div class="col-sm-3">
					<!-- td시작 -->
					<input type="text" name="uaddr" class="form-control">
					<!-- td끝 -->
				</div>
			</div>

			


			<div class="form-group row">
				<!-- tr개념 -->
				<label class="col-sm-2">상품종류</label>
				<!-- td개념 -->
				<div class="col-sm-3">
					<!-- td시작 -->
					<input type="radio" name="pcondi" value="신제품">
					<input type="radio" name="pcondi" value="중고품">
					<input type="radio" name="pcondi" value="재고품">
					<!-- td끝 -->
					
					<div class="form-check form-check-inline">
					  <input name="pcondi" class="form-check-input" type="radio" id="inlineCheckbox1" value="신상">
					  <label class="form-check-label" for="inlineCheckbox1">신상</label>
					</div>
					<div class="form-check form-check-inline">
					  <input name="pcondi" class="form-check-input" type="radio" id="inlineCheckbox2" value="중고">
					  <label class="form-check-label" for="inlineCheckbox2">중고</label>
					</div>
					<div class="form-check form-check-inline">
					  <input name="pcondi" class="form-check-input" type="radio" id="inlineCheckbox3" value="재고">
					  <label class="form-check-label" for="inlineCheckbox3">재고</label>
					</div>
					<div class="form-check form-check-inline">
					  <input name="pcondi" class="form-check-input" type="radio" id="inlineCheckbox3" value="기타">
					  <label class="form-check-label" for="inlineCheckbox3">기타</label>
					</div>
					
					
				</div>
			</div>
			
  
  
  
  <input name = "images" class="form-control form-control-sm" id="formFileSm" type="file">
</div>
			

			<div class="form-group row" align="center">
				<div class="col-sm-10">
					<input type="submit" class="btn btn-primary" value="등록">
					<input type="reset" class="btn btn-danger" value="취소" onclick="reset()">


				</div>
		</form>
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
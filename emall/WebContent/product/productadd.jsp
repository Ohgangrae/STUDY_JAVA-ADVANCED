<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록</title>
</head>
<body>
	<%!//선언문
	String title = "상품 등록";%>
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
		<form action="productadddb.jsp" method="post" enctype="multipart/form-data">

			<div class="form-group row">
				<!-- tr개념 -->
				<label class="col-sm-2">상품코드</label>
				<!-- td개념 -->
				<div class="col-sm-3">
					<!-- td시작 -->
					<input type="text" name="pid" class="form-control">
					<!-- td끝 -->
				</div>
			</div>

			<div class="form-group row">
				<!-- tr개념 -->
				<label class="col-sm-2">상품명</label>
				<!-- td개념 -->
				<div class="col-sm-3">
					<!-- td시작 -->
					<input type="text" name="pname" class="form-control">
					<!-- td끝 -->
				</div>
			</div>

			<div class="form-group row">
				<!-- tr개념 -->
				<label class="col-sm-2">상품가격</label>
				<!-- td개념 -->
				<div class="col-sm-3">
					<!-- td시작 -->
					<input type="text" name="pprice" class="form-control">
					<!-- td끝 -->
				</div>
			</div>

			<div class="form-group row">
				<!-- tr개념 -->
				<label class="col-sm-2">상품설명</label>
				<!-- td개념 -->
				<div class="col-sm-3">
					<!-- td시작 -->
					<textarea name="pdesc" cols="50" rows="8" class="form-control"></textarea>
				</div>
			</div>

			<div class="form-group row">
				<!-- tr개념 -->
				<label class="col-sm-2">제조사</label>
				<!-- td개념 -->
				<div class="col-sm-3">
					<!-- td시작 -->
					<input type="text" name="pmanu" class="form-control">
					<!-- td끝 -->
				</div>
			</div>

			<div class="form-group row">
				<!-- tr개념 -->
				<label class="col-sm-2">상품분류</label>
				<!-- td개념 -->
				<div class="col-sm-3">
					

			<select name = "pcate" class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
				<option selected>Open this select menu</option>
				<option value="스마트폰">스마트폰</option>
				<option value="태블릿">태블릿</option>
				<option value="컴퓨터">컴퓨터</option>
				<option value="노트북">노트북</option>
				<option value="주변기기">주변기기</option>
			</select>
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
			
  <label for="formFileSm" class="form-label">사진 선택</label>
  				<div class="col-sm-3">
  
  
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
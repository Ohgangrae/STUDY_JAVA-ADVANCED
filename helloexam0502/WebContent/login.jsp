<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- login.jsp에서 아이디 비번을 입력하고 전송 버튼을 누르면
logincheck.jsp로 그 값들을 가지고 간다. -->

<form action="logincheck.jsp">

	아이디 : <input type="text" name="id" required autofocus><br>
	비   번 : <input type="password" name="pw" required><br><br>

	<input type = "submit" value="전송">
	<input type = "reset" value="취소">
</form>
</body>
</html>
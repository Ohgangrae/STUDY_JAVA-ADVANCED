<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	session.removeAttribute("id");
	session.removeAttribute("name");

	out.print("세션이 삭제되었습니다.-> 로그아웃되었습니다.");
	
%>
	<a href >
</body>
</html>
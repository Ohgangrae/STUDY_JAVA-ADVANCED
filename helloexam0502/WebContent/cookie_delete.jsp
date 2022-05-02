<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 삭제</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();

	if (cookies != null) {
		for (int i = 0; i < cookies.length; i++) {

			if (cookies[i].getName().equals("id")) {
		cookies[i].setMaxAge(0);
		response.addCookie(cookies[i]);
		out.print("쿠키 정보가 삭제 되었습니다.<br>");
			}
		}
	} else {
		out.print("설정된 쿠키 정보가 없습니다.");
	}
	%>

	<a href="cookie_create.jsp">쿠키 생성</a>
</body>
</html>
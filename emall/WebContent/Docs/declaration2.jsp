<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 메서드 선언 -->
<%! String makeItLower(String data){
	return data.toLowerCase();
}
%>

<%
	out.print(makeItLower("Hello World"));	
%>

</body>
</html>
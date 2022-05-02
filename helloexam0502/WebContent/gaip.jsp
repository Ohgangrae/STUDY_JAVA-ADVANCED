<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- POST방식으로 전송시 한글 깨짐 방지 -->
<% request.setCharacterEncoding("UTF-8"); %>
<!-- 한글이 안넘어 갈때 한글처리 -->

<!-- gaip.html로 부터 넘겨받은 id값과 pw값 -->
아이디 :<%=request.getParameter("id") %> <br>
암   호 :<%=request.getParameter("pw") %> 
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지역변수와 전역변수</title>
</head>
<body>
<%!		//선언문
		//전역변수는 선언문에서 선언
		int global_var = 0;
%>

<%
		//스크립틀릿
		int local_var = 0;
		out.print("global" + global_var++ + "<br>");
		out.print("local" + local_var++);
		

%>

</body>
</html>
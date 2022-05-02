<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% //jdbc 드라이버 로딩 
String driverClass = "mysql-connector-java-8.0.28.jar";

try {
	Class.forName(driverClass);
	out.print("JDBC 드라이버 로딩 성공!<br>");
}catch (ClassNotFoundException err){
	out.println("JDBC Driver loading 실패!!...WEB-INF/lib 폴더 확인<br>");
}

	
	
	
%>
</body>
</html>
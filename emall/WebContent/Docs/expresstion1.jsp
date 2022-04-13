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
int a = 10;
int b = 20;
int c = 30;


%>

<h1>계산한 결과는 <%= a+b+c %> 입니다</h1>
<!-- 크롬에서 페이지 소스보기하면 그냥 결과만 나온다. 
자바는 날아가고 html만 남는다.-->

</body>
</html>
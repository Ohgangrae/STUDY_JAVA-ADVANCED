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
int sum = 0;

for (int no = 1; no <= 10; no++){
	sum += no;
}

%>

1부터 10까지의 정수의 합은 <%= sum%>입니다.

</body>
</html>
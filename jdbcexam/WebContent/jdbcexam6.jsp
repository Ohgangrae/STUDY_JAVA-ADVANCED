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

//MariaDB 연결
String url = "jdbc:mariadb://localhost:3306"
String id = "root";
String pw = "0000";

Connection conn = null;

try{
conn = DriverManage.getConnection(url, id, pw);
out.println("MariaDB 서버 연결 성공!<br>");
}catch (SQLException sqlerr){
	out.println("Maria 서버 연결 실패!<br>");
	out.println(sqlerr.getMessage() + "<br>");
}

// PreparedStatement

String sql = "INSERT INTO student VALUES(?,?)";

PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, hakbun);
	pstmt.setString(2, name);
int result = pstmt.executeUpdate();
// 데이터 삽입후 결과는 0 또는 1로 반환된다.

//연결 종료
//if(rset != null) rset.close();
if(pstmt != null) pstmt.close();
if(conn != null) conn.close();
	
%>
</body>
</html>
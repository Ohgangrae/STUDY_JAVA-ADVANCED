<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    
    
<%
	String adminid = "root";
	String adminpw = "0000";
	
	/* 앞페이지에서 넘겨받은 값들 */
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	if(id.equals(adminid) & pw.equals(adminpw)){
		out.print("로그인 성공");
	} else {
		out.print("로그인 실패");
	}

%>
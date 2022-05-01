<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<%
	String uid = request.getParameter("uid");
	String upw = request.getParameter("upw");

	UserDAO dao = new UserDAO();
	
	int result = dao.login(uid, upw);

%>
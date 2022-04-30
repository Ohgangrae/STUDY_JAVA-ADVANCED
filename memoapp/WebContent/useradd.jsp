<%@page import="jdbc.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8"); 		//한글처리
	
	String userid = request.getParameter("userid"); // 전 페이지에서 입력한 유저 내용 받기
	String userpw = request.getParameter("userpw"); 
	String username = request.getParameter("username"); 

	UserDAO dao = new UserDAO(); 				// 객체 생성 ?? 매서드를 호출하기위해서
	
			
	//테이블에 이미 아이디가 존재하는지 확인 후 존재하면 창으로 알려주고 다시 회원가입 페이지로 강제이동 		
			
			
	if (dao.exists(userid)) {		//dao에 userid 가 존재하면
	      out.print("<script> alert('이미 존재하는 아이디입니다. 다시 설정하세요.');");%>		//경고창 띄우기
	         history.back();         
	         <%out.print("</script>");
	   }else{
	      dao.insert(userid, userpw, username); 
	      session.setAttribute("userid", userid);
	      response.sendRedirect("main.jsp");
	      }		
			
			
			
			
	//boolean result = dao.insert(userid, userpw, username); 	// 3개의 값을 던진 결과
	
/* 	if (dao.insert(userid, userpw, username)){
		session.setAttribute("userid", userid);
		response.sendRedirect("main.jsp");		//성공하면 main으로 가고
	}else{
		response.sendRedirect("userjoin.jsp");	//실패하면 userjoin으로 보내기
	} */
	
	
	

%>
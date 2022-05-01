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
	request.setCharacterEncoding("UTF-8"); //한글 

	String[] items = request.getParameterValues("hobby");
/*	String item1 = request.getParameter("hobby1");
 	String item2 = request.getParameter("hobby2");
	String item3 = request.getParameter("hobby3"); */
	
	if(items != null){
			for(String item: items){		
		out.print(item + "<br>");
			}
	}
	/*	out.print(item1 + "<br>");
	 out.print(item2 + "<br>");
	out.print(item3 + "<br>"); */


%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<%@page import="java.sql.*"%>


<%
	String memberId = request.getParameter("memberId");
	out.println("memberId값은?"+memberId);
	out.println("<br>");
	String memberPwd = request.getParameter("memberPwd");
	out.println("memberPwd?"+memberPwd);
	out.println("<br>");
	String memberPwd2 = request.getParameter("memberPwd2");
	out.println("memberPwd2?"+memberPwd2);
	out.println("<br>");
	String memberName = request.getParameter("memberName");
	out.println("memberName?"+memberName);
	out.println("<br>");
	String memberEmail = request.getParameter("memberEmail");
	out.println("memberEmail?"+memberEmail);
	out.println("<br>");
	String memberPhone = request.getParameter("memberPhone");
	out.println("memberPhone?"+memberPhone);
	out.println("<br>");
	String memberAddr = request.getParameter("memberAddr");
	out.println("memberAddr?"+memberAddr);
	out.println("<br>");
	String memberGender = request.getParameter("memberGender");
	out.println("memberGender?"+memberGender);
	out.println("<br>");
	String memberBirth = request.getParameter("memberBirth");
	out.println("memberBirth?"+memberBirth);
	out.println("<br>");
	//String[] memberHobby = request.getParameterValues("memberHobby");
	//for(int i=0;i<memberHobby.length;i++){
	//	out.println("memberHobby?"+memberHobby[i]);		
	//}
	
	
	// 1. jsp 프로그래밍 날코딩방식부터 함수화 객체화 방식
	// 2. java/jsp 프로그래밍 model1,model2 MVC 방식으로 진화되는 방법
	// 3. spring 프레임워크로 프로그래밍하는 방법 순서로  학습할 예정
	
	
	
	Connection conn = null;
	String url = "jdbc:mysql://127.0.0.1/aws0822?";
	String user = "root";
	String password = "1234";
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	DriverManager.getConnection(url, user, password);
	
	
	
	
	
	
	
%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberjoinAction</title>
</head>
<body>

</body>
</html>
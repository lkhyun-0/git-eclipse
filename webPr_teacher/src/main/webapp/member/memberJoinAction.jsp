<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	
	
%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
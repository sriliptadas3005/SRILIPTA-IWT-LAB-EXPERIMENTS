<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>
<%
if(request.getMethod().equals("POST")){
String n1=request.getParameter("1st");
String n2=request.getParameter("2nd");
String email="admin@gmail.com";
String pass="admin";
	if(n1==email && n2==pass){
		out.print("Welcome to welcome.jsp");
	}
	else{
		out.print("Invalid credentials");
	}
}
%>
</body>
</html>
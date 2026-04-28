<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="contact.jsp" method="post">
Enter name:<input type="text" name="1st"><br>
Enter mobile number:<input type="text" name="2nd"><br>
Enter email ID:<input type="text" name="3rd"><br>
Enter subject:<input type="text" name="4th"><br>
Enter message:<input type="text" name="5th"><br>
</form>
<%
if(request.getMethod().equals("POST")){
String n1 = request.getParameter("1st");
String n2 = request.getParameter("2nd");
String n3 = request.getParameter("3rd");
String n4 = request.getParameter("4th");
String n5 = request.getParameter("5th");
int num=Integer.parseInt(n2);
out.println("Name: "+n1+"<br>");
out.println("Mobile number: "+num+"<br>");
out.println("Email ID: "+n3+"<br>");
out.println("Subject: "+n4+"<br>");
out.println("Message: "+n5+"<br>");
}
%>
</body>
</html>
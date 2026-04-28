<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Question-2</title>
</head>
<body>
<form action="q2.jsp" method="post">
Enter employee ID:<input type="text" name="1st"><br>
Enter employee name:<input type="text" name="2nd"><br>
Enter mobile number:<input type="text" name="3rd"><br>
Enter email ID:<input type="text" name="4th"><br>
Enter gender:<input type="text" name="5th"><br>
Enter date of birth:<input type="date" name="6th"><br>
Enter address:<input type="text" name="7th"><br>
Enter country:<select  id="1"><option value="India">India</option>
<option value="Nepal">Nepal</option></select><br>
Enter language:<input type="checkbox" name="lang">Hindi 
<input type="checkbox" name="lang">Odia
<input type="checkbox" name="lang">English
<input type="checkbox" name="lang">Malayalam<br>
<input type="submit" value="submit">
</form>
<%
if(request.getMethod().equals("POST")){
String n1 = request.getParameter("1st");
String n2 = request.getParameter("2nd");
String n3 = request.getParameter("3rd");
String n4 = request.getParameter("4th");
String n5 = request.getParameter("5th");
String n6 = request.getParameter("6th");
String n7 = request.getParameter("7th");
String n8 = request.getParameter("1");
String n9 = request.getParameter("lang");
    int id=Integer.parseInt(n1);
    int num=Integer.parseInt(n3); 
    out.println("Employee id: "+id+"<br>");
    out.println("Employee name: "+n2+"<br>");
    out.println("Mobile number: "+num+"<br>");
    out.println("Email id: "+n4+"<br>");
    out.println("Gender: "+n5+"<br>");
    out.println("DOB: "+n6+"<br>");
    out.println("Address: "+n7+"<br>");
    out.println("Country: "+n8+"<br>");
    out.println("Language: "+n9+"<br>");
}
%>
</body>
</html>
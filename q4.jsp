<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Question-4</title>
</head>
<body>
<form action="q4.jsp" method="post">
Enter age:<input type="text" name="1st"><br>
Enter gender(For women=1||For men=2):<input type="text" name="2nd"><br>
Enter height(cm):<input type="text" name="3rd"><br>
Enter weight(kg):<input type="text" name="4th"><br>
<input type="submit" value="Calculate BMR">
</form>
<%
if(request.getMethod().equals("POST")){
	String n1=request.getParameter("1st");
	String n2=request.getParameter("2nd");
	String n3=request.getParameter("3rd");
	String n4=request.getParameter("4th");
	float bmr=0.0f;
	int age=Integer.parseInt(n1);
	float h=Float.parseFloat(n3);
	float w=Float.parseFloat(n4);
	int s2=Integer.parseInt(n2);
	if(s2==1){
		bmr=(10*w)+(6.25f*h)-(5*age)+5;
	}
	else if(s2==2){
		bmr=(10*w)+(6.25f*h)-(5*age)-161;
	}
	out.print("BMR is "+bmr);
}
%>
</body>
</html>
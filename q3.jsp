<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Question-3</title>
</head>
<body>
<form action="q3.jsp" method="post">
Enter number:<input type="text" name="1st"><br>
<input type="submit" value="Prime/not">
</form>
<%
String n1 = request.getParameter("1st");
if(n1!=null){
	int no=Integer.parseInt(n1);
	int value=1,count=0;
	while(value<=no){
		if(no%value==0){
			count++;
		}
		value++;
	}
	if(count==2){
		out.print("Prime number");
	}
	else{
		out.print("Not a prime number");
	}
}
%>
</body>
</html>
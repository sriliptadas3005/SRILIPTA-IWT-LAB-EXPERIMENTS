<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<style>
table {
    border-collapse: collapse;
    width: 70%;
}
th, td {
    border: 1px solid black;
    padding: 8px;
    text-align: center;
}
</style>
<meta charset="UTF-8">
<title>Display Students</title>
</head>
<body>
<%@ include file="navbar.jsp" %>
<h1>STUDENT DETAILS</h1><br>
<table>
<tr>
<td>ID</td>
<td>NAME</td>
<td>EMAIL ID</td>
<td>COURSE</td>
<td>AGE</td>
<td>CGPA</td>
</tr>
<%
try{
	String driver = "org.postgresql.Driver";
	String url = "jdbc:postgresql://localhost:5432/postgres";
	String username = "postgres";
	String password = "24bcsd27";
	Class.forName(driver);
	Connection con = DriverManager.getConnection(url, username, password);
	if(con!= null){
		System.out.println("Connection established successfully…");
} 
	String qry = "SELECT * FROM  Student";
	PreparedStatement ps = con.prepareStatement(qry);
	ResultSet rs = ps.executeQuery();
	while(rs.next()){
%>
<tr>
	<td><%=rs.getString("id") %></td>
	<td><%=rs.getString("name")%></td>
	<td><%=rs.getString("email") %></td>
	<td><%=rs.getString("course") %></td>
	<td><%=rs.getInt("age") %></td>
	<td><%=rs.getFloat("cgpa") %></td>
</tr>
<%
}
	ps.close();
	con.close();
}
catch (Exception e){
	System.out.println(e);
}
%>
</table>
<a href="updateStudent.jsp"><input type="submit" value="update"></a><br><br>
<input type="submit" value="delete">
</body>
</html>
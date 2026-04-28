<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Student</title>
</head>
<body>
<%@ include file="navbar.jsp" %>
<h1>STUDENT FORM</h1><br>
<form action="addStudent.jsp" method="post">
Enter name:<input type="text" name="1st"><br>
Enter email ID:<input type="text" name="2nd"><br>
Enter course:<input type="text" name="3rd"><br>
Enter age:<input type="text" name="4th"><br>
Enter cgpa:<input type="text" name="5th"><br>
<input type="submit" value="submit">
</form>

<% 
if(request.getMethod().equalsIgnoreCase("POST")){

    String n1 = request.getParameter("1st");
    String n2 = request.getParameter("2nd");
    String n3 = request.getParameter("3rd");
    int age = Integer.parseInt(request.getParameter("4th"));
    float cgpa = Float.parseFloat(request.getParameter("5th"));

    try{
        String driver = "org.postgresql.Driver";
        String url = "jdbc:postgresql://localhost:5432/postgres";
        String username = "postgres";
        String password = "24bcsd27";

        Class.forName(driver);
        Connection con = DriverManager.getConnection(url, username, password);

        if(con != null){
            out.println("Connection established successfully<br>");
        }

        String qry = "INSERT INTO student(name,email,course,age,cgpa) VALUES(?,?,?,?,?)";
        PreparedStatement ps = con.prepareStatement(qry);

        ps.setString(1, n1);
        ps.setString(2, n2);
        ps.setString(3, n3);
        ps.setInt(4, age);
        ps.setFloat(5, cgpa);

        int i = ps.executeUpdate();

        if(i == 1){
            out.println("Record Inserted successfully");
        }

        ps.close();
        con.close();

    } catch(Exception e){
        out.println(e);
    }
}
%>

</body>
</html>
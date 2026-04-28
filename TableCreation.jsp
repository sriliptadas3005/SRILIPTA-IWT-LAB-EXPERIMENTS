<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% try{
			String driver = "org.postgresql.Driver";
			String url = "jdbc:postgresql://localhost:5432/postgres";
			String username = "postgres";
			String password = "24bcsd27";
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url, username, password);
			if(con!= null){
				out.println("Connection established successfully…");
		} 
			String query = "CREATE TABLE student (" +
                    "id SERIAL PRIMARY KEY, " +
                    "name VARCHAR(50), " +
                    "email VARCHAR(50),"+
                    "course VARCHAR(30),"+
                    "age INT, " +
                    "cgpa REAL)";
			

		     Statement st = con.createStatement();
		     st.executeUpdate(query);
		
		     out.println("Table created successfully");
		
		     st.close();
		     con.close();
	}
		catch (Exception e){
			out.println(e);
		}
%>
</body>
</html>
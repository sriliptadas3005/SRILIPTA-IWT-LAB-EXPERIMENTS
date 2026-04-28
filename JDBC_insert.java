package jdbcconnectivity;
import java.sql.*;
public class JDBC_insert {

	public static void main(String[] args) {
		try{
			String driver = "org.postgresql.Driver";
			String url = "jdbc:postgresql://192.168.1.17/cse_db24";
			String username = "24bcsd27";
			String password = "24bcsd27";
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url, username, password);
			if(con!= null){
				System.out.println("Connection established successfully…");
		} 
			String query = "CREATE TABLE Student (" +
                    "roll INT PRIMARY KEY, " +
                    "name VARCHAR(50), " +
                    "age INT, " +
                    "dept VARCHAR(50), " +
                    "cgpa REAL)";

		     Statement st = con.createStatement();
		     st.executeUpdate(query);
		
		     System.out.println("Table created successfully");
		
		     st.close();
		     con.close();
	}
		catch (Exception e){
			System.out.println(e);
		}
	}

}

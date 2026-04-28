package jdbcconnectivity;
import java.sql.*;
public class JDBC_insertHard {
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
		Statement smt = con.createStatement();
		String qry = "INSERT INTO Student(roll,name,age,dept,cgpa) VALUES(16,'sneha',20,'cse',9.8)";
		String qry1 = "INSERT INTO Student(roll,name,age,dept,cgpa) VALUES(15,'swati',20,'cse',9.78)";
		int i = smt.executeUpdate(qry);
		int j = smt.executeUpdate(qry1);
		if(i == 1 && j==1){
		System.out.println("Record Inserted successfully");
		}
		smt.close();
}
	catch (Exception e){
		System.out.println(e);
	}
}
}
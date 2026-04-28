package jdbcconnectivity;
import java.sql.*;
import java.util.*;
public class JDBC_insert1 {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter your name");
		String name=sc.next();
		System.out.println("Enter your roll no.");
		int roll=sc.nextInt();
		System.out.println("Enter your age");
		int age=sc.nextInt();
		System.out.println("Enter your department");
		String dept=sc.next();
		System.out.println("Enter your cgpa");
		float cgpa=sc.nextFloat();
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
			String qry = "INSERT INTO Student (roll,name,age,dept,cgpa) VALUES(?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(qry);
			ps.setInt(1, roll);
			ps.setString(2, name);
			ps.setInt(3, age);
			ps.setString(4, dept);
			ps.setFloat(5, cgpa);
			int i = ps.executeUpdate();
			if(i == 1){
			System.out.println("Record Inserted successfully");
			}
			ps.close();
			con.close();
	}
		catch (Exception e){
			System.out.println(e);
		}
		sc.close();
	}

}
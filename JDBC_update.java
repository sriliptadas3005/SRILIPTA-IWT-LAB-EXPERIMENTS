package jdbcconnectivity;
import java.sql.*;
import java.util.Scanner;
public class JDBC_update {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter your new cgpa");
		Float newcgpa =sc.nextFloat();
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
				String qry = "UPDATE Student SET cgpa = ? WHERE roll = ?";

	            PreparedStatement ps = con.prepareStatement(qry);
	            ps.setFloat(1, newcgpa);  
	            ps.setInt(2, 13);      
	            int i = ps.executeUpdate();
	            if (i > 0) {
	                System.out.println("CGPA Updated successfully");
	            } else {
	                System.out.println("No record found");
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

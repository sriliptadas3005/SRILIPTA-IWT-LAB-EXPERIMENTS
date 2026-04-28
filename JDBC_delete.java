package jdbcconnectivity;
import java.sql.*;
import java.util.*;
public class JDBC_delete {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter roll number to delete: ");
		int newroll =sc.nextInt();
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
				String qry = "DELETE  FROM  Student WHERE roll=?";
				PreparedStatement ps = con.prepareStatement(qry);
				ps.setInt(1, newroll);      
	            int i = ps.executeUpdate();
	            if (i > 0) {
	                System.out.println("Record deleted successfully");
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

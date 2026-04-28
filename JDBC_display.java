package jdbcconnectivity;
import java.sql.*;
public class JDBC_display {

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
				String qry = "SELECT * FROM  Student";
				PreparedStatement ps = con.prepareStatement(qry);
				ResultSet rs = ps.executeQuery();
				while(rs.next()){
				System.out.println(rs.getString("roll"));
				System.out.println(rs.getString("name"));
				System.out.println(rs.getString("age"));
				System.out.println(rs.getString("dept"));
				System.out.println(rs.getString("cgpa"));
				}
				ps.close();
				con.close();
		}
			catch (Exception e){
				System.out.println(e);
			}
	
	}
}

package blood_donation_system.dbtask;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class DbConnection {

	
	private static Connection con;
	
	public static Connection openConnection()
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blooddonationdb","root","root");
		}
		catch(SQLException |ClassNotFoundException cs)
		{
			cs.printStackTrace();
		}
		
		return con;
	}
}
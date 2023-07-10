package blood_donation_system.dbtask;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PatientTask {
	private static Connection con;

	private static PreparedStatement ps;
	private static ResultSet rs;

	public static ResultSet getPatientDetails(String strsql, String name) {
		con = DbConnection.openConnection();
		try {
			ps = con.prepareStatement(strsql);

			ps.setString(1, name);
			rs = ps.executeQuery();
		} catch (SQLException se) {
			se.printStackTrace();
		}
		return rs;
	}
}

package blood_donation_system.dbtask;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class DoctorTask {
	private static Connection con;

	private static PreparedStatement ps;
	private static ResultSet rs;

	public static ResultSet getDonarDetails(String strsql, String id) {
		con = DbConnection.openConnection();
		try {
			ps = con.prepareStatement(strsql);

			ps.setString(1, id);
			rs = ps.executeQuery();
		} catch (SQLException se) {
			se.printStackTrace();
		}
		return rs;
	}
	public static ResultSet viewFeedBack(String sqlstr)
	{
		try {
			con = DbConnection.openConnection();
			ps= con.prepareStatement(sqlstr);
			rs=ps.executeQuery();
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return rs;
	}
	public static ResultSet viewContactUs(String sqlstr)
	{
		try {
			con = DbConnection.openConnection();
			ps= con.prepareStatement(sqlstr);
			rs=ps.executeQuery();
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return rs;
	}
	public static ResultSet viewPatientList(String sqlstr)
	{
		try {
			con = DbConnection.openConnection();
			ps= con.prepareStatement(sqlstr);
			rs=ps.executeQuery();
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return rs;
	}
	public static ResultSet viewPatientBloodRequestList(String sqlstr)
	{
		try {
			con = DbConnection.openConnection();
			ps= con.prepareStatement(sqlstr);
			rs=ps.executeQuery();
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return rs;
	}
	public static ResultSet viewDonarList(String sqlstr)
	{
		try {
			con = DbConnection.openConnection();
			ps= con.prepareStatement(sqlstr);
			rs=ps.executeQuery();
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return rs;
	}
	public static ResultSet viewDonarBloodDonateList(String sqlstr)
	{
		try {
			con = DbConnection.openConnection();
			ps= con.prepareStatement(sqlstr);
			rs=ps.executeQuery();
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return rs;
	}
	public static ResultSet donarCount(String sqlstr)
	{
		try {
			con = DbConnection.openConnection();
			ps= con.prepareStatement(sqlstr);
			rs=ps.executeQuery();
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return rs;
	}
	public static ResultSet patientCount(String sqlstr)
	{
		try {
			con = DbConnection.openConnection();
			ps= con.prepareStatement(sqlstr);
			rs=ps.executeQuery();
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return rs;
	}
	public static ResultSet apositiveblood(String sqlstr)
	{
		try {
			con = DbConnection.openConnection();
			ps= con.prepareStatement(sqlstr);
			rs=ps.executeQuery();
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return rs;
	}
	// anegative start
	public static ResultSet anegativeblood(String sqlstr)
	{
		try {
			con = DbConnection.openConnection();
			ps= con.prepareStatement(sqlstr);
			rs=ps.executeQuery();
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return rs;
	}
	//	bpositive start
		public static ResultSet bpositiveblood(String sqlstr)
		{
			try {
				con = DbConnection.openConnection();
				ps= con.prepareStatement(sqlstr);
				rs=ps.executeQuery();
			}
			catch(SQLException se)
			{
				se.printStackTrace();
			}
			return rs;
		}
		// bnegative start
		public static ResultSet bnegativeblood(String sqlstr)
		{
			try {
				con = DbConnection.openConnection();
				ps= con.prepareStatement(sqlstr);
				rs=ps.executeQuery();
			}
			catch(SQLException se)
			{
				se.printStackTrace();
			}
			return rs;
		}
		// abpositive start
		public static ResultSet abpositiveblood(String sqlstr)
		{
			try {
				con = DbConnection.openConnection();
				ps= con.prepareStatement(sqlstr);
				rs=ps.executeQuery();
			}
			catch(SQLException se)
			{
				se.printStackTrace();
			}
			return rs;
		}
		// abnegative start
		public static ResultSet abnegativeblood(String sqlstr)
		{
			try {
				con = DbConnection.openConnection();
				ps= con.prepareStatement(sqlstr);
				rs=ps.executeQuery();
			}
			catch(SQLException se)
			{
				se.printStackTrace();
			}
			return rs;
		}
		// opositive start
		public static ResultSet opositiveblood(String sqlstr)
		{
			try {
				con = DbConnection.openConnection();
				ps= con.prepareStatement(sqlstr);
				rs=ps.executeQuery();
			}
			catch(SQLException se)
			{
				se.printStackTrace();
			}
			return rs;
		}
		// onegative start
		public static ResultSet onegativeblood(String sqlstr)
		{
			try {
				con = DbConnection.openConnection();
				ps= con.prepareStatement(sqlstr);
				rs=ps.executeQuery();
			}
			catch(SQLException se)
			{
				se.printStackTrace();
			}
			return rs;
		}
}

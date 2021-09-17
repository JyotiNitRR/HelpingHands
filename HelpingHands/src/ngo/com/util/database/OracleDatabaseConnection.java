package ngo.com.util.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class OracleDatabaseConnection {
	
	//declare required type 
	final private static String DB_USER="system";
	final private static String DB_PASSWORD="root";
	final private static String DB_URL  = "jdbc:oracle:thin:@localhost:1521:XE";	
	final private static String DRIVER_CLASS_NAME = "oracle.jdbc.driver.OracleDriver";
	private static boolean isDriverLoaded=false; 
		
	//drive must load only 1 time 
	static{
		try {
			 Class.forName(DRIVER_CLASS_NAME);	
			 isDriverLoaded=true;
			 System.out.println("driver loaded...");
		} catch (ClassNotFoundException e) {
			  e.printStackTrace();
		}
	}//end static  block
		
	public static Connection getConnection() throws SQLException{
		Connection con  =null;
		if(isDriverLoaded){
			con  = DriverManager.getConnection(DB_URL,DB_USER, DB_PASSWORD);
		}
		return con;
	}
			 
	 
	public static void closeConnection(Connection con ) throws SQLException{
		if(con!=null){
			con.close();
		}	
	}
		
}

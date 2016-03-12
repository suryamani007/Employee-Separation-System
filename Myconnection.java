package dbConnection;

import java.sql.Connection;
import java.sql.DriverManager;

public class Myconnection {

	private final String driver="com.mysql.jdbc.Driver";
	private final String url="jdbc:mysql://localhost:3306/";
	private final String dbName="esp";
	private final String userName="root";
	private final String password="mysql";
	Connection con;
	public Connection getConnected()
	{
		
	  try {
		  
		Class.forName(driver);
	   con=DriverManager.getConnection(url+ dbName,userName,password);
	}
	  catch(Exception e)
	  {
		  e.printStackTrace();
	  }
	return con;
	  
	}
}

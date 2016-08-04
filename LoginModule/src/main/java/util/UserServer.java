package util;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UserServer {
	

	public static String getPassword(String username){
		//不可以直接拿ResultSet   java.sql.SQLException: Operation not allowed after ResultSet closed
		ResultSet resultSet = DBManager.execute("select pass from _user where username=?",new Object[]{username});
		String result = null;
		try {
			if(resultSet.next()){
				result = resultSet.getString("pass");
			}
				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			
			return result;
		}
	}
	
	public static String getEmail(String username){
		ResultSet resultSet = DBManager.execute("select email from _user where username=?",new Object[]{username});
		String result = null;
		try {
			if(resultSet.next()){
				result = resultSet.getString(0);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			if(resultSet!=null){
				try {
					resultSet.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			return result;
		}
	}

}

package util;

import java.io.*;
import java.sql.*;
import java.util.Properties;


public class DBManager {
	
	private static String database = "struts2login";
	private static String user = "root";
	private static String pass = "root";
	private static String connStr = "jdbc:mysql://127.0.0.1:3306/"+database;
	private static String driver = "com.mysql.jdbc.Driver";

	

	public static int executeUpdate(String sql,Object[] objs){
		
		Connection conn = null;
		PreparedStatement pre = null;
		int rs = 0;
		
		try{
			Class.forName(driver);
			conn = DriverManager.getConnection(connStr, user, pass);
			//Statement.RETURN_GENERATED_KEYS  返回新增参数
			pre = conn.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
			if(objs!=null){
				for(int i=0;i<objs.length;i++){
					pre.setObject(i+1, objs[i]);
				}
			}
			rs = pre.executeUpdate();
//			ResultSet rset = pre.getGeneratedKeys();
//			if(rset.next()){
//				
//			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			if(pre!=null){
				try {
					pre.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(conn!=null){
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			return rs;
		}
	}
	

	public static ResultSet execute(String sql) {
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try{
			conn = DriverManager.getConnection(connStr, user, pass);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

		}catch(SQLException exception){
			exception.printStackTrace();
		}finally{
			close(rs,stmt, conn);
			return rs;
		}
	}
	
	public static ResultSet execute(String sql, Object[] objs){
		Connection conn = null;
		PreparedStatement pre = null;
		ResultSet rs = null;
		try{
			Class.forName(driver);
			conn = DriverManager.getConnection(connStr, user, pass);
			pre = conn.prepareStatement(sql);
			for(int i=0;i<objs.length;i++){
				pre.setObject(i+1, objs[i]);
				System.out.println(objs[i]);
			}
			rs = pre.executeQuery();
			while(rs.next()){
				System.out.println(rs.getString("pass"));
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			DBManager.close(rs, pre, conn);
			return rs;
		}
	}
	
	public static void close(ResultSet resultSet,Statement stmt,Connection conn){
		try{
			if(resultSet!=null){
				resultSet.close();
			}
			if(stmt!=null){
				stmt.close();
			}
			if(conn!=null){
				conn.close();
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
}

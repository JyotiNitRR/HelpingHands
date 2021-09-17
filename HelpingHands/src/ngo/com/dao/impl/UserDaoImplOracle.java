package ngo.com.dao.impl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import ngo.com.bo.User;
import ngo.com.dao.UserDao;
import ngo.com.util.database.OracleDatabaseConnection;
public class UserDaoImplOracle implements UserDao {
	@Override
	public boolean signup(String Name,String Email, String Password, String role, long mobile ) {
		Connection con = null;
		PreparedStatement pstmt  =null;
		StringBuilder errorCode=new StringBuilder();
		int result=0;
		
		try{
			con  = OracleDatabaseConnection.getConnection();
			String sql="insert into NGO_user " + 
						"(id,name,email,password,role,phoneNumber,whencreated)"+ 
							"values(userId_seq.nextval,?,?,?,?,?,sysdate)";
			pstmt  = con.prepareStatement(sql);
			pstmt.setString(1,Name);
			pstmt.setString(2,Email);
			pstmt.setString(3,Password);
			pstmt.setString(4,role);
			pstmt.setLong(5,mobile);
			
			result  = pstmt.executeUpdate();
		}catch(SQLException e){
		  errorCode.append("<h1 style='color:red'>Database ERROR : " +e.getMessage()+"</h1>");
		  e.printStackTrace();
		}catch(Exception e){
		  errorCode.append("<h1 style='color:red'>Other ERROR " + e.getMessage()+"</h1>");
		}finally{
		    
		     if(con!=null){
			          try{
					     con.close(); 
						}catch(SQLException e){
							 errorCode.append("DB Connection Closing ERROR : "+ e.getMessage());
					  }
			  }
		}
		if(result==1)
			return true;
		return false;
	}

	@Override
	public User validate(String loginId, String loginPassword) {
	     User user  = null;
	     StringBuilder errorCode=new StringBuilder();
	     Connection con  = null;
	     PreparedStatement pstmt  = null;
	     ResultSet rs  = null;
	     
	     try {
			con  = OracleDatabaseConnection.getConnection();
			String sql="select * from NGO_user"
					+ " where email=? and password=?";
			pstmt  = con.prepareStatement(sql);
			pstmt.setString(1,loginId);
			pstmt.setString(2,loginPassword);
			
			rs  = pstmt.executeQuery();
			if(rs.next()){
				long id  = rs.getLong("id");
				String name  =rs.getString("name");
				String email  =rs.getString("email");
				String role  =rs.getString("role");
				String mobile  =rs.getString("phoneNumber");
				String password  =rs.getString("password");
				user  = new User();
				user.setId(id);
				user.setRole(role);
				user.setPassword(password);
				user.setName(name);
				user.setMobile(mobile);
				user.setEmail(email);
			}
			
		} catch (SQLException e) {
			errorCode.append("Database ERROR : " +e.getMessage());
			e.printStackTrace();
		}finally{
			try {
				OracleDatabaseConnection.closeConnection(con);
			} catch (SQLException e) {
				errorCode.append("DB Connection Closing ERROR : "+ e.getMessage());
				e.printStackTrace();
			}
		}
	     
		
		return user;
	}
}

package biz;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import vo.AteamUserVO;

public class UserDAO {
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	//커넥션풀 연결
	public void dbconn() {
		try {
	         Context initctx = new InitialContext(); 
	         Context envctx = (Context) initctx.lookup("java:comp/env"); 
	         DataSource ds = (DataSource) envctx.lookup("jdbc/pool"); 
	         conn = ds.getConnection();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public String getPass(String id) {
		String pass =null;
		
		try {
			dbconn();
			String sql="select password from ateam_user where id =?";
			pstmt =conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				pass= rs.getString(1);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return pass;
	}

	public int insertUser(AteamUserVO bean) {
		int cnt = 0;
		
		try {
			dbconn();
			String sql="insert into ateam_user VALUES(?,?,?,?,?,?,?,?,?)";
			pstmt= conn.prepareStatement(sql);
			pstmt.setString(1, bean.getId());
			pstmt.setString(2, bean.getPassword());
			pstmt.setString(3, bean.getName());
			pstmt.setString(4, bean.getTel());
			pstmt.setString(5, bean.getEmail());
			pstmt.setString(6, bean.getAgree_clauses());
			pstmt.setString(7, bean.getAgree_info());
			pstmt.setString(8, bean.getAgree_email());
			pstmt.setString(9, "����ȸ��");
			
			cnt = pstmt.executeUpdate();
					
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cnt;
	}

	public String getid(String name, String email) {
		// TODO Auto-generated method stub
		return null;
	}

}

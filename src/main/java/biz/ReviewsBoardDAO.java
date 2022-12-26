package biz;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import vo.ReviewsBoardVO;

public class ReviewsBoardDAO {
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	//커넥션풀 DB연결
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
	
	public ArrayList<ReviewsBoardVO> getBoardList() {
		ArrayList<ReviewsBoardVO> List = new ArrayList<ReviewsBoardVO>();
		
		try {
			dbconn();
			String sql = "select seq,title,writer,regdate,cnt,grade from reviews_board";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				ReviewsBoardVO bean = new ReviewsBoardVO();
				bean.setSeq(rs.getInt(1));
				bean.setTitle(rs.getString(2));
				bean.setWriter(rs.getString(3));
				bean.setRegdate(rs.getDate(4));
				bean.setCnt(rs.getInt(5));
				bean.setGrade(rs.getInt(6));
				List.add(bean);
			}
			rs.close();
			pstmt.close();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return List;
	}

	public String getPass(int seq) {
		String pass= null;
		try {
			dbconn();
			String sql = "select password from reviews_board where seq =?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, seq);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				pass = rs.getString(1);
			}
			
			rs.close();
			pstmt.close();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return pass;
	}
	
	
	public ReviewsBoardVO getBoard(int seq) {
		ReviewsBoardVO bean = new ReviewsBoardVO();
		
		try {
			dbconn();
			String sql = "update reviews_board set cnt = cnt+1 where seq=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, seq);
			pstmt.executeUpdate();
			
			sql = "select * from reviews_board where seq =?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, seq);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				bean.setSeq(rs.getInt(1));
				bean.setTitle(rs.getString(2));
				bean.setWriter(rs.getString(3));
				bean.setEmail(rs.getString(4));
				bean.setGrade(rs.getInt(5));
				bean.setContent(rs.getString(6));
				bean.setPassword(rs.getString(9));
				bean.setRegdate(rs.getDate(11));
				bean.setCnt(rs.getInt(12));
			}
			rs.close();
			pstmt.close();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return bean;
	}

	public ReviewsBoardVO getOneBoard(int seq) {
		ReviewsBoardVO bean = new ReviewsBoardVO();
		
		try {
			dbconn();			
			String sql = "select * from reviews_board where seq =?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, seq);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				bean.setSeq(rs.getInt(1));
				bean.setTitle(rs.getString(2));
				bean.setWriter(rs.getString(3));
				bean.setEmail(rs.getString(4));
				bean.setGrade(rs.getInt(5));
				bean.setContent(rs.getString(6));
				bean.setPassword(rs.getString(9));
				bean.setRegdate(rs.getDate(11));
				bean.setCnt(rs.getInt(12));
			}
			rs.close();
			pstmt.close();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return bean;
	}

	public void updateBoard(ReviewsBoardVO bean) {
	
		try {
			dbconn();			
			String sql = "update reviews_board set title=?,grade=?,content=?,ucc_url=?,agree=? where seq =?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bean.getTitle());
			pstmt.setInt(2, bean.getGrade());
			pstmt.setString(3, bean.getContent());
			pstmt.setString(4, bean.getUcc_url());
			pstmt.setString(5, bean.getAgree());
			pstmt.setInt(6, bean.getSeq());
			pstmt.executeUpdate();
			
			pstmt.close();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int insertBoard(ReviewsBoardVO bean) {
		int cnt = 0;
		try {
			dbconn();			
			String sql = "insert into reviews_board "+
			"VALUES(nvl((select max(seq) from reviews_board),0)+1,?,?,?,?,?,?,?,?,?,sysdate,0)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bean.getTitle());
			pstmt.setString(2, bean.getWriter());
			pstmt.setString(3, bean.getEmail());
			pstmt.setInt(4, bean.getGrade());
			pstmt.setString(5, bean.getContent());
			pstmt.setString(6, bean.getUcc_url());
			pstmt.setString(7, bean.getFiles());			
			pstmt.setString(8, bean.getPassword());
			pstmt.setString(9, bean.getAgree());

			cnt = pstmt.executeUpdate();
			
			pstmt.close();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cnt;
	}

	public void deleteBoard(int seq) {
		try {
			dbconn();			
			String sql = "delete from reviews_board where seq =?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, seq);
			pstmt.executeUpdate();
			
			pstmt.close();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
	
	
}

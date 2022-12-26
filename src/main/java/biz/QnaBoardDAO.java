package biz;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import vo.QnaBoardVO;

public class QnaBoardDAO {

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

	public ArrayList<QnaBoardVO> getBoardList() {
		ArrayList<QnaBoardVO> List = new ArrayList<QnaBoardVO>();
		
		try {
			dbconn();
			String sql = "select seq,subject,writer,regdate,cnt from qna_board order by seq desc";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				QnaBoardVO qbean = new QnaBoardVO();
				qbean.setSeq(rs.getInt(1));
				qbean.setSubject(rs.getString(2));
				qbean.setWriter(rs.getString(3));
				qbean.setRegdate(rs.getDate(4));
				qbean.setCnt(rs.getInt(5));
				List.add(qbean);
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
			String sql = "select password from qna_board where seq =?";
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
	
	
	public QnaBoardVO getBoard(int seq) {
		QnaBoardVO bean = new QnaBoardVO();
		
		try {
			dbconn();
			String sql = "update qna_board set cnt = cnt+1 where seq=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, seq);
			pstmt.executeUpdate();
			
			sql = "select * from qna_board where seq =?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, seq);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				bean.setSeq(rs.getInt(1));
				bean.setSubject(rs.getString(2));
				bean.setWriter(rs.getString(3));
				bean.setEmail(rs.getString(4));
				bean.setContent(rs.getString(5));
				bean.setPassword(rs.getString(6));
				bean.setRegdate(rs.getDate(8));
				bean.setCnt(rs.getInt(9));
			}
			rs.close();
			pstmt.close();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return bean;
	}

	public QnaBoardVO getOneBoard(int seq) {
		QnaBoardVO bean = new QnaBoardVO();
		
		try {
			dbconn();			
			String sql = "select * from qna_board where seq =?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, seq);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				bean.setSeq(rs.getInt(1));
				bean.setSubject(rs.getString(2));
				bean.setWriter(rs.getString(3));
				bean.setEmail(rs.getString(4));
				bean.setContent(rs.getString(5));
				bean.setPassword(rs.getString(6));
				bean.setAgree(rs.getString(7));
			}
			rs.close();
			pstmt.close();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return bean;
	}

	public void updateBoard(int seq, String content) {
	
		try {
			dbconn();			
			String sql = "update qna_board set content=? where seq =?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, content);
			pstmt.setInt(2, seq);
			pstmt.executeUpdate();
			
			pstmt.close();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int insertBoard(QnaBoardVO bean) {
		int cnt = 0;
		try {
			dbconn();			
			String sql = "insert into qna_board "+
			"VALUES(nvl((select max(seq) from qna_board),0)+1,?,?,?,?,?,?,sysdate,0)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bean.getSubject());
			pstmt.setString(2, bean.getWriter());
			pstmt.setString(3, bean.getEmail());
			pstmt.setString(4, bean.getContent());
			pstmt.setString(5, bean.getPassword());
			pstmt.setString(6, bean.getAgree());

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
			String sql = "delete from qna_board where seq =?";
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

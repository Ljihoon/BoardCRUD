package view.review;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.ReviewsBoardDAO;
import vo.ReviewsBoardVO;

/**
 * Servlet implementation class UpdateReviewBoardCtrl
 */
@WebServlet("/UpdateReviewBoard.do")
public class UpdateReviewBoardCtrl extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}

	protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		String password = request.getParameter("password");
		String pass = request.getParameter("pass");
		int seq = Integer.parseInt(request.getParameter("seq"));
		
		PrintWriter out = response.getWriter();
		if(pass.equals(password)) {
			String title = request.getParameter("title");
			int grade = Integer.parseInt(request.getParameter("point"));
			String content = request.getParameter("content");
			String ucc_url = request.getParameter("uccurl");
			String agree = request.getParameter("privacy_agreement_radio");
			ReviewsBoardVO bean = new ReviewsBoardVO();
			bean.setSeq(seq);
			bean.setTitle(title);
			bean.setGrade(grade);
			bean.setContent(content);
			bean.setUcc_url(ucc_url);
			bean.setAgree(agree);
			
			ReviewsBoardDAO rdao = new ReviewsBoardDAO();
			rdao.updateBoard(bean);
			
			out.println("<script>alert('수정완료. 목록으로 돌아갑니다.'); location.href='ReviewBoardList.do';</script>");
		}else {
			out.println("<script>alert('비밀번호오류. 다시 입력해주세요.'); history.back(-1);</script>");
		}
		
	}

}

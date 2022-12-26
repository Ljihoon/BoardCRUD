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
 * Servlet implementation class InsertReviewBoardCtrl
 */
@WebServlet("/InsertReviewBoard.do")
public class InsertReviewBoardCtrl extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}

	protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		String email = request.getParameter("email");
		String subject = request.getParameter("subject");
		
		ReviewsBoardVO bean = new ReviewsBoardVO();
		bean.setTitle(request.getParameter("title"));
		bean.setWriter(request.getParameter("writer"));
		bean.setEmail(email+subject);
		bean.setGrade(Integer.parseInt(request.getParameter("point")));
		bean.setContent(request.getParameter("content"));
		bean.setUcc_url(request.getParameter("uccurl"));
		bean.setPassword(request.getParameter("password"));
		bean.setAgree(request.getParameter("privacy_agreement_radio"));
		
		ReviewsBoardDAO rdao = new ReviewsBoardDAO();
		int cnt = rdao.insertBoard(bean);
		if(cnt != 0) {
			PrintWriter out = response.getWriter();
			out.println("<script>alert('등록완료.'); location.href='ReviewBoardList.do';</script>");
		}


			
		}

}

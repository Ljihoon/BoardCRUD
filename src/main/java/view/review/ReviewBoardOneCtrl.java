package view.review;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.ReviewsBoardDAO;
import vo.ReviewsBoardVO;

/**
 * Servlet implementation class ReviewBoardOneCtrl
 */
@WebServlet("/ReviewBoardOne.do")
public class ReviewBoardOneCtrl extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}

	protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		int seq = Integer.parseInt(request.getParameter("seq"));
		
		ReviewsBoardDAO rdao = new ReviewsBoardDAO();
		ReviewsBoardVO bean = rdao.getBoard(seq);
		request.setAttribute("board", bean);
		RequestDispatcher dis =request.getRequestDispatcher("reviewView.jsp");
		dis.forward(request, response);
	}

}

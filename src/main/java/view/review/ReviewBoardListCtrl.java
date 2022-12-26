package view.review;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.ReviewsBoardDAO;
import vo.ReviewsBoardVO;

/**
 * Servlet implementation class ReviewBoardListCtrl
 */
@WebServlet("/ReviewBoardList.do")
public class ReviewBoardListCtrl extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}

	protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		ReviewsBoardDAO rdao = new ReviewsBoardDAO();
		ArrayList<ReviewsBoardVO> rList=new ArrayList<ReviewsBoardVO>();
		rList = rdao.getBoardList();
		
		request.setAttribute("rList", rList);
		RequestDispatcher dis =request.getRequestDispatcher("reviewBoard.jsp");
		dis.forward(request, response);
	}

}

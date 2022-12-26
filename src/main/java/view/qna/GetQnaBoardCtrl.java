package view.qna;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.QnaBoardDAO;
import vo.QnaBoardVO;

/**
 * Servlet implementation class GetQnaBoardCtrl
 */
@WebServlet("/GetQnaBoard.do")
public class GetQnaBoardCtrl extends HttpServlet {
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
			QnaBoardDAO qdao = new QnaBoardDAO();

			QnaBoardVO bean = qdao.getOneBoard(seq);
			request.setAttribute("board",bean );
			RequestDispatcher dis =request.getRequestDispatcher("qna_board_update.jsp");
			dis.forward(request, response);


			
	}

}

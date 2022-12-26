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
 * Servlet implementation class QnaBoardOneCtrl
 */
@WebServlet("/QnaBoardOne.do")
public class QnaBoardOneCtrl extends HttpServlet {
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
			int seq = Integer.parseInt(request.getParameter("seq"));
			QnaBoardDAO qdao = new QnaBoardDAO();
			String pass = qdao.getPass(seq);
			
			if(pass.equals(password)) {
				QnaBoardVO bean = qdao.getBoard(seq);
				request.setAttribute("board",bean );
				RequestDispatcher dis =request.getRequestDispatcher("qna_board.jsp");
				dis.forward(request, response);
			}else {
				PrintWriter out = response.getWriter();
				out.println("<script>alert('비밀번호 오류'); history.back(-1);</script>");
			}
			
	}

}

package view.qna;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.QnaBoardDAO;
import vo.QnaBoardVO;


@WebServlet("/QnaBoardList.do")
public class QnaBoardListCtrl extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}

	protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html; charset=utf-8");
			QnaBoardDAO qdao = new QnaBoardDAO();
			ArrayList<QnaBoardVO> qList = new ArrayList<QnaBoardVO>();
			qList = qdao.getBoardList();
			
			request.setAttribute("qnaList", qList);
			RequestDispatcher dis =request.getRequestDispatcher("qna_board_list.jsp");
			dis.forward(request, response);
	}

}

package view.qna;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.QnaBoardDAO;


/**
 * Servlet implementation class DeleteQnaBoardCtrl
 */
@WebServlet("/DeleteQnaBoard.do")
public class DeleteQnaBoardCtrl extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}

	protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		String pass = request.getParameter("pass");
		String password = request.getParameter("password");
		int seq = Integer.parseInt(request.getParameter("seq"));
		
		PrintWriter out = response.getWriter();
		if(pass.equals(password)) {
			QnaBoardDAO qdao = new QnaBoardDAO();
			qdao.deleteBoard(seq);
			
			out.println("<script>alert('삭제완료. 목록으로 돌아갑니다.'); location.href='QnaBoardList.do';</script>");
		}else {
			out.println("<script>alert('비밀번호오류. 다시 입력해주세요'); history.back(-1);</script>");
		}
	}

}

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
 * Servlet implementation class UpdateQnaBoardCtrl
 */
@WebServlet("/UpdateQnaBoard.do")
public class UpdateQnaBoardCtrl extends HttpServlet {
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
			String content = request.getParameter("content");
			QnaBoardDAO qdao = new QnaBoardDAO();
			qdao.updateBoard(seq,content);

			out.println("<script>alert('수정완료. 목록으로 돌아갑니다.'); location.href='QnaBoardList.do';</script>");
		}else {
			out.println("<script>alert('비밀번호오류. 다시 입력해주세요.'); history.back(-1);</script>");
		}
			
	}

}

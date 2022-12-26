package view.qna;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.QnaBoardDAO;
import vo.QnaBoardVO;


@WebServlet("/InsertQnsBoard.do")
public class InsertQnsBoardCtrl extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}
	protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		QnaBoardVO bean = new QnaBoardVO();
		bean.setSubject(request.getParameter("subject"));
		bean.setWriter(request.getParameter("writer"));
		bean.setEmail(request.getParameter("email"));
		bean.setContent(request.getParameter("content"));
		bean.setPassword(request.getParameter("password"));
		bean.setAgree(request.getParameter("privacy_agreement"));
		
		QnaBoardDAO qdao = new QnaBoardDAO();
		int cnt = qdao.insertBoard(bean);
		if(cnt != 0) {
			PrintWriter out = response.getWriter();
			out.println("<script>alert('등록완료.'); location.href='QnaBoardList.do';</script>");
		}
		
		
	}

}

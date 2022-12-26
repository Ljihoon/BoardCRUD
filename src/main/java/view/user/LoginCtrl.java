package view.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import biz.UserDAO;

/**
 * Servlet implementation class LoginCtrl
 */
@WebServlet("/LoginCtrl")
public class LoginCtrl extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}
	protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		String id = request.getParameter("id");
		String password = request.getParameter("pw");
		
		UserDAO udao = new UserDAO();
		String pass = udao.getPass(id);
		
		PrintWriter out = response.getWriter();
		if(pass.equals(password)) {
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			out.println("<script>alert('로그인 성공'); location.href='index.jsp';</script>");
		}else {
			out.println("<script>alert('비밀번호오류 다시 입력해주세요'); history.back(-1);</script>");
		}
	}

}

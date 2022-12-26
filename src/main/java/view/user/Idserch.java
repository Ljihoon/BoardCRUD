package view.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.UserDAO;

/**
 * Servlet implementation class Idserch
 */
@WebServlet("/Idserch")
public class Idserch extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		
		UserDAO udao =new UserDAO();
		String id = udao.getid(name, email);
		
		PrintWriter out = response.getWriter();
		out.println("<script>alert('아이디는 '+id+'입니다.'); location.href='login.jsp';</script>");
	}

}

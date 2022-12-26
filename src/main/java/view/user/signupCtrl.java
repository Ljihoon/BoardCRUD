package view.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.QnaBoardDAO;
import biz.UserDAO;
import vo.AteamUserVO;

/**
 * Servlet implementation class signupCtrl
 */
@WebServlet("/signupCtrl.do")
public class signupCtrl extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}

	protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		AteamUserVO bean = new AteamUserVO();
		bean.setId(request.getParameter("id"));
		bean.setPassword(request.getParameter("pw1"));
		bean.setName(request.getParameter("name"));
		bean.setTel(request.getParameter("phone"));
		bean.setEmail(request.getParameter("email"));
		bean.setAgree_clauses(request.getParameter("agree2"));
		bean.setAgree_info(request.getParameter("agree2"));
		bean.setAgree_email(request.getParameter("agree2"));
		
		UserDAO udao = new UserDAO();
		int cnt = udao.insertUser(bean);

		if(cnt != 0) {
			PrintWriter out = response.getWriter();
			out.println("<script>alert('회원가입 완료.로그인화면으로 돌아갑니다.'); location.href='login.jsp';</script>");			
		}
		

	}

}

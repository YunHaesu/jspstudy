package jsptest;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/sessionLogin")
public class SessionLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProc(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProc(request, response);
	}

	protected void doProc(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset = UTF-8");
		PrintWriter out = response.getWriter();
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		if (id.equals("java") && passwd.equals("java")) {
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			RequestDispatcher dispatcher = request.getRequestDispatcher("menu.jsp");
			dispatcher.forward(request, response);
			// dispatcher -> 뒤에는 이동할 페이지 그대로 사용하기에 외워두기
			// dispatcher request와 response를 옮겨주고 페이지 이동을 가려준다 그러므로 보안성이 높다.
		} else {
			out.println("<script>");
			out.println("alert('아이디나 비밀번호가 일치하지 않습니다.')");
			out.println("history.back()");
			out.println("</script>");
		}
	}

}

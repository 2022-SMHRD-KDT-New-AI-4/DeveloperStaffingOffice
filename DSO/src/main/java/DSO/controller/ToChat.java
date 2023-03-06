package DSO.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DSO.model.Service_info_pr_DAO;
import DSO.model.Service_info_pr_VO;

public class ToChat extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		
		int seq = Integer.parseInt(request.getParameter("seq"));
		Service_info_pr_DAO dao = new Service_info_pr_DAO();
		Service_info_pr_VO post = dao.selectPost(seq);
		
		session.setAttribute("post", post);
		
		response.sendRedirect("Chatting_C.jsp");
	
	}

}

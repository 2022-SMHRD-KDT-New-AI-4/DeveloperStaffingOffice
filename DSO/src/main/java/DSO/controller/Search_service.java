package DSO.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DSO.model.Service_info_pr_DAO;
import DSO.model.Service_info_pr_VO;

@WebServlet("/Search_service")
public class Search_service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String value = request.getParameter("searchWord");
		
		Service_info_pr_DAO dao = new Service_info_pr_DAO();
		
		HttpSession session = request.getSession();
		
		ArrayList<Service_info_pr_VO> list = dao.selectSearch(value);
		
		session.setAttribute("searchWord", value);
		session.setAttribute("cate", list);
		
		response.sendRedirect("search_result.jsp");

	}

}

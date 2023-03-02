package DSO.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DSO.model.Service_info_pr_DAO;
import DSO.model.Service_info_pr_VO;

public class ToUx extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setCharacterEncoding("UTF-8");

		Service_info_pr_DAO dao = new Service_info_pr_DAO();
		
		ArrayList<Service_info_pr_VO> list = dao.selectCateUX();
		
		HttpSession session = request.getSession();
		session.setAttribute("cate", list);
		
		response.sendRedirect("c1_UX.jsp");
	}

}

package DSO.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import DSO.model.Client_register_VO;
import DSO.model.Like_DAO;
import DSO.model.Like_VO;
import DSO.model.Service_info_pr_VO;

public class ToLike extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		Client_register_VO loginC = (Client_register_VO) session.getAttribute("loginC");
		String value = loginC.getC_id();
		Like_DAO dao = new Like_DAO();
		ArrayList<Like_VO> list = dao.selectLike(value);
		
		session.setAttribute("likeList", list);
		response.sendRedirect("likepage.jsp");
		
	}

}

package DSO.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DSO.model.Client_register_DAO;
import DSO.model.Client_register_VO;
import DSO.model.Like_DAO;
import DSO.model.Like_VO;
// 의뢰인 로그인 서비스
@WebServlet("/Client_Login_service")
public class Client_Login_service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String c_id = request.getParameter("c_id");  
		String c_pw = request.getParameter("c_pw");
		
		Client_register_VO vo = new Client_register_VO(c_id,c_pw);
		
		Client_register_DAO dao = new Client_register_DAO();
		Client_register_VO lvo = dao.clientlogin(vo);
		
		// 로그인 성공 / 실패 판단
		if (lvo != null) { // 로그인 성공
			System.out.println("로그인 성공");
			HttpSession session = request.getSession();
			session.setAttribute("loginC", lvo);
			String value = lvo.getC_id();
			Like_DAO dao2 = new Like_DAO();
			ArrayList<Like_VO> list = dao2.selectLike(value);
			session.setAttribute("likeList", list);
		}else {
			System.out.println("로그인 실패");
		}
		response.sendRedirect("Main.jsp");
	}
}



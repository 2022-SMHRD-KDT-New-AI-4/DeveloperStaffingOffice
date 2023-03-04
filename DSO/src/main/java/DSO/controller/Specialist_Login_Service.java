package DSO.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DSO.model.Like_DAO;
import DSO.model.Like_VO;
import DSO.model.Specialist_register_DAO;
import DSO.model.Specialist_register_VO;
// 전문가 로그인 서비스
@WebServlet("/Specialist_Login_Service")
public class Specialist_Login_Service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String s_id = request.getParameter("s_id");  
		String s_pw = request.getParameter("s_pw");

		Specialist_register_VO vo = new Specialist_register_VO(s_id,s_pw);
		
		Specialist_register_DAO dao = new Specialist_register_DAO();
		// 로그인 처리(db에 값이 있는지 확인) -> 사용자의 정보 가져오기
		Specialist_register_VO lvo = dao.specialistlogin(vo);
		
		// 로그인 성공 / 실패 판단
		if (lvo != null) { // 로그인 성공
			System.out.println("전문가 로그인 성공");
			HttpSession session = request.getSession();
			session.setAttribute("loginS", lvo);
			String value = lvo.getS_id();
			Like_DAO dao2 = new Like_DAO();
			ArrayList<Like_VO> list = dao2.selectLike(value);
			session.setAttribute("likeList", list);
		} else { // 로그인 실패
			System.out.println("전문가 로그인 실패");
		}
		response.sendRedirect("Main.jsp");
	}

}
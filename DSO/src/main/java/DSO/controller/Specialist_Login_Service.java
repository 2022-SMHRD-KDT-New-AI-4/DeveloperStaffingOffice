package DSO.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DSO.model.Specialist_register_DAO;
import DSO.model.Specialist_register_VO;

/**
 * Servlet implementation class Specialist_Login_Service
 */
@WebServlet("/Specialist_Login_Service")
public class Specialist_Login_Service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("UTF-8");

		String s_id = request.getParameter("s_id");  
		String s_pw = request.getParameter("s_pw");
		String s_name = request.getParameter("s_name");
		String s_job = request.getParameter("s_job");
		String s_business = request.getParameter("s_business");
		String s_interest = request.getParameter("s_interest");
//		String s_joindate = request.getParameter("s_joindate");
		
		Specialist_register_VO vo = new Specialist_register_VO(s_id,s_pw,s_name,s_job,s_business,s_interest);
		
		Specialist_register_DAO dao = new Specialist_register_DAO();
		// 로그인 처리(db에 값이 있는지 확인) -> 사용자의 정보 가져오기
		Specialist_register_VO lvo = dao.specialistlogin(vo);

		// 로그인 성공 / 실패 판단
		if (lvo != null) { // 로그인 성공
			System.out.println("로그인 성공");
			// 세션에 사용자의 정보 저장
			HttpSession session = request.getSession();
			session.setAttribute("#", lvo);
		} else { // 로그인 실패
			System.out.println("로그인 실패");
		}

		// 로그인 성공시에는 main 페이지 상에 사용자의 정보가 출력
		response.sendRedirect("#");
	}

}
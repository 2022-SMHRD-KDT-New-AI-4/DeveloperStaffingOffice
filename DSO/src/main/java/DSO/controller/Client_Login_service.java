package DSO.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DSO.model.Client_register_DAO;
import DSO.model.Client_register_VO;



/**
 * Servlet implementation class Client_Login_service
 */
@WebServlet("/Client_Login_service")
public class Client_Login_service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String c_id = request.getParameter("c_id");  
		String c_pw = request.getParameter("c_pw");
		String c_name = request.getParameter("c_name");
		String c_job = request.getParameter("c_job");
		String c_business = request.getParameter("c_business");
		String c_interest = request.getParameter("c_interest");
//		String c_joindate = request.getParameter("c_joindate");
		
		Client_register_VO vo = new Client_register_VO(c_id,c_pw,c_name,c_job,c_business,c_interest);
		
		Client_register_DAO dao = new Client_register_DAO();
		// 로그인 처리(db에 값이 있는지 확인) -> 사용자의 정보 가져오기
		Client_register_VO lvo = dao.login(vo);

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



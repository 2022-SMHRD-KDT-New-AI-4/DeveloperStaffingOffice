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
 * Servlet implementation class Specialist_Update_Serviece
 */
@WebServlet("/Specialist_Update_Serviece")
public class Specialist_Update_Service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String s_id = request.getParameter("s_id");
		String s_pw = request.getParameter("s_pw");
		String s_name = request.getParameter("s_name");
		String s_job = request.getParameter("s_job");
		String s_business = request.getParameter("s_business");
		String s_interest = request.getParameter("s_interest");
		
		Specialist_register_VO vo = new Specialist_register_VO(s_id, s_pw, s_name, s_job, s_business, s_interest);
		// System.out.println(vo.toString());
		Specialist_register_DAO dao = new Specialist_register_DAO();
		
		int cnt = dao.specialistupdate(vo);
		
		if(cnt > 0 ) {
			System.out.println("회원정보 수정 성공!");
			HttpSession session = request.getSession();
			//session 값의 수정하는 메서드 자체 존재X
			//새로 세션을 생성
			session.setAttribute("loginM", vo);
			//main 이동
			response.sendRedirect("#");
		}else {
			System.out.println("회원정보 수정 실패...");
			//update.jsp 이동
			response.sendRedirect("#");
		}
		
		
		
	}

}

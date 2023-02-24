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

 // 의뢰인 정보 수정
@WebServlet("/Client_Update_Serivce")
public class Client_Update_Serivce extends HttpServlet {
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
		
		Client_register_VO vo = new Client_register_VO(c_id, c_pw, c_name, c_job, c_business, c_interest);

		Client_register_DAO dao = new Client_register_DAO();
		
		int cnt = dao.clientupdate(vo);
		
		if(cnt > 0 ) {
			System.out.println("회원정보 수정 성공!");
			HttpSession session = request.getSession();
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

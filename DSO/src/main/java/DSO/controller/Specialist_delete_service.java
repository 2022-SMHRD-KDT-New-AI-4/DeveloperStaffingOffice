package DSO.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DSO.model.Specialist_register_DAO;

/**
 * Servlet implementation class Specialist_delete_service
 */
@WebServlet("/Specialist_delete_service")
public class Specialist_delete_service extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String s_id = request.getParameter("s_id");
		
		Specialist_register_DAO dao = new Specialist_register_DAO();

		int cnt = dao.specialistdelete(s_id);
		
		if(cnt > 0 ) {
			System.out.println("전문가 회원탈퇴 성공!");
		}else {
			System.out.println("전문가 회원탈퇴 실패..");
		}
	}

}
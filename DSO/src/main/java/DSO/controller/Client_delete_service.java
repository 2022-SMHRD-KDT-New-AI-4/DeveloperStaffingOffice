package DSO.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DSO.model.Client_register_DAO;

/**
 * Servlet implementation class Client_delete_service
 */
@WebServlet("/Client_delete_service")
public class Client_delete_service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String c_id = request.getParameter("c_id");
		
		Client_register_DAO dao = new Client_register_DAO();
		int cnt = dao.clientdelete(c_id);
		
		if(cnt > 0 ) {
			System.out.println("의뢰인 회원탈퇴 성공!");
		}else {
			System.out.println("의뢰인 회원탈퇴 실패..");
		}
	}

}

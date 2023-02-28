package DSO.controller;
//서비스 삭제 기능
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DSO.model.Client_register_DAO;
import DSO.model.Service_register_DAO;


@WebServlet("/Service_delete_service")
public class Service_delete_service extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String s_id = request.getParameter("s_id");
		
		Service_register_DAO dao = new Service_register_DAO();
		int cnt = dao.servicedelete(s_id);
		
		if(cnt > 0) {
			System.out.println("게시물 삭제 성공!");
		}else {
			System.out.println("게시물 삭제 실패..");
		}
	}

}
package DSO.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DSO.model.Register_client_DAO;
import DSO.model.Register_client_VO;

/**
 * Servlet implementation class Register_client_service
 */
@WebServlet("/Register_client_service")
public class Register_client_service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String c_id = request.getParameter("c_id");
		int register_cnt = Integer.parseInt(request.getParameter("register_cnt"));
		
		Register_client_VO vo = new Register_client_VO(c_id,register_cnt);
		
		Register_client_DAO dao = new Register_client_DAO();
		int cnt = dao.register_client(vo);
		
		if(cnt > 0) {
			System.out.println("의뢰인 주문접수성공!");
		}else {
			System.out.println("의뢰인 주문접수실패..");
		}
	
	}

}

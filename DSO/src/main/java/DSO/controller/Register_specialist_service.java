package DSO.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DSO.model.Register_specialist_DAO;
import DSO.model.Register_specialist_VO;

 // 전문가 주문 접수

@WebServlet("/Register_specialist_service")
public class Register_specialist_service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String s_id = request.getParameter("s_id");
		int register_cnt = Integer.parseInt(request.getParameter("register_cnt")); 
		
		Register_specialist_VO vo = new Register_specialist_VO(s_id, register_cnt);
		
		Register_specialist_DAO dao = new Register_specialist_DAO();
		int cnt = dao.register_specialist(vo);
		
		if(cnt >0) {
			System.out.println("전문가 주문접수성공!");
		}else {
			System.out.println("전문가 주문접수실패...");
		}
	}

}

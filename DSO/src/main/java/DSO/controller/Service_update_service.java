package DSO.controller;
//서비스 업데이트 기능
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DSO.model.Service_register_DAO;
import DSO.model.Service_register_VO;

/**
 * Servlet implementation class Service_update_service
 */
@WebServlet("/Service_update_service")
public class Service_update_service extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String service_title = request.getParameter("service_title");
		String service_category = request.getParameter("service_category");
		int service_price = Integer.parseInt(request.getParameter("service_price"));
		String service_desc = request.getParameter("service_desc");
		String service_requisite = request.getParameter("service_requisite");
		String service_img = request.getParameter("service_img");
		
		
		Service_register_VO vo = new Service_register_VO(service_title,service_category,service_price,service_desc,
				service_requisite,service_img);
		
		Service_register_DAO dao = new Service_register_DAO();
		int cnt = dao.serviceupdate(vo);
		
		if(cnt>0) {
			System.out.println("게시물 수정 성공!");
		}else {
			System.out.println("게시물 수정 실패...");
		}
	}

}

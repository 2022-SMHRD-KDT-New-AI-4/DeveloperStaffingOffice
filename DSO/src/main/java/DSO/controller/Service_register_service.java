package DSO.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DSO.model.Service_register_DAO;
import DSO.model.Service_register_VO;

// 상품게시물 등록 서비스
@WebServlet("/Service_register_service")
public class Service_register_service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
//		int service_seq = Integer.parseInt(request.getParameter("service_seq"));
		String service_title = request.getParameter("service_title");
		String service_category = request.getParameter("service_category");
		int service_price = Integer.parseInt(request.getParameter("service_price"));
		String service_desc = request.getParameter("service_desc");
		String service_requisite = request.getParameter("service_requisite");
		String service_img = request.getParameter("service_img");
		String s_id = request.getParameter("s_id");
		
		Service_register_VO vo = new Service_register_VO(service_title,service_category,service_price,service_desc,service_requisite,service_img,s_id);
	
		Service_register_DAO dao = new Service_register_DAO();
		int cnt = dao.serviceregister(vo);
		
		if(cnt>0) {
			System.out.println("서비스 등록 성공!");
		}else {
			System.out.println("서비스 등록 실패...");
		}
	}

}

package DSO.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DSO.model.Client_register_DAO;
import DSO.model.Client_register_VO;


@WebServlet(name = "test2", urlPatterns = { "/test2" })
public class Client_register_service extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String c_id = request.getParameter("c_id");  
		String c_pw = request.getParameter("c_pw");
		String c_name = request.getParameter("c_name");
		String c_job = request.getParameter("c_job");
		String c_business = request.getParameter("c_business");
		String c_interest = request.getParameter("c_interest");
		String c_joinday = request.getParameter("c_joinday");
		
		Client_register_VO vo = new Client_register_VO(c_id,c_pw,c_name,c_job,c_business,c_interest,c_joinday);
	
		Client_register_DAO dao = new Client_register_DAO();
		int cnt = dao.clientjoin(vo);
		
		if(cnt > 0) {
			System.out.println("회원가입 성공");
		}else {
			System.out.println("회원가입 실패...");
		}
	}
}
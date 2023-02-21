package DSO.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DSO.model.Client_register_DAO;
import DSO.model.Client_register_VO;
import DSO.model.Specialist_register_DAO;
import DSO.model.Specialist_register_VO;

@WebServlet("/Specialist_register_service")
public class Specialist_register_service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String s_id = request.getParameter("s_id");  
		String s_pw = request.getParameter("s_pw");
		String s_name = request.getParameter("s_name");
		String s_job = request.getParameter("s_job");
		String s_business = request.getParameter("s_business");
		String s_interest = request.getParameter("s_interest");
		String s_joinday = request.getParameter("s_joinday");
		
		Specialist_register_VO vo = new Specialist_register_VO(s_id,s_pw,s_name,s_job,s_business,s_interest,s_joinday);
	
		Specialist_register_DAO dao = new Specialist_register_DAO();
		int cnt = dao.specialistjoin(vo);
		
		if(cnt > 0) {
			System.out.println("회원가입 성공");
		}else {
			System.out.println("회원가입 실패...");
		}
	}

}

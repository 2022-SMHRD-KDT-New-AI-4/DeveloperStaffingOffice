package DSO.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DSO.model.Specialist_register_DAO;
import DSO.model.Specialist_register_VO;

 //전문가 회원가입 서비스

@WebServlet("/Specialist_register_service")
public class Specialist_register_service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String s_id = request.getParameter("s_id");  
		String s_pw = request.getParameter("s_pw");
		String s_name = request.getParameter("s_name");
		String s_job = request.getParameter("s_job");
		String s_business = request.getParameter("s_business");
		String s_interest = request.getParameter("s_interest");
//		String s_joindate = request.getParameter("s_joindate");
		
		Specialist_register_VO vo = new Specialist_register_VO(s_id,s_pw,s_name,s_job,s_business,s_interest);
		
		Specialist_register_DAO dao = new Specialist_register_DAO();
		int cnt = dao.specialistjoin(vo);
		
		if(cnt > 0) {
			System.out.println("전문가 회원가입 성공!");
			RequestDispatcher rd =  request.getRequestDispatcher("Main.jsp"); 
	         rd.forward(request, response);
		}else {
			System.out.println("전문가 회원가입 실패...");
			RequestDispatcher rd =  request.getRequestDispatcher("join_R.jsp"); 
	         rd.forward(request, response);
		}
	}

}



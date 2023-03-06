package DSO.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DSO.model.Specialist_register_DAO;
import DSO.model.Specialist_register_VO;


public class id_confirm extends HttpServlet {



	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		System.out.println("실행 확인");
		 request.setCharacterEncoding("UTF-8");
	      
	      response.setContentType("text/html;charset=UTF-8");
	      PrintWriter out = response.getWriter();
		
		String s_id = request.getParameter("s_id");
		System.out.println(s_id);
//		Specialist_register_VO vo = new Specialist_register_VO(s_id);
        Specialist_register_DAO dao = new Specialist_register_DAO();
        int cnt = dao.selectid(s_id);
		
		out.print(cnt);
	}

}

package DSO.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DSO.model.Client_register_DAO;
import DSO.model.Specialist_register_DAO;

public class c_id_confirm extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		   System.out.println("실행확인");
		
		   request.setCharacterEncoding("UTF-8");
	      
		   response.setContentType("text/html;charset=UTF-8");
		   PrintWriter out = response.getWriter();
			
		   String c_id = request.getParameter("c_id");
		

	       Client_register_DAO dao = new Client_register_DAO();
	       int cnt = dao.c_selectid(c_id);
			
		   out.print(cnt);
		
		
		
	}

}

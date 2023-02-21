package DSO.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class Portfolio_Upload_Service
 */
@WebServlet("/Portfolio_Upload_Service")
public class Portfolio_Upload_Service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String imgData = request.getParameter("imgData");
		
		
		String message = "포트폴리오 등록 성공!";
//		response.setContentType("text/plain");
		
		response.getWriter().write(message);
		
	    response.sendRedirect("Portfolio.jsp");
	}
	

}

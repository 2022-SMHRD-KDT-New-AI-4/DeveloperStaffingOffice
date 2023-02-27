package DSO.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import DSO.model.Service_register_DAO;
import DSO.model.Service_register_VO;

/**
 * Servlet implementation class Service_list_service
 */
@WebServlet("/Service_list_service")
public class Service_list_service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Service_register_DAO dao = new Service_register_DAO();
		ArrayList<Service_register_VO> list=dao.selectAllserviceimg();
		response.setContentType("text/json");
		PrintWriter out=response.getWriter();
		Gson g =new Gson();
		String json=g.toJson(list);
		out.println(json);
	}

}

package DSO.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import DSO.model.Service_register_DAO;
import DSO.model.Service_register_VO;

@WebServlet("/Search_service")
public class Search_service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String value = request.getParameter("sendSearch");
		System.out.println(value);
		Service_register_DAO dao = new Service_register_DAO();
		
		System.out.println(value);
		
		ArrayList<Service_register_VO> list = dao.selectSearch(value);
		
		System.out.println(list.toString());
	}

}

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

import DSO.model.Portfolio_DAO;
import DSO.model.Portfolio_VO;

/**
 * Servlet implementation class Portfolio_list_service
 */
@WebServlet("/Portfolio_list_service")
public class Portfolio_list_service extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Portfolio_DAO dao=new Portfolio_DAO();
		ArrayList<Portfolio_VO> list=dao.selectAllPortfolios();
		response.setContentType("text/json");
		PrintWriter out=response.getWriter();
		Gson g=new Gson();
		String json=g.toJson(list);
		out.println(json);
	}
}
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

@WebServlet("/Portfolio_List_service")
public class Portfolio_List_service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json");
		
		// Retrieve list of portfolios from database
		ArrayList<Portfolio_VO> portfolioList = new ArrayList<Portfolio_VO>();
		Portfolio_DAO portfolioDAO = new Portfolio_DAO();
		portfolioList = portfolioDAO.selectAllPortfolios();
		
		// Convert portfolioList to JSON string using Gson library
		Gson gson = new Gson();
		String portfolioListJson = gson.toJson(portfolioList);
		
		// Send portfolioListJson as response
		PrintWriter out = response.getWriter();
		out.write(portfolioListJson);
		out.flush();
		out.close();
	}
}
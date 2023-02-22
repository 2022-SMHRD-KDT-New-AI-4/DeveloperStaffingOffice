package DSO.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DSO.db.SqlSessionManager;
import DSO.model.Portfolio_DAO;
import DSO.model.Portfolio_VO;

/**
 * Servlet implementation class Portfolio_register_service
 */
@WebServlet("/Portfolio_register_service")
public class Portfolio_register_service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String action = request.getParameter("action");

        if (action.equals("list")) {
            try {
                Portfolio_DAO dao = new Portfolio_DAO(SqlSessionManager.getSqlSession().openSession().getConnection());
                List<Portfolio_VO> portfolios = dao.getAllPortfolios();
                request.setAttribute("portfolios", portfolios);
                request.getRequestDispatcher("Portfolio.jsp").forward(request, response);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } else if (action.equals("add")) {
            try {
                String s_Id = request.getParameter("s_Id");
                String pf_Url = request.getParameter("pf_Url");
                String pf_Img1 = request.getParameter("pf_Img1");
                String pf_Img2 = request.getParameter("pf_Img2");
                String pf_Img3 = request.getParameter("pf_Img3");

                Portfolio_VO portfolio = new Portfolio_VO(s_Id, pf_Url, pf_Img1, pf_Img2, pf_Img3);

                Portfolio_DAO dao = new Portfolio_DAO(SqlSessionManager.getSqlSession().openSession().getConnection());
                dao.addPortfolio(portfolio);

                request.setAttribute("message", "New portfolio added successfully");
                request.getRequestDispatcher("Result.jsp").forward(request, response);

            } catch (SQLException e) {
                e.printStackTrace();
            }

        } else if (action.equals("delete")) {
            try {
                String pf_Url = request.getParameter("pf_Url");

                Portfolio_DAO dao = new Portfolio_DAO(SqlSessionManager.getSqlSession().openSession().getConnection());
                dao.deletePortfolio(pf_Url);

                request.setAttribute("message", "Portfolio deleted successfully");
                request.getRequestDispatcher("Result.jsp").forward(request, response);

            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
		
	}



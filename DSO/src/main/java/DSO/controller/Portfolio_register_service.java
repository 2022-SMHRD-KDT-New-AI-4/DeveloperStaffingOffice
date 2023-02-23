package DSO.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DSO.model.Portfolio_DAO;
import DSO.model.Portfolio_VO;

@WebServlet("/Portfolio_register_service")
public class Portfolio_register_service extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
    	request.setCharacterEncoding("UTF-8");
    	
    	String s_Id = request.getParameter("s_Id");
    	String pf_Url = request.getParameter("pf_Url");
    	String pf_Img1 = request.getParameter("pf_Img1");
    	
    	Portfolio_VO vo = new Portfolio_VO();
    	Portfolio_DAO dao = new Portfolio_DAO();
    	int cnt = dao.insertPortfolio(vo);
    	
    	if(cnt>0) {
    		System.out.println("포트폴리오 등록하기");
    	}
    	else {
    		System.out.println("포트폴리오 등록 실패");
    	}
    	
    	
}
}


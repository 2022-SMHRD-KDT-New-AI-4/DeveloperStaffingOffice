package DSO.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.Base64;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import DSO.model.Portfolio_VO;
import DSO.model.fileDAO;

@WebServlet("/Portfolio_List_service")
public class Portfolio_List_service extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		Part part = request.getPart("profile");
		
		String fileName = new fileDAO().getFilename(part);
		
		if(fileName.equals("7")){
			response.getWriter().write("-1");
	} else {
		
		if(fileName!=null&&!fileName.isEmpty()) {
			part.write(fileName);
		}
	}
		if(new accessdbDAO().conntest() ==1) {
			
			if(new accessdbDAO().writeData(fileName)==0) {
				response.getWriter().write("1");
			}else {
				response.getWriter().write("-1");
			}
		} else {
			response.getWriter().write("-1");
		}
		
	}

}
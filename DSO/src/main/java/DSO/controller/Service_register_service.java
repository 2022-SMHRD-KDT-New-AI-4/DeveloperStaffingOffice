package DSO.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import DSO.model.Service_info_pr_VO;
import DSO.model.Service_register_DAO;
import DSO.model.Service_register_VO;
import DSO.model.Specialist_register_VO;

// 상품게시물 등록 서비스
@WebServlet("/Service_register_service")
public class Service_register_service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		String directory=getServletContext().getRealPath("boardImg");
		
		
		System.out.println(directory);
		int sizeLimit = 100 * 1024 * 1024; // 100MB 제한

		MultipartRequest multi = new MultipartRequest(request, directory, sizeLimit, "UTF-8",
				new DefaultFileRenamePolicy());
		
		String service_title = multi.getParameter("service_title");
		String[] service_category = (multi.getParameter("service_category")).split(",");
		String service_categorynum1 = service_category[0];
		String service_categorynum2 = service_category[1];
		int service_price = Integer.parseInt(multi.getParameter("service_price"));
		String service_desc = multi.getParameter("service_desc");
		String service_requisite = multi.getParameter("service_requisite");
		String service_img = multi.getFilesystemName("service_img");
		Specialist_register_VO loginS = (Specialist_register_VO) session.getAttribute("loginS");
		String s_id = loginS.getS_id();
		
		
		
		Service_info_pr_VO vo = new Service_info_pr_VO(service_title,service_categorynum1,service_categorynum2,service_price,service_desc,service_requisite,service_img,s_id);
		
		Service_register_DAO dao = new Service_register_DAO();
		int cnt = dao.serviceregister(vo);
		
		if(cnt > 0 ) {
			out.print("<script>");
	        out.print("alert(`상품 등록 성공!`);");
	        out.print("location.href='Mypage_C.jsp'");
	        out.print("</script>");
		}else {
			out.print("<script>");
	        out.print("alert(`상품 등록 실패..`);");
	        out.print("location.href='Mypage_C.jsp'");
	        out.print("</script>");
		}

	}

}

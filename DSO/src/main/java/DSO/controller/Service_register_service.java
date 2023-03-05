package DSO.controller;

import java.io.IOException;
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
//		int service_seq = Integer.parseInt(request.getParameter("service_seq"));

		String directory=request.getRealPath("boardImg");
		int sizeLimit = 100 * 1024 * 1024; // 100MB 제한

		MultipartRequest multi = new MultipartRequest(request, directory, sizeLimit, "UTF-8",
				new DefaultFileRenamePolicy());
		
		String service_title = multi.getParameter("service_title");
		String service_category1 = multi.getParameter("service_category");
		System.out.println(service_category1);
		String service_category2 = multi.getParameter("service_category");
		int service_price = Integer.parseInt(multi.getParameter("service_price"));
		String service_desc = multi.getParameter("service_desc");
		String service_requisite = multi.getParameter("service_requisite");
		String service_img = multi.getFilesystemName("service_img");
		Specialist_register_VO loginS = (Specialist_register_VO) session.getAttribute("loginS");
		String s_id = loginS.getS_id();
		
		Service_info_pr_VO vo = new Service_info_pr_VO(service_title,service_category1,service_category2,service_price,service_desc,service_requisite,service_img,s_id);
		
		Service_register_DAO dao = new Service_register_DAO();
		int cnt = dao.serviceregister(vo);
		
		if(cnt > 0 ) {
			System.out.println("서비스 등록 성공!");
		}else {
			System.out.println("서비스 등록 실패..");
		}

	}

}

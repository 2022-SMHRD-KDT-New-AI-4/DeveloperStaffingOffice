package DSO.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import DSO.db.SqlSessionManager;

// 상품 게시물 등록 DAO
public class Service_register_DAO {
	
	private SqlSessionFactory sqlSessionFactory = DSO.db.SqlSessionManager.getSqlSession();

	public ArrayList<Service_register_VO> selectAllserviceimg(){
		SqlSession session = sqlSessionFactory.openSession(true);
		List<Service_register_VO> list = session.selectList("selectAllserviceimg");
		session.close();
		return (ArrayList<Service_register_VO>)list;
	}
	
	public int serviceregister(Service_info_pr_VO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("serviceregister",vo);
		session.close(); 
		return cnt;
	}

	public int serviceupdate(Service_register_VO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.update("serviceupdat",vo);
		session.close();
		return cnt;
	}
	
	public int servicedelete(String s_id) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.delete("servicedelete",s_id);
		session.close();
		return cnt;
	}

}

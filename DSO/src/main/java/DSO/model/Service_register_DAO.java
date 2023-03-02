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
	
	public int serviceregister(Service_register_VO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("serviceregister",vo);
		session.close(); 
		return cnt;
	}

	public int serviceupdate(Service_register_VO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.update("serviceupdate",vo);
		session.close();
		return cnt;
	}
	
	public ArrayList<Service_register_VO> selectSearch(String sendSearch){
		SqlSession session = sqlSessionFactory.openSession(true);
		System.out.println("성공");
		List<Service_register_VO> list = session.selectList("selectSearch",sendSearch);
		System.out.println("성공");
		session.close();
		System.out.println("성공");
		return (ArrayList<Service_register_VO>)list;
	}
	
}

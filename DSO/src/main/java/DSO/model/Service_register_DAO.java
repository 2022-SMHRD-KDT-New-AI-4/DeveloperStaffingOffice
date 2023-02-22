package DSO.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import DSO.db.SqlSessionManager;

public class Service_register_DAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public int serviceregister(Service_register_VO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("serviceregister",vo);
		session.close(); 
		return cnt;
	}
	
	
}

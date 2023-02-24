package DSO.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import DSO.db.SqlSessionManager;
	// 의뢰인 주문 DAO
public class Register_client_DAO {
private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public int register_client(Register_client_VO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("register_client",vo);
		session.close(); 
		return cnt;
	}

}

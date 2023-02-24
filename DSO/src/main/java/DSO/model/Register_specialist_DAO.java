package DSO.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import DSO.db.SqlSessionManager;
 // 전문가 주문 DAO
public class Register_specialist_DAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public int register_specialist(Register_specialist_VO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("register_specialist",vo);
		session.close(); 
		return cnt;
	}


}

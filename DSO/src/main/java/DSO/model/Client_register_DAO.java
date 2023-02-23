package DSO.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import DSO.db.SqlSessionManager;

public class Client_register_DAO {
private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public int clientjoin(Client_register_VO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("clientjoin",vo);
		session.close(); 
		return cnt;
	}
	
	public Client_register_VO clientlogin(Client_register_VO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		Client_register_VO lvo = session.selectOne("clientlogin", vo);
		session.close(); 					
		return lvo;
	}
	
	public int clientdelete(String c_id) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.delete("clientdelete",c_id);
		session.close();
		return cnt;
	}
}

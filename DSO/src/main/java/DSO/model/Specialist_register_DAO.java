package DSO.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import DSO.db.SqlSessionManager;

public class Specialist_register_DAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	public int specialistjoin(Specialist_register_VO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("specialistjoin",vo);
		session.close();
		return cnt;
	}

	public Specialist_register_VO specialistlogin(Specialist_register_VO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		Specialist_register_VO lvo = session.selectOne("specialistlogin",vo);
		session.close(); 	
		return lvo;
	}

	public int specialistupdate(Specialist_register_VO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.update("specialistupdate",vo);
		session.close(); 	
		return cnt;
	}



}

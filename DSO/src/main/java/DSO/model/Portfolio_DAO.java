package DSO.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import DSO.db.SqlSessionManager;

public class Portfolio_DAO {
private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public int register_portfolio(Portfolio_VO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("register_portfolio",vo);
		session.close(); 
		return cnt;
	}

}

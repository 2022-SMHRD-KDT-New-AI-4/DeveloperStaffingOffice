package DSO.model;

//조회수 증가 DAO

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import DSO.db.SqlSessionManager;

public class viewsDAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
		
	public int viewsUp(viewsVO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.update("views",vo);
		session.close();
		return cnt;
		
		
	}
	
}

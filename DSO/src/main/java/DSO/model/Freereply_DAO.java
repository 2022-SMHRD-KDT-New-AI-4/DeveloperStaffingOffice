package DSO.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import DSO.db.SqlSessionManager;

public class Freereply_DAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	public int freereplyinsert(Freereply_VO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("freereplyinsert",vo);
		session.close();
		return cnt;
	}

	public ArrayList<Freereply_VO> freereplyList() {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<Freereply_VO> list = session.selectList("freereply");
		session.close();
		return (ArrayList<Freereply_VO>)list;
	}




}
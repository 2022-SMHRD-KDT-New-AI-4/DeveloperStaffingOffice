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

	public ArrayList<Freereply_VO> freereplyList(int service_seq) {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<Freereply_VO> list = session.selectList("freereplyselect",service_seq);
		session.close();
		return (ArrayList<Freereply_VO>)list;
	}


	public int freereplyDelete(String loginC) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.delete("freereplydelete",loginC);
		session.close();
		return cnt;
	}

	public int freereplyUpdate(Freereply_VO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt =session.update("freereplyUpdate", vo);
		session.close();
		return cnt;
	}

	public int buyListUpdate(Freereply_VO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt =session.update("buyListUpdate", vo);
		session.close();
		return cnt;
	}

	public int gradeCon(Freereply_VO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int grade = 0;
		if(session.selectOne("gradeCon", vo)!=null) {
			grade = session.selectOne("gradeCon", vo);
		}
		session.close();
		return grade;
	}
	
	public int gradeSend() {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.update("gradeSend");
		session.close();
		return cnt;
	}
	
	public int takeProduct(Freereply_VO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt =session.update("takeProduct", vo);
		session.close();
		return cnt;
	}




}

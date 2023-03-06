package DSO.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import DSO.db.SqlSessionManager;

public class Like_DAO {
	
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public ArrayList<Like_VO> selectLike(String value){
		SqlSession session = sqlSessionFactory.openSession(true);
		List<Like_VO> list = session.selectList("selectLike", value);
		session.close();
		return (ArrayList<Like_VO>)list;
	}
	
	public int insertLike(Like_VO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("insertLike",vo);
		session.close(); 
		return cnt;
	}
	
	public int deleteLike(Like_VO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.delete("deleteLike",vo);
		session.close(); 
		return cnt;
	}
	
}

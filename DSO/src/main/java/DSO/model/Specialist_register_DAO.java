package DSO.model;

 // 전문가 등록 DAO
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import DSO.db.SqlSessionManager;
 
public class Specialist_register_DAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	public int specialistjoin(Specialist_register_VO vo) {	// 전문가 회원가입
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("specialistjoin",vo);
		session.close();
		return cnt;
	}

	public Specialist_register_VO specialistlogin(Specialist_register_VO vo) { // 전문가 로그인
		SqlSession session = sqlSessionFactory.openSession(true);
		Specialist_register_VO lvo = session.selectOne("specialistlogin",vo);
		session.close(); 	
		return lvo;
	}

	public int specialistupdate(Specialist_register_VO vo) { // 전문가 정보수정
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.update("specialistupdate",vo);
		session.close(); 	
		return cnt;
	}

	public int specialistdelete(String c_id) { // 전문가 회원탈퇴
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.delete("specialistdelete",c_id);
		session.close();
		return cnt;
	}


}

package DSO.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import DSO.db.SqlSessionManager;

 // 의뢰인 등록 DAO
public class Client_register_DAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	private SqlSession session;
	
	public int clientjoin(Client_register_VO vo) { // 의뢰인 회원가입 
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("clientjoin",vo);
		session.close(); 
		return cnt;
	}
	
	public Client_register_VO clientlogin(Client_register_VO vo) { // 의뢰인 로그인
		SqlSession session = sqlSessionFactory.openSession(true);
		Client_register_VO lvo = session.selectOne("clientlogin", vo);
		session.close(); 					
		return lvo;
	}
	
	public int clientupdate(Client_register_VO vo) { // 의뢰인 정보수정
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.update("clientupdate", vo);
		session.close(); 					
		return cnt;
	}
	
	public int clientdelete(String c_id) { // 의뢰인 회원탈퇴
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.delete("clientdelete",c_id);
		session.close();
		return cnt;
	}

	public int c_selectid (String c_id) { // 의뢰인 아이디 중복 확인 SqlSession session =
		SqlSession session = sqlSessionFactory.openSession(true); 
		int cnt =session.selectOne("c_selectCsIdConfirm", c_id);
		session.close();
		return cnt;
	 }
	 
	public Client_register_VO clientForget(Client_register_VO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		Client_register_VO lvo = session.selectOne("clientForget", vo);
		session.close(); 					
		return lvo;
	}
}

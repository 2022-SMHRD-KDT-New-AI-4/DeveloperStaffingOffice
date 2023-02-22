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
		// 하나의 값만 확인하고 반환
		// -> DB 값을 확인했을 때 같은 값이 여러개이면 오류발생!!!
		Specialist_register_VO lvo = session.selectOne("login", vo);
		session.close(); 	// sql 호출 마무리 되면 세션도 마무리
							// 자원이 계속해서 사용되기 때문에 꼭 close 해줘야함
		return lvo;
	}

	



}
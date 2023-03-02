package DSO.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import DSO.db.SqlSessionManager;

public class Service_info_pr_DAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	public ArrayList<Service_info_pr_VO> selectCateUX(){
		SqlSession session = sqlSessionFactory.openSession(true);
		List<Service_info_pr_VO> list = session.selectList("selectCateUX");
		session.close();
		return (ArrayList<Service_info_pr_VO>)list;
	}
}

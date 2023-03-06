package DSO.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import DSO.db.SqlSessionManager;

public class Service_info_pr_DAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	// 큰 카테고리 게시물 목록 불러오기
	public ArrayList<Service_info_pr_VO> selectCateMenu(String menu){
		SqlSession session = sqlSessionFactory.openSession(true);
		List<Service_info_pr_VO> list = session.selectList("selectCateMenu",menu);
		session.close();
		return (ArrayList<Service_info_pr_VO>)list;
	}
	
	// 작은 카테고리 게시물 목록 불러오기
	public ArrayList<Service_info_pr_VO> selectCateSmenu(String smenu){
		SqlSession session = sqlSessionFactory.openSession(true);
		List<Service_info_pr_VO> list = session.selectList("selectCateSmenu", smenu);
		session.close();
		return (ArrayList<Service_info_pr_VO>)list;
	}
	
	// 게시물 한개 불러오기
	public Service_info_pr_VO selectPost(int seq){
		SqlSession session = sqlSessionFactory.openSession(true);
		Service_info_pr_VO post = session.selectOne("selectPost",seq);
		session.close();
		return post;
	}
	
	public ArrayList<Service_info_pr_VO> selectSearch(String value){
		SqlSession session = sqlSessionFactory.openSession(true);
		List<Service_info_pr_VO> list = session.selectList("selectSearch", value);
		session.close();
		return (ArrayList<Service_info_pr_VO>)list;
	}
	
	public int insertChatPost(ChatClient vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("insertChatPost",vo);
		session.close();
		return cnt;
	}
	
	public ArrayList<ChatClient> buyListLoad(String value){
		SqlSession session = sqlSessionFactory.openSession(true);
		List<ChatClient> list = session.selectList("buyListLoad", value);
		session.close();
		return (ArrayList<ChatClient>)list;
	}
	
}

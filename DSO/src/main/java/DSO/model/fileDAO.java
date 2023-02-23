package DSO.model;

import java.util.ArrayList;
import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import DSO.db.SqlSessionManager;
import DSO.model.Portfolio_VO;

public class fileDAO {
    
	private SqlSessionFactory sqlSessionFactory = DSO.db.SqlSessionManager.getSqlSession();
	
    public ArrayList<Portfolio_VO> selectAllPortfolios() {
    	
    	SqlSession session = sqlSessionFactory.openSession(true);
    	List<Portfolio_VO> list = session.selectList("selectAllportfolios");
    	session.close();
    	return (ArrayList<Portfolio_VO>)list;
    	
    }

    public int insertPortfolio(Portfolio_VO portfolio) {
        SqlSession session = sqlSessionFactory.openSession(true);
        int cnt = session.insert("PortfolioInsert", portfolio);
        session.close();
        return cnt;
    }

//    public int updatePortfolio(Portfolio_VO portfolio) {
//        int result = 0;
//       
//        return result;
//    }

    public int deletePortfolio(int pf_seq) {
    	SqlSession session = sqlSessionFactory.openSession(true);
        int cnt = session.delete("PortfolioDelete", pf_seq);
    	session.close();
    	return cnt;
    }
}
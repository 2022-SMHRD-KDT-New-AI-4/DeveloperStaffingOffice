package DSO.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import DSO.db.SqlSessionManager;


	public class Portfolio_DAO {
		
		private Connection connection;
		private String pf_url;

		public Portfolio_DAO(Connection connection) {
			this.connection = connection;
		}
		
		public List<Portfolio_VO> getAllPortfolios() throws SQLException {
			List<Portfolio_VO> portfolios = new ArrayList<>();
			
			try (PreparedStatement statement = connection.prepareStatement("SELECT * FROM tbl_portfolio")) {
				ResultSet result = statement.executeQuery();
				
				while (result.next()) {

					String sId = result.getString("s_id");
					String pfUrl = result.getString("pf_url");
					String pfImg1 = result.getString("pf_img1");
					String pfImg2 = result.getString("pf_img2");
					String pfImg3 = result.getString("pf_img3");

					Portfolio_VO portfolio = new Portfolio_VO(sId, pfUrl, pfImg1, pfImg2, pfImg3);
					
					portfolios.add(portfolio);
				}
			}
			
			return portfolios;
		}
		
		public void addPortfolio(Portfolio_VO portfolio) throws SQLException {
			try (PreparedStatement statement = connection.prepareStatement("INSERT INTO tbl_portfolio (s_id, pf_url, pf_img1, pf_img2, pf_img3, pf_dt) VALUES (?, ?, ?, ?, ?, sysdate)")) {
				statement.setString(1, portfolio.getSId());
				statement.setString(2, portfolio.getPfUrl());
				statement.setString(3, portfolio.getPfImg1());
				statement.setString(4, portfolio.getPfImg2());
				statement.setString(5, portfolio.getPfImg3());

				statement.executeUpdate();
			}
		}
		

		public void deletePortfolio(String pf_url) throws SQLException {
			try (PreparedStatement statement = connection.prepareStatement("DELETE FROM tbl_portfolio WHERE pf_url= ?")) {
				statement.setString(1, pf_url);
				statement.executeUpdate();
			}
		}
	}
package DSO.model;

import java.util.ArrayList;

public class Portfolio_VO {

	private String s_Id;
//	private String pf_Url;
	private String pf_Img1;
	
	@Override
	public String toString() {
		return "Portfolio_VO [s_Id=" + s_Id + ", pf_Img1=" + pf_Img1 + "]";
	}
	public Portfolio_VO(String s_Id, String pf_Img1) {
	this.s_Id = s_Id;
	this.pf_Img1 = pf_Img1;
}
	public Portfolio_VO() {
		
	}
	public String getS_Id() {
		return s_Id;
	}
	public void setS_Id(String s_Id) {
		this.s_Id = s_Id;
	}
	public String getPf_Img1() {
		return pf_Img1;
	}
	public void setPf_Img1(String pf_Img1) {
		this.pf_Img1 = pf_Img1;
	}
	
	
	
	
	
}
package DSO.model;

import java.util.ArrayList;

public class Portfolio_VO {

	private int pf_Seq;
	private String s_Id;
	private String pf_Img1;
	private String pf_Dt;
	public int getPf_Seq() {
		return pf_Seq;
	}
	public void setPf_Seq(int pf_Seq) {
		this.pf_Seq = pf_Seq;
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
	public String getPf_Dt() {
		return pf_Dt;
	}
	public void setPf_Dt(String pf_Dt) {
		this.pf_Dt = pf_Dt;
	}
	@Override
	public String toString() {
		return "Portfolio_VO [pf_Seq=" + pf_Seq + ", s_Id=" + s_Id + ", pf_Img1=" + pf_Img1 + ", pf_Dt=" + pf_Dt + "]";
	}
	public Portfolio_VO() {
		super();
	}
	public Portfolio_VO(int pf_Seq, String s_Id, String pf_Img1, String pf_Dt) {
		super();
		this.pf_Seq = pf_Seq;
		this.s_Id = s_Id;
		this.pf_Img1 = pf_Img1;
		this.pf_Dt = pf_Dt;
	}
	
	
	
	
	
}
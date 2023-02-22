package DSO.model;

public class Portfolio_VO {
//	private int pf_seq;
	private String s_id;
	private String pf_url;
	private String pf_img1;
	private String pf_img2;
	private String pf_img3;
//	private String pf_dt;
	
	public Portfolio_VO() {
		
	}
	
	public Portfolio_VO(String s_id, String pf_url, String pf_img1, String pf_img2, String pf_img3) {
		this.s_id = s_id;
		this.pf_url = pf_url;
		this.pf_img1 = pf_img1;
		this.pf_img2 = pf_img2;
		this.pf_img3 = pf_img3;
	}

	@Override
	public String toString() {
		return "Portfolio_VO [s_id=" + s_id + ", pf_url=" + pf_url + ", pf_img1=" + pf_img1 + ", pf_img2=" + pf_img2
				+ ", pf_img3=" + pf_img3 + "]";
	}

	public String getS_id() {
		return s_id;
	}

	public void setS_id(String s_id) {
		this.s_id = s_id;
	}

	public String getPf_url() {
		return pf_url;
	}

	public void setPf_url(String pf_url) {
		this.pf_url = pf_url;
	}

	public String getPf_img1() {
		return pf_img1;
	}

	public void setPf_img1(String pf_img1) {
		this.pf_img1 = pf_img1;
	}

	public String getPf_img2() {
		return pf_img2;
	}

	public void setPf_img2(String pf_img2) {
		this.pf_img2 = pf_img2;
	}

	public String getPf_img3() {
		return pf_img3;
	}

	public void setPf_img3(String pf_img3) {
		this.pf_img3 = pf_img3;
	}
	
	
	
}

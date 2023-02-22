package DSO.model;

import java.util.ArrayList;

public class Portfolio_VO {
	
	private String sId;
	private String pfUrl;
	private String pfImg1;
	private String pfImg2;
	private String pfImg3;


	public Portfolio_VO(String sId, String pfUrl, String pfImg1, String pfImg2, String pfImg3) {

		this.sId = sId;
		this.pfUrl = pfUrl;
		this.pfImg1 = pfImg1;
		this.pfImg2 = pfImg2;
		this.pfImg3 = pfImg3;

	}
	
	public Portfolio_VO() {
		
	}
	

	public String getSId() {
		return sId;
	}

	public void setSId(String sId) {
		this.sId = sId;
	}

	public String getPfUrl() {
		return pfUrl;
	}

	public void setPfUrl(String pfUrl) {
		this.pfUrl = pfUrl;
	}

	public String getPfImg1() {
		return pfImg1;
	}

	public void setPfImg1(String pfImg1) {
		this.pfImg1 = pfImg1;
	}

	public String getPfImg2() {
		return pfImg2;
	}

	public void setPfImg2(String pfImg2) {
		this.pfImg2 = pfImg2;
	}

	public String getPfImg3() {
		return pfImg3;
	}

	public void setPfImg3(String pfImg3) {
		this.pfImg3 = pfImg3;
	}

}
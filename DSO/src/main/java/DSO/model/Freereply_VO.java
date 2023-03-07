package DSO.model;

public class Freereply_VO {
	private String loginC;
	private String review;
	private int rate;
	private int service_seq;
	private String regdate;
	
	public Freereply_VO() {
		
	}

	
	
	
	
	public Freereply_VO(String loginC, String review, int rate, int service_seq, String regdate) {
		super();
		this.loginC = loginC;
		this.review = review;
		this.rate = rate;
		this.service_seq = service_seq;
		this.regdate = regdate;
	}





	public String getRegdate() {
		return regdate;
	}





	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}





	public Freereply_VO(String loginC, int service_seq) {
		super();
		this.loginC = loginC;
		this.service_seq = service_seq;
	}


	public Freereply_VO(String loginC, String review, int service_seq) {
		super();
		this.loginC = loginC;
		this.review = review;
		this.service_seq = service_seq;
	}





	public Freereply_VO(String loginC, String review) {
		super();
		this.loginC = loginC;
		this.review = review;
	}





	public Freereply_VO(String loginC, String review, int rate, int service_seq) {
		super();
		this.loginC = loginC;
		this.review = review;
		this.rate = rate;
		this.service_seq = service_seq;
	}





	public String getLoginC() {
		return loginC;
	}

	public void setLoginC(String loginC) {
		this.loginC = loginC;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}

	public int getRate() {
		return rate;
	}

	public void setRate(int rate) {
		this.rate = rate;
	}

	public int getService_seq() {
		return service_seq;
	}

	public void setService_seq(int service_seq) {
		this.service_seq = service_seq;
	}

	@Override
	public String toString() {
		return "Freereply_VO [loginC=" + loginC + ", review=" + review + ", rate=" + rate + ", service_seq="
				+ service_seq + "]";
	}
	
	

	
	
	
}

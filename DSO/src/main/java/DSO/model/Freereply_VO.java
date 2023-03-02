package DSO.model;

public class Freereply_VO {
	private String loginM;
	private String review;
	private int rate;
	
	public Freereply_VO() {
		
	}
	

	public Freereply_VO(String loginM, String review, int rate) {
		super();
		this.loginM = loginM;
		this.review = review;
		this.rate = rate;
	}


	public String getloginM() {
		return loginM;
	}

	public void setUserId(String loginM) {
		this.loginM = loginM;
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

	@Override
	public String toString() {
		return "Freereply_VO [loginM=" + loginM + ", review=" + review + ", rate=" + rate + "]";
	}
	
	
	
	
}

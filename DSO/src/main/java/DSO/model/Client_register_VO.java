package DSO.model;

// 의뢰인 회원가입 및 로그인 VO

public class Client_register_VO {
	private String c_id;
	private String c_pw;
	private String c_name;
	private String c_job;
	private String c_business;
	private String c_interest;
	private String c_joindate;
	
	public Client_register_VO() {
		
	}

	public Client_register_VO(String c_id, String c_pw, String c_name, String c_job, String c_business,
			String c_interest) {
		this.c_id = c_id;
		this.c_pw = c_pw;
		this.c_name = c_name;
		this.c_job = c_job;
		this.c_business = c_business;
		this.c_interest = c_interest;
	}

	

	public Client_register_VO(String c_id, String c_pw) {
		this.c_id = c_id;
		this.c_pw = c_pw;
	}

	@Override
	public String toString() {
		return "Client_register_VO [c_id=" + c_id + ", c_pw=" + c_pw + ", c_name=" + c_name + ", c_job=" + c_job
				+ ", c_business=" + c_business + ", c_interest=" + c_interest +  "]";
	}

	public String getC_id() {
		return c_id;
	}

	public void setC_id(String c_id) {
		this.c_id = c_id;
	}

	public String getC_pw() {
		return c_pw;
	}

	public void setC_pw(String c_pw) {
		this.c_pw = c_pw;
	}

	public String getC_name() {
		return c_name;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	public String getC_job() {
		return c_job;
	}

	public void setC_job(String c_job) {
		this.c_job = c_job;
	}

	public String getC_business() {
		return c_business;
	}

	public void setC_business(String c_business) {
		this.c_business = c_business;
	}

	public String getC_interest() {
		return c_interest;
	}

	public void setC_interest(String c_interest) {
		this.c_interest = c_interest;
	}

	public String getC_joindate() {
		return c_joindate;
	}

	
}

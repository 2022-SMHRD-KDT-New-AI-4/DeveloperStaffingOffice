package DSO.model;

// 전문가 등록 VO

public class Specialist_register_VO {
	private String s_id;
	private String s_pw;
	private String s_name;
	private String s_job;
	private String s_business;
	private String s_interest;
	private String s_joindate;
	
	public Specialist_register_VO() {
		
	}
	
	public Specialist_register_VO(String s_id, String s_pw, String s_name, String s_job, String s_business,
			String s_interest) {
		this.s_id = s_id;
		this.s_pw = s_pw;
		this.s_name = s_name;
		this.s_job = s_job;
		this.s_business = s_business;
		this.s_interest = s_interest;
	}

	

	
	public Specialist_register_VO(String s_id, String s_pw) {
		super();
		this.s_id = s_id;
		this.s_pw = s_pw;
	}



	@Override
	public String toString() {
		return "specialist_register_VO [s_id=" + s_id + ", s_pw=" + s_pw + ", s_name=" + s_name + ", s_job=" + s_job
				+ ", s_business=" + s_business + ", s_interest=" + s_interest + "]";
	}



	public String getS_id() {
		return s_id;
	}

	public void setS_id(String s_id) {
		this.s_id = s_id;
	}

	public String getS_pw() {
		return s_pw;
	}

	public void setS_pw(String s_pw) {
		this.s_pw = s_pw;
	}

	public String getS_name() {
		return s_name;
	}

	public void setS_name(String s_name) {
		this.s_name = s_name;
	}

	public String getS_job() {
		return s_job;
	}

	public void setS_job(String s_job) {
		this.s_job = s_job;
	}

	public String getS_business() {
		return s_business;
	}

	public void setS_business(String s_business) {
		this.s_business = s_business;
	}

	public String getS_interest() {
		return s_interest;
	}

	public void setS_interest(String s_interest) {
		this.s_interest = s_interest;
	}

	public String getS_joindate() {
		return s_joindate;
	}

	
	
	
}

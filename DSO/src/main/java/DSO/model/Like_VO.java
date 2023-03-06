package DSO.model;

public class Like_VO {
	
	// 찜
	
	private String c_id;
	private	int service_seq;
	private String service_title;
	private String service_categorynum1;
	private String service_categorynum2;
	private int service_price;
	private String service_desc;
	private String service_requisite;
	private String service_img;
	private String s_id;
	private String service_dt;
	
	public Like_VO() {
		super();
	}

	public Like_VO(String c_id, int service_seq, String service_title, String service_categorynum1,
			String service_categorynum2, int service_price, String service_desc, String service_requisite,
			String service_img, String s_id, String service_dt) {
		super();
		this.c_id = c_id;
		this.service_seq = service_seq;
		this.service_title = service_title;
		this.service_categorynum1 = service_categorynum1;
		this.service_categorynum2 = service_categorynum2;
		this.service_price = service_price;
		this.service_desc = service_desc;
		this.service_requisite = service_requisite;
		this.service_img = service_img;
		this.s_id = s_id;
		this.service_dt = service_dt;
	}
	
	

	public Like_VO(String c_id, int service_seq) {
		super();
		this.c_id = c_id;
		this.service_seq = service_seq;
	}

	@Override
	public String toString() {
		return "Like_VO [c_id=" + c_id + ", service_seq=" + service_seq + ", service_title=" + service_title
				+ ", service_categorynum1=" + service_categorynum1 + ", service_categorynum2=" + service_categorynum2
				+ ", service_price=" + service_price + ", service_desc=" + service_desc + ", service_requisite="
				+ service_requisite + ", service_img=" + service_img + ", s_id=" + s_id + ", service_dt=" + service_dt
				+ "]";
	}

	public String getC_id() {
		return c_id;
	}

	public void setC_id(String c_id) {
		this.c_id = c_id;
	}

	public int getService_seq() {
		return service_seq;
	}

	public void setService_seq(int service_seq) {
		this.service_seq = service_seq;
	}

	public String getService_title() {
		return service_title;
	}

	public void setService_title(String service_title) {
		this.service_title = service_title;
	}

	public String getService_categorynum1() {
		return service_categorynum1;
	}

	public void setService_categorynum1(String service_categorynum1) {
		this.service_categorynum1 = service_categorynum1;
	}

	public String getService_categorynum2() {
		return service_categorynum2;
	}

	public void setService_categorynum2(String service_categorynum2) {
		this.service_categorynum2 = service_categorynum2;
	}

	public int getService_price() {
		return service_price;
	}

	public void setService_price(int service_price) {
		this.service_price = service_price;
	}

	public String getService_desc() {
		return service_desc;
	}

	public void setService_desc(String service_desc) {
		this.service_desc = service_desc;
	}

	public String getService_requisite() {
		return service_requisite;
	}

	public void setService_requisite(String service_requisite) {
		this.service_requisite = service_requisite;
	}

	public String getService_img() {
		return service_img;
	}

	public void setService_img(String service_img) {
		this.service_img = service_img;
	}

	public String getS_id() {
		return s_id;
	}

	public void setS_id(String s_id) {
		this.s_id = s_id;
	}

	public String getService_dt() {
		return service_dt;
	}

	public void setService_dt(String service_dt) {
		this.service_dt = service_dt;
	}

	
}

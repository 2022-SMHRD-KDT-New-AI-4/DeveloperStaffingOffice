package DSO.model;

public class Service_info_pr_VO {
	// 민우
	
	private String service_title;
	private String service_categorynum1;
	private String service_categorynum2;
	private int service_price;
	private String service_desc;
	private String service_requisite;
	private String service_img;
	
	public Service_info_pr_VO() {
		super();
	}

	public Service_info_pr_VO(String service_title, String service_categorynum1, String service_categorynum2,
			int service_price, String service_desc, String service_requisite, String service_img) {
		super();
		this.service_title = service_title;
		this.service_categorynum1 = service_categorynum1;
		this.service_categorynum2 = service_categorynum2;
		this.service_price = service_price;
		this.service_desc = service_desc;
		this.service_requisite = service_requisite;
		this.service_img = service_img;
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

	@Override
	public String toString() {
		return "Service_info_pr_VO [service_title=" + service_title + ", service_categorynum1=" + service_categorynum1
				+ ", service_categorynum2=" + service_categorynum2 + ", service_price=" + service_price
				+ ", service_desc=" + service_desc + ", service_requisite=" + service_requisite + ", service_img="
				+ service_img + "]";
	}
	
	
}

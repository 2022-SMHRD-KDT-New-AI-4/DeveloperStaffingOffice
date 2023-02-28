package DSO.model;

import java.util.ArrayList;

// 상품 게시물 등록 VO
public class Service_register_VO {
//	private int service_seq;
	private String service_title;
	private String service_category;
	private int service_price;
	private String service_desc;
	private String service_requisite;
	private String service_img;
//	private String s_id;
//	private String service_dt;
	
	
	public Service_register_VO() {
		
	}
	
	public Service_register_VO(String service_title, String service_category, int service_price, String service_desc,
			String service_requisite, String service_img, String s_id) {
//		this.service_seq = service_seq;
		this.service_title = service_title;
		this.service_category = service_category;
		this.service_price = service_price;
		this.service_desc = service_desc;
		this.service_requisite = service_requisite;
		this.service_img = service_img;
//		this.s_id = s_id;
//		this.service_dt = service_dt;
	}
	
	


	public Service_register_VO(String service_title, String service_category, int service_price, String service_desc,
			String service_requisite, String service_img) {
		super();
		this.service_title = service_title;
		this.service_category = service_category;
		this.service_price = service_price;
		this.service_desc = service_desc;
		this.service_requisite = service_requisite;
		this.service_img = service_img;
	}

	@Override
	public String toString() {
		return "Service_register_VO [service_title=" + service_title + ", service_category=" + service_category
				+ ", service_price=" + service_price + ", service_desc=" + service_desc + ", service_requisite="
				+ service_requisite + ", service_img=" + service_img + "]";
	}
//	public int getService_seq() {
//		return service_seq;
//	}
//	public void setService_seq(int service_seq) {
//		this.service_seq = service_seq;
//	}
	public String getService_title() {
		return service_title;
	}
	public void setService_title(String service_title) {
		this.service_title = service_title;
	}
	public String getService_category() {
		return service_category;
	}
	public void setService_category(String service_category) {
		this.service_category = service_category;
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
//	public String getS_id() {
//		return s_id;
//	}
//	public void setS_id(String s_id) {
//		this.s_id = s_id;
//	}
//	public String getService_dt() {
//		return service_dt;
//	}
//	public void setService_dt(String service_dt) {
//		
//	}
}


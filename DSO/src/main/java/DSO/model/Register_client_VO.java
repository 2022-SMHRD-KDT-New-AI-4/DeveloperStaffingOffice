package DSO.model;

//의뢰인 주문 VO
public class Register_client_VO {
//	private int register_seq;
//	private int service_eq;
	private String c_id;
	private int register_cnt;
//	private String register_dt;
	
	
	public Register_client_VO() {
		
	}

	public Register_client_VO(String c_id, int register_cnt) {
		this.c_id = c_id;
		this.register_cnt = register_cnt;
	}

	@Override
	public String toString() {
		return "Register_client_VO [c_id=" + c_id + ", register_cnt=" + register_cnt + "]";
	}

	public String getC_id() {
		return c_id;
	}

	public void setC_id(String c_id) {
		this.c_id = c_id;
	}

	public int getRegister_cnt() {
		return register_cnt;
	}

	public void setRegister_cnt(int register_cnt) {
		this.register_cnt = register_cnt;
	}
	
	
	
	
	
	
}

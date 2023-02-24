package DSO.model;

//전문가 주문 VO
public class Register_specialist_VO {
//	private int register_seq;
//	private int service_eq;
	private String s_id;
	private int register_cnt;
//	private String register_dt;
	
	
	public Register_specialist_VO() {
		
	}

	public Register_specialist_VO(String s_id,int register_cnt) {
		this.s_id = s_id;
		this.register_cnt = register_cnt;
	}

	@Override
	public String toString() {
		return "Register_specialist_VO [s_id=" + s_id + ", register_cnt=" + register_cnt + "]";
	}

	public String getS_id() {
		return s_id;
	}

	public void setS_id(String s_id) {
		this.s_id = s_id;
	}
	
	public int getRegister_cnt() {
		return register_cnt;
	}
	
	public void setRegister_cnt(int register_cnt) {
		this.register_cnt = register_cnt;
	}
}

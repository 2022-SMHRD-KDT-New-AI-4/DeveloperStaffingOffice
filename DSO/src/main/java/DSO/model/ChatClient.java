package DSO.model;

public class ChatClient {
	
	private	int service_seq;
	private String service_title;
	private String c_id;
	private String s_id;
	private int grade;
	private String dt;
	private String name;
	
	public ChatClient() {
		super();
	}
	@Override
	public String toString() {
		return "ChatClient [service_seq=" + service_seq + ", service_title=" + service_title + ", c_id=" + c_id
				+ ", s_id=" + s_id + ", grade=" + grade + ", dt=" + dt + "]";
	}
	
	public ChatClient(String name) {
		super();
		this.name = name;
	}
	public ChatClient(int service_seq, String service_title, String c_id, String s_id) {
		super();
		this.service_seq = service_seq;
		this.service_title = service_title;
		this.c_id = c_id;
		this.s_id = s_id;
	}
	public ChatClient(int service_seq, String service_title, String c_id, String s_id, int grade, String dt) {
		super();
		this.service_seq = service_seq;
		this.service_title = service_title;
		this.c_id = c_id;
		this.s_id = s_id;
		this.grade = grade;
		this.dt = dt;
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
	public String getC_id() {
		return c_id;
	}
	public void setC_id(String c_id) {
		this.c_id = c_id;
	}
	public String getS_id() {
		return s_id;
	}
	public void setS_id(String s_id) {
		this.s_id = s_id;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public String getDt() {
		return dt;
	}
	public void setDt(String dt) {
		this.dt = dt;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}

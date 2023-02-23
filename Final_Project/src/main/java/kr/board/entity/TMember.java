package kr.board.entity;

public class TMember {

	private String mem_id;
	private String mem_pw;
	private String mem_email;
	private String mem_gender;
	private int mem_footsize;
	private String mem_tst;
	private String mem_type;
	private String mem_nick;
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_pw() {
		return mem_pw;
	}
	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}
	public String getMem_email() {
		return mem_email;
	}
	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}
	public String getMem_gender() {
		return mem_gender;
	}
	public void setMem_gender(String mem_gender) {
		this.mem_gender = mem_gender;
	}
	public int getMem_footsize() {
		return mem_footsize;
	}
	public void setMem_footsize(int mem_footsize) {
		this.mem_footsize = mem_footsize;
	}
	public String getMem_tst() {
		return mem_tst;
	}
	public void setMem_tst(String mem_tst) {
		this.mem_tst = mem_tst;
	}
	public String getMem_type() {
		return mem_type;
	}
	public void setMem_type(String mem_type) {
		this.mem_type = mem_type;
	}
	public String getMem_nick() {
		return mem_nick;
	}
	public void setMem_nick(String mem_nick) {
		this.mem_nick = mem_nick;
	}
	@Override
	public String toString() {
		return "TMember [mem_id=" + mem_id + ", mem_pw=" + mem_pw + ", mem_email=" + mem_email + ", mem_gender="
				+ mem_gender + ", mem_type=" + mem_type + ", mem_nick=" + mem_nick + "]";
	}
}

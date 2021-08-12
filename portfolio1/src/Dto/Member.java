package Dto;

public class Member {
	
	private int mno;
	private String id;
	private String password;
	private String name;
	private String email;
	private String phone;
	private int checkbox;
	private String image;
	
	public Member() {}

	public Member(int mno, String id, String password, String name, String email, String phone, int checkbox) {
		this.mno = mno;
		this.id = id;
		this.password = password;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.checkbox = checkbox;
	}
	public Member(String id, String password, String name, String email, String phone, int checkbox) {
		this.id = id;
		this.password = password;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.checkbox = checkbox;
	}

	public Member(int mno, String id, String password, String name, String email, String phone, int checkbox, String image) {
		this.mno = mno;
		this.id = id;
		this.password = password;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.checkbox = checkbox;
		this.image = image;
	}

	public int getMno() {
		return mno;
	}

	public void setMno(int mno) {
		this.mno = mno;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getCheckbox() {
		return checkbox;
	}

	public void setCheckbox(int checkbox) {
		this.checkbox = checkbox;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
	
}

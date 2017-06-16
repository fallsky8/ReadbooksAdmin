package com.readbooks.adminvo;

public class AdminVO {
	private String admin_id;// 아이디 VARCHAR2(20 BYTE)
	private String admin_pw;// 비밀번호 VARCHAR2(20 BYTE)

	public AdminVO() {
		super();
	}

	public String getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}

	public String getAdmin_pw() {
		return admin_pw;
	}

	public void setAdmin_pw(String admin_pw) {
		this.admin_pw = admin_pw;
	}

}

package com.readbooks.uservo;

public class UserVO {
	private String user_id;
	private String user_pw;
	private String user_address;
	private String user_name;
	private String user_email;
	private String user_phonenumber;
	private String user_pwquestion;
	private String user_pwanswer;
	private String user_registerdate;
	private int user_point;
	private String user_serviceagreement;
	private String user_collectiveagreement;
	private String user_refferralagreement;
	private String user_outreason;
	private String user_outdate;

	public UserVO() {
		super();
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public String getUser_address() {
		return user_address;
	}

	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_phonenumber() {
		return user_phonenumber;
	}

	public void setUser_phonenumber(String user_phonenumber) {
		this.user_phonenumber = user_phonenumber;
	}

	public String getUser_pwquestion() {
		return user_pwquestion;
	}

	public void setUser_pwquestion(String user_pwquestion) {
		this.user_pwquestion = user_pwquestion;
	}

	public String getUser_pwanswer() {
		return user_pwanswer;
	}

	public void setUser_pwanswer(String user_pwanswer) {
		this.user_pwanswer = user_pwanswer;
	}

	public String getUser_registerdate() {
		return user_registerdate;
	}

	public void setUser_registerdate(String user_registerdate) {
		this.user_registerdate = user_registerdate.substring(0,10);
	}

	public int getUser_point() {
		return user_point;
	}

	public void setUser_point(int user_point) {
		this.user_point = user_point;
	}

	public String getUser_serviceagreement() {
		return user_serviceagreement;
	}

	public void setUser_serviceagreement(String user_serviceagreement) {
		this.user_serviceagreement = user_serviceagreement;
	}

	public String getUser_collectiveagreement() {
		return user_collectiveagreement;
	}

	public void setUser_collectiveagreement(String user_collectiveagreement) {
		this.user_collectiveagreement = user_collectiveagreement;
	}

	public String getUser_refferralagreement() {
		return user_refferralagreement;
	}

	public void setUser_refferralagreement(String user_refferralagreement) {
		this.user_refferralagreement = user_refferralagreement;
	}

	public String getUser_outreason() {
		return user_outreason;
	}

	public void setUser_outreason(String user_outreason) {
		this.user_outreason = user_outreason;
	}

	public String getUser_outdate() {
		return user_outdate;
	}

	public void setUser_outdate(String user_outdate) {
		this.user_outdate = user_outdate.substring(0,10);
	}
	

}

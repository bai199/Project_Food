package cn.etc.Model;

import java.util.Date;

public class UserNames {
	private Integer user_id;
	private String user_name;
	private String user_pass;
	private String user_email;
	private String user_tel;
	private String user_sex;
	private Integer user_age;
	private String user_birthday;
	private String user_path;
	private String user_createDate;
	private String user_location;
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_pass() {
		return user_pass;
	}
	public void setUser_pass(String user_pass) {
		this.user_pass = user_pass;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_tel() {
		return user_tel;
	}
	public void setUser_tel(String user_tel) {
		this.user_tel = user_tel;
	}
	public String getUser_sex() {
		return user_sex;
	}
	public void setUser_sex(String user_sex) {
		this.user_sex = user_sex;
	}
	public Integer getUser_age() {
		return user_age;
	}
	public void setUser_age(Integer user_age) {
		this.user_age = user_age;
	}
	public String getUser_birthday() {
		return user_birthday;
	}
	public void setUser_birthday(String user_birthday) {
		this.user_birthday = user_birthday;
	}
	public String getUser_path() {
		return user_path;
	}
	public void setUser_path(String user_path) {
		this.user_path = user_path;
	}
	public String getUser_createDate() {
		return user_createDate;
	}
	public void setUser_createDate(String user_createDate) {
		this.user_createDate = user_createDate;
	}
	public String getUser_location() {
		return user_location;
	}
	public void setUser_location(String user_location) {
		this.user_location = user_location;
	}
	@Override
	public String toString() {
		return "UserNames [user_id=" + user_id + ", user_name=" + user_name
				+ ", user_pass=" + user_pass + ", user_email=" + user_email
				+ ", user_tel=" + user_tel + ", user_sex=" + user_sex
				+ ", user_age=" + user_age + ", user_birthday=" + user_birthday
				+ ", user_path=" + user_path + ", user_createDate="
				+ user_createDate + ", user_location=" + user_location + "]";
	}
	public UserNames(Integer user_id, String user_name, String user_pass,
			String user_email, String user_tel, String user_sex,
			Integer user_age, String user_birthday, String user_path,
			String user_createDate, String user_location) {
		super();
		this.user_id = user_id;
		this.user_name = user_name;
		this.user_pass = user_pass;
		this.user_email = user_email;
		this.user_tel = user_tel;
		this.user_sex = user_sex;
		this.user_age = user_age;
		this.user_birthday = user_birthday;
		this.user_path = user_path;
		this.user_createDate = user_createDate;
		this.user_location = user_location;
	}
	public UserNames() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}

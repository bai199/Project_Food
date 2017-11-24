package cn.etc.Model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Reply {
	private Integer reply_id;
	private Integer user_id;//发帖用户；
	private Integer users_id;//评论用户；
	private String reply_body;
	private Date reply_time;
	private Integer note_id;
	private Integer total;
	public Integer getTotal() {
		return total;
	}
	public void setTotal(Integer total) {
		this.total = total;
	}
	public Integer getNote_id() {
		return note_id;
	}
	public void setNote_id(Integer note_id) {
		this.note_id = note_id;
	}
	private String reply_time1;//目的是把日期类型转换为yyyy-MM-dd HH:mm:ss
	public String getReply_time1() {
		return reply_time1;
	}
	public void setReply_time1(String reply_time1) {
		this.reply_time1 = reply_time1;
	}
	public Reply() {
		super();
	}
	public Reply(Integer reply_id, Integer user_id, Integer users_id,
			String reply_body, Date reply_time) {
		super();
		this.reply_id = reply_id;
		this.user_id = user_id;
		this.users_id = users_id;
		this.reply_body = reply_body;
		this.reply_time = reply_time;
	}
	@Override
	public String toString() {
		return "Reply [reply_id=" + reply_id + ", user_id=" + user_id
				+ ", users_id=" + users_id + ", reply_body=" + reply_body
				+ ", reply_time=" + reply_time + ", note_id=" + note_id
				+ "]";
	}
	public Integer getReply_id() {
		return reply_id;
	}
	public void setReply_id(Integer reply_id) {
		this.reply_id = reply_id;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public Integer getUsers_id() {
		return users_id;
	}
	public void setUsers_id(Integer users_id) {
		this.users_id = users_id;
	}
	public String getReply_body() {
		return reply_body;
	}
	public void setReply_body(String reply_body) {
		this.reply_body = reply_body;
	}
	public Date getReply_time() {
		return reply_time;
	}
	public void setReply_time(Date reply_time) {
		SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
		this.setReply_time1(sf.format(reply_time));
		this.reply_time = reply_time;
	}
	
}

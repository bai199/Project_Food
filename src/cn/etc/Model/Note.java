package cn.etc.Model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Note {
	private Integer note_id;
	private Integer user_id;
	private String note_title;
	private String note_body;
	private Date note_time;
	private Integer talkClass_id;
	private Integer trNumber;
	private Integer total;
	public Integer getTotal() {
		return total;
	}
	public void setTotal(Integer total) {
		this.total = total;
	}
	private String note_time1;//目的是把日期类型转换为yyyy-MM-dd HH:mm:ss
	
	public String getNote_time1() {
		return note_time1;
	}
	public void setNote_time1(String note_time1) {
		this.note_time1 = note_time1;
	}
	public Note(Integer note_id, Integer user_id, String note_title,
			String note_body, Date note_time, Integer talkClass_id,
			Integer trNumber) {
		super();
		this.note_id = note_id;
		this.user_id = user_id;
		this.note_title = note_title;
		this.note_body = note_body;
		this.note_time = note_time;
		this.talkClass_id = talkClass_id;
		this.trNumber = trNumber;
	}
	public Integer getTrNumber() {
		
		return trNumber;
	}
	public void setTrNumber(Integer trNumber) {
		this.trNumber = trNumber;
	}
	public Note() {
		super();
	}

	@Override
	public String toString() {
		return "Note [note_id=" + note_id + ", user_id=" + user_id
				+ ", note_title=" + note_title + ", note_body=" + note_body
				+ ", note_time=" + note_time + ", talkClass_id=" + talkClass_id
				+ ", trNumber=" + trNumber + "]";
	}
	public Integer getNote_id() {
		return note_id;
	}
	public void setNote_id(Integer note_id) {
		this.note_id = note_id;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getNote_title() {
		return note_title;
	}
	public void setNote_title(String note_title) {
		this.note_title = note_title;
	}
	public String getNote_body() {
		return note_body;
	}
	public void setNote_body(String note_body) {
		this.note_body = note_body;
	}
	public Date getNote_time() {
		
		return note_time;
	}
	public void setNote_time(Date note_time) {
		SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
		this.setNote_time1(sf.format(note_time));
		this.note_time = note_time;
	}
	public Integer getTalkClass_id() {
		return talkClass_id;
	}
	public void setTalkClass_id(Integer talkClass_id) {
		this.talkClass_id = talkClass_id;
	}
}

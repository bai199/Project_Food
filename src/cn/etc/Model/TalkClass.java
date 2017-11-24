package cn.etc.Model;

public class TalkClass {
	private Integer talkClass_id;
	private String class_name;
	private Integer talkClass_discuss;
	public TalkClass() {
		super();
	}
	public TalkClass(Integer talkClass_id, String class_name,
			Integer talkClass_discuss) {
		super();
		this.talkClass_id = talkClass_id;
		this.class_name = class_name;
		this.talkClass_discuss = talkClass_discuss;
	}
	@Override
	public String toString() {
		return "TalkClass [talkClass_id=" + talkClass_id + ", class_name="
				+ class_name + ", talkClass_discuss=" + talkClass_discuss + "]";
	}
	public Integer getTalkClass_id() {
		return talkClass_id;
	}
	public void setTalkClass_id(Integer talkClass_id) {
		this.talkClass_id = talkClass_id;
	}
	public String getClass_name() {
		return class_name;
	}
	public void setClass_name(String class_name) {
		this.class_name = class_name;
	}
	public Integer getTalkClass_discuss() {
		return talkClass_discuss;
	}
	public void setTalkClass_discuss(Integer talkClass_discuss) {
		this.talkClass_discuss = talkClass_discuss;
	}
}

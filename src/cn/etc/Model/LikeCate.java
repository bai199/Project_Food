package cn.etc.Model;

public class LikeCate {
	private Integer like_id;
	private Integer user_id;
	private Integer cate_id;
	private String cate_class1;
	private String cate_make;
	private String cate_hot;
	private String cate_taste;
	private String cate_area;
	private String cate_makeclass;
	private String like_other;
	public Integer getLike_id() {
		return like_id;
	}
	public void setLike_id(Integer like_id) {
		this.like_id = like_id;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public Integer getCate_id() {
		return cate_id;
	}
	public void setCate_id(Integer cate_id) {
		this.cate_id = cate_id;
	}
	public String getCate_class1() {
		return cate_class1;
	}
	public void setCate_class1(String cate_class1) {
		this.cate_class1 = cate_class1;
	}
	public String getCate_make() {
		return cate_make;
	}
	public void setCate_make(String cate_make) {
		this.cate_make = cate_make;
	}
	public String getCate_hot() {
		return cate_hot;
	}
	public void setCate_hot(String cate_hot) {
		this.cate_hot = cate_hot;
	}
	public String getCate_taste() {
		return cate_taste;
	}
	public void setCate_taste(String cate_taste) {
		this.cate_taste = cate_taste;
	}
	public String getCate_area() {
		return cate_area;
	}
	public void setCate_area(String cate_area) {
		this.cate_area = cate_area;
	}
	public String getCate_makeclass() {
		return cate_makeclass;
	}
	public void setCate_makeclass(String cate_makeclass) {
		this.cate_makeclass = cate_makeclass;
	}
	public String getLike_other() {
		return like_other;
	}
	public void setLike_other(String like_other) {
		this.like_other = like_other;
	}
	@Override
	public String toString() {
		return "LikeCate [like_id=" + like_id + ", user_id=" + user_id
				+ ", cate_id=" + cate_id + ", cate_class1=" + cate_class1
				+ ", cate_make=" + cate_make + ", cate_hot=" + cate_hot
				+ ", cate_taste=" + cate_taste + ", cate_area=" + cate_area
				+ ", cate_makeclass=" + cate_makeclass + ", like_other="
				+ like_other + "]";
	}
	public LikeCate(Integer like_id, Integer user_id, Integer cate_id,
			String cate_class1, String cate_make, String cate_hot,
			String cate_taste, String cate_area, String cate_makeclass,
			String like_other) {
		super();
		this.like_id = like_id;
		this.user_id = user_id;
		this.cate_id = cate_id;
		this.cate_class1 = cate_class1;
		this.cate_make = cate_make;
		this.cate_hot = cate_hot;
		this.cate_taste = cate_taste;
		this.cate_area = cate_area;
		this.cate_makeclass = cate_makeclass;
		this.like_other = like_other;
	}
	public LikeCate() {
		super();
	}
	
	
}

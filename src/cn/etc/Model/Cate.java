package cn.etc.Model;

public class Cate {
	private Integer cate_id;
	private String cate_name;	//美食名称
	private String cate_class1; //美食主分类1
	private String cate_class2;	//美食主分类2
	private String cate_class3;	//美食主分类3
	private String cate_make;	//美食做法
	private String cate_hot;	//美食热食/凉食分类
	private String cate_taste;	//美食味道分类（酸甜苦辣）
	private String cate_area;	//美食地域分类（西北/川菜等）
	private String cate_makeClass;	//美食做法分类（煎炒烹炸）
	private String cate_other;	//美食其他分类
	private String cate_path;	//美食图片
	private String cate_burdening;	//美食用料
	private Integer total; //分页
	
	public Integer getTotal() {
		return total;
	}
	public void setTotal(Integer total) {
		this.total = total;
	}
	
	public Integer getCate_id() {
		return cate_id;
	}
	public void setCate_id(Integer cate_id) {
		this.cate_id = cate_id;
	}
	public String getCate_name() {
		return cate_name;
	}
	public void setCate_name(String cate_name) {
		this.cate_name = cate_name;
	}
	public String getCate_class1() {
		return cate_class1;
	}
	public void setCate_class1(String cate_class1) {
		this.cate_class1 = cate_class1;
	}
	public String getCate_class2() {
		return cate_class2;
	}
	public void setCate_class2(String cate_class2) {
		this.cate_class2 = cate_class2;
	}
	public String getCate_class3() {
		return cate_class3;
	}
	public void setCate_class3(String cate_class3) {
		this.cate_class3 = cate_class3;
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
	public String getCate_makeClass() {
		return cate_makeClass;
	}
	public void setCate_makeClass(String cate_makeClass) {
		this.cate_makeClass = cate_makeClass;
	}
	public String getCate_other() {
		return cate_other;
	}
	public void setCate_other(String cate_other) {
		this.cate_other = cate_other;
	}
	public String getCate_path() {
		return cate_path;
	}
	public void setCate_path(String cate_path) {
		this.cate_path = cate_path;
	}
	public String getCate_burdening() {
		return cate_burdening;
	}
	public void setCate_burdening(String cate_burdening) {
		this.cate_burdening = cate_burdening;
	}
	@Override
	public String toString() {
		return "Cate [cate_id=" + cate_id + ", cate_name=" + cate_name
				+ ", cate_class1=" + cate_class1 + ", cate_class2="
				+ cate_class2 + ", cate_class3=" + cate_class3 + ", cate_make="
				+ cate_make + ", cate_hot=" + cate_hot + ", cate_taste="
				+ cate_taste + ", cate_area=" + cate_area + ", cate_makeClass="
				+ cate_makeClass + ", cate_other=" + cate_other
				+ ", cate_path=" + cate_path + ", cate_burdening="
				+ cate_burdening + "]";
	}
	public Cate(Integer cate_id, String cate_name, String cate_class1,
			String cate_class2, String cate_class3, String cate_make,
			String cate_hot, String cate_taste, String cate_area,
			String cate_makeClass, String cate_other, String cate_path,
			String cate_burdening, Integer total) {
		super();
		this.cate_id = cate_id;
		this.cate_name = cate_name;
		this.cate_class1 = cate_class1;
		this.cate_class2 = cate_class2;
		this.cate_class3 = cate_class3;
		this.cate_make = cate_make;
		this.cate_hot = cate_hot;
		this.cate_taste = cate_taste;
		this.cate_area = cate_area;
		this.cate_makeClass = cate_makeClass;
		this.cate_other = cate_other;
		this.cate_path = cate_path;
		this.cate_burdening = cate_burdening;
		this.total = total;
	}
	public Cate(Integer cate_id, String cate_name, String cate_class1,
			String cate_class2, String cate_class3, String cate_make,
			String cate_hot, String cate_taste, String cate_area,
			String cate_makeClass, String cate_other, String cate_path,
			String cate_burdening) {
		super();
		this.cate_id = cate_id;
		this.cate_name = cate_name;
		this.cate_class1 = cate_class1;
		this.cate_class2 = cate_class2;
		this.cate_class3 = cate_class3;
		this.cate_make = cate_make;
		this.cate_hot = cate_hot;
		this.cate_taste = cate_taste;
		this.cate_area = cate_area;
		this.cate_makeClass = cate_makeClass;
		this.cate_other = cate_other;
		this.cate_path = cate_path;
		this.cate_burdening = cate_burdening;
	}
	public Cate() {
		super();
	}
	
	
}

package cn.etc.Model;

public class Menu {
	private Integer food_id;
	private String food_name;
	private Integer food_class1;
	private Integer food_class2;
	private Integer food_class3;
	private String food_hot;
	private String food_taste;
	private String food_makeClass;
	private String food_other;
	private String food_path;
	private String food_count;
	private Integer business_id;
	private Integer food_talkId;
	private Double food_price;
	public Integer getFood_id() {
		return food_id;
	}
	public void setFood_id(Integer food_id) {
		this.food_id = food_id;
	}
	public String getFood_name() {
		return food_name;
	}
	public void setFood_name(String food_name) {
		this.food_name = food_name;
	}
	public Integer getFood_class1() {
		return food_class1;
	}
	public void setFood_class1(Integer food_class1) {
		this.food_class1 = food_class1;
	}
	public Integer getFood_class2() {
		return food_class2;
	}
	public void setFood_class2(Integer food_class2) {
		this.food_class2 = food_class2;
	}
	public Integer getFood_class3() {
		return food_class3;
	}
	public void setFood_class3(Integer food_class3) {
		this.food_class3 = food_class3;
	}
	public String getFood_hot() {
		return food_hot;
	}
	public void setFood_hot(String food_hot) {
		this.food_hot = food_hot;
	}
	public String getFood_taste() {
		return food_taste;
	}
	public void setFood_taste(String food_taste) {
		this.food_taste = food_taste;
	}
	public String getFood_makeClass() {
		return food_makeClass;
	}
	public void setFood_makeClass(String food_makeClass) {
		this.food_makeClass = food_makeClass;
	}
	public String getFood_other() {
		return food_other;
	}
	public void setFood_other(String food_other) {
		this.food_other = food_other;
	}
	public String getFood_path() {
		return food_path;
	}
	public void setFood_path(String food_path) {
		this.food_path = food_path;
	}
	public String getFood_count() {
		return food_count;
	}
	public void setFood_count(String food_count) {
		this.food_count = food_count;
	}
	public Integer getBusiness_id() {
		return business_id;
	}
	public void setBusiness_id(Integer business_id) {
		this.business_id = business_id;
	}
	public Integer getFood_talkId() {
		return food_talkId;
	}
	public void setFood_talkId(Integer food_talkId) {
		this.food_talkId = food_talkId;
	}
	public Double getFood_price() {
		return food_price;
	}
	public void setFood_price(Double food_price) {
		this.food_price = food_price;
	}
	@Override
	public String toString() {
		return "Menu [food_id=" + food_id + ", food_name=" + food_name
				+ ", food_class1=" + food_class1 + ", food_class2="
				+ food_class2 + ", food_class3=" + food_class3 + ", food_hot="
				+ food_hot + ", food_taste=" + food_taste + ", food_makeClass="
				+ food_makeClass + ", food_other=" + food_other
				+ ", food_path=" + food_path + ", food_count=" + food_count
				+ ", business_id=" + business_id + ", food_talkId="
				+ food_talkId + ", food_price=" + food_price + "]";
	}
	public Menu(Integer food_id, String food_name, Integer food_class1,
			Integer food_class2, Integer food_class3, String food_hot,
			String food_taste, String food_makeClass, String food_other,
			String food_path, String food_count, Integer business_id,
			Integer food_talkId, Double food_price) {
		super();
		this.food_id = food_id;
		this.food_name = food_name;
		this.food_class1 = food_class1;
		this.food_class2 = food_class2;
		this.food_class3 = food_class3;
		this.food_hot = food_hot;
		this.food_taste = food_taste;
		this.food_makeClass = food_makeClass;
		this.food_other = food_other;
		this.food_path = food_path;
		this.food_count = food_count;
		this.business_id = business_id;
		this.food_talkId = food_talkId;
		this.food_price = food_price;
	}
	public Menu() {
		super();
	}
	

}

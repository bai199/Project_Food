package cn.etc.Model;

public class Health {
	private Integer health_id;
	private String health_name;
	private String health_class1;
	private String health_class2;
	private String health_class3;
	private String health_title;
	private String health_body;
	private String health_other;
	private String health_path;
	private Integer total;
	public Integer getHealth_id() {
		return health_id;
	}
	public void setHealth_id(Integer health_id) {
		this.health_id = health_id;
	}
	public Health() {
		super();
	}

	public String getHealth_name() {
		return health_name;
	}
	public Integer getTotal() {
		return total;
	}
	public void setTotal(Integer total) {
		this.total = total;
	}
	public void setHealth_name(String health_name) {
		this.health_name = health_name;
	}
	public Health(Integer total) {
		super();
		this.total = total;
	}
	public String getHealth_class1() {
		return health_class1;
	}
	public void setHealth_class1(String health_class1) {
		this.health_class1 = health_class1;
	}
	public String getHealth_class2() {
		return health_class2;
	}
	public void setHealth_class2(String health_class2) {
		this.health_class2 = health_class2;
	}
	public String getHealth_class3() {
		return health_class3;
	}
	public void setHealth_class3(String health_class3) {
		this.health_class3 = health_class3;
	}
	public String getHealth_title() {
		return health_title;
	}
	public void setHealth_title(String health_title) {
		this.health_title = health_title;
	}
	public String getHealth_body() {
		return health_body;
	}
	public void setHealth_body(String health_body) {
		this.health_body = health_body;
	}
	public String getHealth_other() {
		return health_other;
	}
	public void setHealth_other(String health_other) {
		this.health_other = health_other;
	}
	public String getHealth_path() {
		return health_path;
	}
	public void setHealth_path(String health_path) {
		this.health_path = health_path;
	}
	@Override
	public String toString() {
		return "Health [health_id=" + health_id + ", health_name="
				+ health_name + ", health_class1=" + health_class1
				+ ", health_class2=" + health_class2 + ", health_class3="
				+ health_class3 + ", health_title=" + health_title
				+ ", health_body=" + health_body + ", health_other="
				+ health_other + ", health_path=" + health_path + ", total="
				+ total + "]";
	}
	
}
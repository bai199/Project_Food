package cn.etc.Model;

public class HealthClass {
	private Integer healthclass_id;
	private String healthclass_name;
	public HealthClass() {
		super();
		// TODO Auto-generated constructor stub
	}
	public HealthClass(Integer healthclass_id, String healthclass_name) {
		super();
		this.healthclass_id = healthclass_id;
		this.healthclass_name = healthclass_name;
	}
	public Integer getHealthclass_id() {
		return healthclass_id;
	}
	public void setHealthclass_id(Integer healthclass_id) {
		this.healthclass_id = healthclass_id;
	}
	public String getHealthclass_name() {
		return healthclass_name;
	}
	public void setHealthclass_name(String healthclass_name) {
		this.healthclass_name = healthclass_name;
	}
	@Override
	public String toString() {
		return "HealthClass [healthclass_id=" + healthclass_id
				+ ", healthclass_name=" + healthclass_name + "]";
	}
}

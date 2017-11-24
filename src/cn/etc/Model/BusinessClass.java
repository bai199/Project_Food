package cn.etc.Model;

public class BusinessClass {
	private Integer businessClass_id;
	private String businessClass;
	public Integer getBusinessClass_id() {
		return businessClass_id;
	}
	public void setBusinessClass_id(Integer businessClass_id) {
		this.businessClass_id = businessClass_id;
	}
	public String getBusinessClass() {
		return businessClass;
	}
	public void setBusinessClass(String businessClass) {
		this.businessClass = businessClass;
	}
	@Override
	public String toString() {
		return "BusinessClass [businessClass_id=" + businessClass_id
				+ ", businessClass=" + businessClass + "]";
	}
	public BusinessClass(Integer businessClass_id, String businessClass) {
		super();
		this.businessClass_id = businessClass_id;
		this.businessClass = businessClass;
	}
	public BusinessClass() {
		super();
	}
	
}

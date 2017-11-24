package cn.etc.Model;

public class CateClass {
	private Integer cateclass_id;
	private String cateclass_name;
	public Integer getCateclass_id() {
		return cateclass_id;
	}
	public void setCateclass_id(Integer cateclass_id) {
		this.cateclass_id = cateclass_id;
	}
	public String getCateclass_name() {
		return cateclass_name;
	}
	public void setCateclass_name(String cateclass_name) {
		this.cateclass_name = cateclass_name;
	}
	@Override
	public String toString() {
		return "CateClass [cateclass_id=" + cateclass_id + ", cateclass_name="
				+ cateclass_name + "]";
	}
	public CateClass(Integer cateclass_id, String cateclass_name) {
		super();
		this.cateclass_id = cateclass_id;
		this.cateclass_name = cateclass_name;
	}
	public CateClass() {
		super();
	}
	
}

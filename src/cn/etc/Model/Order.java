package cn.etc.Model;

public class Order {
	private String order_id;
	private Integer business_id;
	private String user_tel;
	private Integer food_id;
	private String order_location;
	private String send_time;
	private String pay_type;
	private String remark;
	private Double order_sum;
	private String order_time;
	private int count;
	public String getOrder_id() {
		return order_id;
	}
	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}
	public Integer getBusiness_id() {
		return business_id;
	}
	public void setBusiness_id(Integer business_id) {
		this.business_id = business_id;
	}
	public String getUser_tel() {
		return user_tel;
	}
	public void setUser_tel(String user_tel) {
		this.user_tel = user_tel;
	}
	public Integer getFood_id() {
		return food_id;
	}
	public void setFood_id(Integer food_id) {
		this.food_id = food_id;
	}
	public String getOrder_location() {
		return order_location;
	}
	public void setOrder_location(String order_location) {
		this.order_location = order_location;
	}
	public String getSend_time() {
		return send_time;
	}
	public void setSend_time(String send_time) {
		this.send_time = send_time;
	}
	public String getPay_type() {
		return pay_type;
	}
	public void setPay_type(String pay_type) {
		this.pay_type = pay_type;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public Double getOrder_sum() {
		return order_sum;
	}
	public void setOrder_sum(Double order_sum) {
		this.order_sum = order_sum;
	}
	public String getOrder_time() {
		return order_time;
	}
	public void setOrder_time(String order_time) {
		this.order_time = order_time;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	@Override
	public String toString() {
		return "Order [order_id=" + order_id + ", business_id=" + business_id
				+ ", user_tel=" + user_tel + ", food_id=" + food_id
				+ ", order_location=" + order_location + ", send_time="
				+ send_time + ", pay_type=" + pay_type + ", remark=" + remark
				+ ", order_sum=" + order_sum + ", order_time=" + order_time
				+ ", count=" + count + "]";
	}
	public Order(String order_id, Integer business_id, String user_tel,
			Integer food_id, String order_location, String send_time,
			String pay_type, String remark, Double order_sum,
			String order_time, int count) {
		super();
		this.order_id = order_id;
		this.business_id = business_id;
		this.user_tel = user_tel;
		this.food_id = food_id;
		this.order_location = order_location;
		this.send_time = send_time;
		this.pay_type = pay_type;
		this.remark = remark;
		this.order_sum = order_sum;
		this.order_time = order_time;
		this.count = count;
	}
	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	

}

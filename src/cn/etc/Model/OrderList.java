package cn.etc.Model;

public class OrderList {
	private Integer orderList_id;
	private Integer food_id;
	private Double food_price;
	private Integer shop_count;
	private String order_id;
	private String food_name;
	public Integer getOrderList_id() {
		return orderList_id;
	}
	public void setOrderList_id(Integer orderList_id) {
		this.orderList_id = orderList_id;
	}
	public Integer getFood_id() {
		return food_id;
	}
	public void setFood_id(Integer food_id) {
		this.food_id = food_id;
	}
	public Double getFood_price() {
		return food_price;
	}
	public void setFood_price(Double food_price) {
		this.food_price = food_price;
	}
	public Integer getShop_count() {
		return shop_count;
	}
	public void setShop_count(Integer shop_count) {
		this.shop_count = shop_count;
	}
	public String getOrder_id() {
		return order_id;
	}
	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}
	public String getFood_name() {
		return food_name;
	}
	public void setFood_name(String food_name) {
		this.food_name = food_name;
	}
	@Override
	public String toString() {
		return "OrderList [orderList_id=" + orderList_id + ", food_id="
				+ food_id + ", food_price=" + food_price + ", shop_count="
				+ shop_count + ", order_id=" + order_id + ", food_name="
				+ food_name + "]";
	}
	public OrderList(Integer orderList_id, Integer food_id, Double food_price,
			Integer shop_count, String order_id, String food_name) {
		super();
		this.orderList_id = orderList_id;
		this.food_id = food_id;
		this.food_price = food_price;
		this.shop_count = shop_count;
		this.order_id = order_id;
		this.food_name = food_name;
	}
	public OrderList() {
		super();
	}
	
}

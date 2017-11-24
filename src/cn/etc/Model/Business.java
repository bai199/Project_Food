package cn.etc.Model;

public class Business {
	private Integer business_id;
	private String business_name;
	private String business_pass;
	private Integer businessClass_id;
	private String business_tel;
	private String business_location;
	private Integer business_bill;
	private Double business_income;
	private String intelligence;
	private String announcement;
	private Double startPrice;
	private Double sendPrice;
	private Double boxPrice;
	private Integer sendTime;
	private String other;
	public Integer getBusiness_id() {
		return business_id;
	}
	public void setBusiness_id(Integer business_id) {
		this.business_id = business_id;
	}
	public String getBusiness_name() {
		return business_name;
	}
	public void setBusiness_name(String business_name) {
		this.business_name = business_name;
	}
	public String getBusiness_pass() {
		return business_pass;
	}
	public void setBusiness_pass(String business_pass) {
		this.business_pass = business_pass;
	}
	public Integer getBusinessClass_id() {
		return businessClass_id;
	}
	public void setBusinessClass_id(Integer businessClass_id) {
		this.businessClass_id = businessClass_id;
	}
	public String getBusiness_tel() {
		return business_tel;
	}
	public void setBusiness_tel(String business_tel) {
		this.business_tel = business_tel;
	}
	public String getBusiness_location() {
		return business_location;
	}
	public void setBusiness_location(String business_location) {
		this.business_location = business_location;
	}
	public Integer getBusiness_bill() {
		return business_bill;
	}
	public void setBusiness_bill(Integer business_bill) {
		this.business_bill = business_bill;
	}
	public Double getBusiness_income() {
		return business_income;
	}
	public void setBusiness_income(Double business_income) {
		this.business_income = business_income;
	}
	public String getIntelligence() {
		return intelligence;
	}
	public void setIntelligence(String intelligence) {
		this.intelligence = intelligence;
	}
	public String getAnnouncement() {
		return announcement;
	}
	public void setAnnouncement(String announcement) {
		this.announcement = announcement;
	}
	public Double getStartPrice() {
		return startPrice;
	}
	public void setStartPrice(Double startPrice) {
		this.startPrice = startPrice;
	}
	public Double getSendPrice() {
		return sendPrice;
	}
	public void setSendPrice(Double sendPrice) {
		this.sendPrice = sendPrice;
	}
	public Double getBoxPrice() {
		return boxPrice;
	}
	public void setBoxPrice(Double boxPrice) {
		this.boxPrice = boxPrice;
	}
	public Integer getSendTime() {
		return sendTime;
	}
	public void setSendTime(Integer sendTime) {
		this.sendTime = sendTime;
	}
	public String getOther() {
		return other;
	}
	public void setOther(String other) {
		this.other = other;
	}
	@Override
	public String toString() {
		return "Business [business_id=" + business_id + ", business_name="
				+ business_name + ", business_pass=" + business_pass
				+ ", businessClass_id=" + businessClass_id + ", business_tel="
				+ business_tel + ", business_location=" + business_location
				+ ", business_bill=" + business_bill + ", business_income="
				+ business_income + ", intelligence=" + intelligence
				+ ", announcement=" + announcement + ", startPrice="
				+ startPrice + ", sendPrice=" + sendPrice + ", boxPrice="
				+ boxPrice + ", sendTime=" + sendTime + ", other=" + other
				+ "]";
	}
	public Business(Integer business_id, String business_name,
			String business_pass, Integer businessClass_id,
			String business_tel, String business_location,
			Integer business_bill, Double business_income, String intelligence,
			String announcement, Double startPrice, Double sendPrice,
			Double boxPrice, Integer sendTime, String other) {
		super();
		this.business_id = business_id;
		this.business_name = business_name;
		this.business_pass = business_pass;
		this.businessClass_id = businessClass_id;
		this.business_tel = business_tel;
		this.business_location = business_location;
		this.business_bill = business_bill;
		this.business_income = business_income;
		this.intelligence = intelligence;
		this.announcement = announcement;
		this.startPrice = startPrice;
		this.sendPrice = sendPrice;
		this.boxPrice = boxPrice;
		this.sendTime = sendTime;
		this.other = other;
	}
	public Business() {
		super();
	}
	

}

package com.ebook.subscr.vo;

public class SubscrVo {
  private int subscribeKey;
  private String subDate;
  private String exDate;
  private String payMent;
  private String cardNum;
  private String cardPw;
  
  private String userId;
  private String userName;
  private String joinDate;
  // 생성자
  public SubscrVo() {}
  public SubscrVo(int subscribeKey, String subDate, String exDate, String payMent, String cardNum, String cardPw,
		String userId, String userName, String joinDate) {
	super();
	this.subscribeKey = subscribeKey;
	this.subDate = subDate;
	this.exDate = exDate;
	this.payMent = payMent;
	this.cardNum = cardNum;
	this.cardPw = cardPw;
	this.userId = userId;
	this.userName = userName;
	this.joinDate = joinDate;
  }
  // getter, setter
	public int getSubscribeKey() {
		return subscribeKey;
	}
	public void setSubscribeKey(int subscribeKey) {
		this.subscribeKey = subscribeKey;
	}
	public String getSubDate() {
		return subDate;
	}
	public void setSubDate(String subDate) {
		this.subDate = subDate;
	}
	public String getExDate() {
		return exDate;
	}
	public void setExDate(String exDate) {
		this.exDate = exDate;
	}
	public String getPayMent() {
		return payMent;
	}
	public void setPayMent(String payMent) {
		this.payMent = payMent;
	}
	public String getCardNum() {
		return cardNum;
	}
	public void setCardNum(String cardNum) {
		this.cardNum = cardNum;
	}
	public String getCardPw() {
		return cardPw;
	}
	public void setCardPw(String cardPw) {
		this.cardPw = cardPw;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}
	// toString
	@Override
	public String toString() {
		return "SubscrVo [subscribeKey=" + subscribeKey + ", subDate=" + subDate + ", exDate=" + exDate + ", payMent="
				+ payMent + ", cardNum=" + cardNum + ", cardPw=" + cardPw + ", userId=" + userId + ", userName="
				+ userName + ", joinDate=" + joinDate + "]";
	}
	

  
}

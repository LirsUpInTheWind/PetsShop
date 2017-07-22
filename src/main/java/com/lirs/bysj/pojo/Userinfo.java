package com.lirs.bysj.pojo;
public class Userinfo {
    
    private Integer uiId; 
    private String uiRname;
    private String uiAdress;
    private String uiPhone;
    private Integer uiScore;
    private User user;
    
    
    
	public Userinfo() {
		super();
	}
	public Userinfo(Integer uiId, String uiRname, String uiAdress, String uiPhone, Integer uiScore, User user) {
		super();
		this.uiId = uiId;
		this.uiRname = uiRname;
		this.uiAdress = uiAdress;
		this.uiPhone = uiPhone;
		this.uiScore= uiScore;
		this.user = user;
	}
	public Integer getUiId() {
		return uiId;
	}
	public void setUiId(Integer uiId) {
		this.uiId = uiId;
	}
	public String getUiRname() {
		return uiRname;
	}
	public void setUiRname(String uiRname) {
		this.uiRname = uiRname;
	}
	public String getUiAdress() {
		return uiAdress;
	}
	public void setUiAdress(String uiAdress) {
		this.uiAdress = uiAdress;
	}
	public String getUiPhone() {
		return uiPhone;
	}
	public void setUiPhone(String uiPhone) {
		this.uiPhone = uiPhone;
	}
	public Integer getUiScore() {
		return uiScore;
	}
	public void setUiScore(Integer uiScore) {
		this.uiScore = uiScore;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
    
    
}
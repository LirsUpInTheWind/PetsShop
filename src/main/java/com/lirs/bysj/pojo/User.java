package com.lirs.bysj.pojo;
public class User {
   
    private Integer uId;
    private Integer usernumber;
    private String userpwd;
    private String name;
    private String time;
    private Integer type;
    
      public User() {
		
	}
      public User(Integer uId, Integer usernumber, String userpwd, String name, String time, Integer type) {
		super();
		this.uId = uId;
		this.usernumber = usernumber;
		this.userpwd = userpwd;
		this.name = name;
		this.time = time;
		this.type = type;
	}
      public Integer getuId() {
        return uId;
    }
      public void setuId(Integer uId) {
        this.uId = uId;
    }

    public Integer getUsernumber() {
        return usernumber;
    }

    public void setUsernumber(Integer usernumber) {
        this.usernumber = usernumber;
    }

    public String getUserpwd() {
        return userpwd;
    }

    public void setUserpwd(String userpwd) {
        this.userpwd = userpwd;
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }
	@Override
	public String toString() {
		return "User [uId=" + uId + ", usernumber=" + usernumber + ", userpwd=" + userpwd + ", name=" + name + ", time="
				+ time + ", type=" + type + "]";
	}
    
}
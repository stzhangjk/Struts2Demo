package action;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {
	
	private String username;
	private String password;
	

	public String login(){
		if(username==null || !username.equals("admin")){
			this.addFieldError("name", "用户名错误！");
			return ERROR;
		}else{
			return SUCCESS;
		}
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


}

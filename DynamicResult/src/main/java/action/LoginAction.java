package action;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport{
	private String r;
	private String type;

	
	public String login(){
		if(getType().equals("1")){
			setR("/login_success.jsp");
		}else if(getType().equals("2")){
			setR("/login_error.jsp");
		}
		return SUCCESS;
	}
	
	
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getR() {
		return r;
	}

	public void setR(String r) {
		this.r = r;
	}
	
	
	
}

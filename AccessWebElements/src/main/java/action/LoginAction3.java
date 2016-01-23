package action;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction3 extends ActionSupport {

	HttpServletRequest request;
	HttpSession session;
	ServletContext context;
	
	private String username;
	private String password;
	
	public LoginAction3(){
		request = ServletActionContext.getRequest();
		session = request.getSession();
		context = session.getServletContext();
	}
	
	public String login() {
		request.setAttribute("username", username);
		request.setAttribute("password", password);
		
		return SUCCESS;
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

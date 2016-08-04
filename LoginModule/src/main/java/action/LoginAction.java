package action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.accessibility.AccessibleRelation;
import javax.servlet.ServletContext;
import javax.servlet.ServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import util.UserServer;
import model.User;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class LoginAction extends ActionSupport implements ModelDriven<User>,ServletRequestAware,ServletResponseAware{
	

	private HttpServletRequest request;
	private HttpServletResponse response;
	private HttpSession session;
	private ServletContext context;

	private User user = new User();
	private boolean remember;

	private List<User> onlineUsers;
	
	public String login() {
		String name = user.getUsername();
		if(name!=null && !name.equals("")){
			String pass = UserServer.getPassword(name);
			if(pass==null){
				this.addFieldError("login_error", "用户不存在");
			}
			else if(user.getPass().equals(pass)){
				user.setEmail(UserServer.getEmail(name));
//				if(remember){
//					response.addCookie(new Cookie("username", name));
//				} 
				onlineUsers.add(user);
				return SUCCESS;
			}
		}
		return "login_input";
		
	}

	
	@Override
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		this.request = request;
		this.session = request.getSession();
		this.context= request.getServletContext();
		onlineUsers = (List<User>)this.context.getAttribute("onlineUsers");
		if(onlineUsers==null){
			onlineUsers = new ArrayList<User>();
			this.context.setAttribute("onlineUsers", onlineUsers);
		}
	}

	@Override
	public void setServletResponse(HttpServletResponse response) {
		// TODO Auto-generated method stub
		this.response = response;
	}
	


	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		return user;
	}
	
	public boolean isRemember() {
		return remember;
	}

	public void setRemember(boolean remember) {
		this.remember = remember;
	}



}

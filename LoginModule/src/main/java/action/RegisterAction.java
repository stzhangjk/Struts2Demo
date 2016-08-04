package action;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import model.User;

import org.apache.struts2.interceptor.ServletRequestAware;

import util.DBManager;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class RegisterAction extends ActionSupport implements ServletRequestAware,ModelDriven<User>{

	private HttpServletRequest request;
	private HttpSession session;
	private ServletContext context;
	private User user = new User();
	
	
	public String register(){
		if(user.getUsername()!=null){
			
//			System.out.println(user.getUsername());
//			System.out.println(user.getPass());
//			System.out.println(user.getEmail());
//			System.out.println(user.getImage());
			int rs = DBManager.executeUpdate(
					"insert into _user(username,pass,email) values(?,?,?)",
					new Object[]{
						user.getUsername(),
						user.getPass(),
						user.getEmail()
					}
			);
			if(rs==1){
				//System.out.println("×¢²á³É¹¦");
				return SUCCESS;
			}else{
				return ERROR;
			}
			
		}else{
			return "register_input";
		}
		
	}

	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		return user;
	}
	
	
	@Override
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		this.request = request;
		this.session = request.getSession();
		this.context = request.getServletContext();
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}


	 

	
}

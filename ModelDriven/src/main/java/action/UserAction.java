package action;

import model.User;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;



public class UserAction extends ActionSupport implements ModelDriven<User>{

	private User user = new User();
	
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		return user;
	}
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println("username=" + getUser().getUsername());
		System.out.println("password="+ getUser().getPassword());
		return super.execute();
	}

}

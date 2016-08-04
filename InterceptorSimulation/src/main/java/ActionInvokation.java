import java.util.ArrayList;
import java.util.List;


public class ActionInvokation {
	
	Action action;
	List<Interceptor> interceptors;
	int index=-1;
	
	public ActionInvokation(){
		action = new Action();
		
		interceptors = new ArrayList<>();
		interceptors.add(new FirstInterceptor());
		interceptors.add(new SecondInterceptor());
	}
	
	public void invoke(){
		index++;
		if(index >= interceptors.size()){
			action.execute();
		}else{
			interceptors.get(index).intercept(this);
		}
	}

}

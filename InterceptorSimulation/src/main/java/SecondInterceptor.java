
public class SecondInterceptor implements Interceptor{

	@Override
	public void intercept(ActionInvokation invokation) {
		// TODO Auto-generated method stub
		System.out.println(2);
		invokation.invoke();
		System.out.println(-2);
	}
	
}

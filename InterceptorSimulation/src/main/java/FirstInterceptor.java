


public class FirstInterceptor implements Interceptor{

	@Override
	public void intercept(ActionInvokation invokation) {
		// TODO Auto-generated method stub
		System.out.println(1);
		invokation.invoke();
		System.out.println(-1);
	}
	
}

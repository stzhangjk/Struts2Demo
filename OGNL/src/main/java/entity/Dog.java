package entity;

public class Dog {

	private int age;
	private String name;
	
	
	
	
	public Dog() {
		super();
	}

	public Dog(String name) {
		super();
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public String getName() {
		return name;
	}
	
	public void setAge(int age) {
		this.age = age;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	@Override
	public String toString() {
		return "Dog [name=" + name + ", age=" + age + "]";
	}
	
	
	
}

package entity;

public class Cat {
	
	private int age;
	private Dog friend;
	private String name;
	
	
	
	
	@Override
	public String toString() {
		return "Cat [age=" + age + ", friend=" + friend + ", name=" + name
				+ "]";
	}

	public Cat() {
		super();
	}

	public Cat(String name) {
		super();
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public Dog getFriend() {
		return friend;
	}

	public String getName() {
		return name;
	}
	
	public void setAge(int age) {
		this.age = age;
	}
	
	public void setFriend(Dog friend) {
		this.friend = friend;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	

}

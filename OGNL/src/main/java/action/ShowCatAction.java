package action;

import java.util.*;

import com.opensymphony.xwork2.ActionSupport;

import entity.Cat;
import entity.Dog;

public class ShowCatAction extends ActionSupport {

	private Cat cat;
	
	private Map<String, Cat> catMap = new HashMap<String, Cat>();
	private List<Cat> cats = new ArrayList<Cat>();
	private Set<Dog> dogs = new HashSet<Dog>();
	private String[] strs={"str1","str2","str3","str4"}; 
	
	{
		Cat cat1 = new Cat("cat1");
		Cat cat2 = new Cat("cat2");
		Cat cat3 = new Cat("cat3");
		
		Dog dog1 = new Dog("dog1");
		Dog dog2 = new Dog("dog2");
		Dog dog3 = new Dog("dog3");
		
		catMap.put("cat1", cat1);
		catMap.put("cat2", cat2);
		catMap.put("cat3", cat3);
		
		cats.add(cat1);
		cats.add(cat2);
		cats.add(cat3);
		
		dogs.add(dog1);
		dogs.add(dog2);
		dogs.add(dog3);
	}
	
	public String func(){
		return "func";
	}

	public Cat getCat() {
		return cat;
	}

	public Map<String, Cat> getCatMap() {
		return catMap;
	}

	public List<Cat> getCats() {
		return cats;
	}

	public Set<Dog> getDogs() {
		return dogs;
	}

	public String[] getStrs() {
		return strs;
	}

	public void setCat(Cat cat) {
		this.cat = cat;
	}

	public void setCatMap(Map<String, Cat> catMap) {
		this.catMap = catMap;
	}

	public void setCats(List<Cat> cats) {
		this.cats = cats;
	}

	public void setDogs(Set<Dog> dogs) {
		this.dogs = dogs;
	}
	
	public void setStrs(String[] strs) {
		this.strs = strs;
	}
	

	
	
}

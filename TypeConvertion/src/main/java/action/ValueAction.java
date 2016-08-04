package action;


import java.awt.Point;
import java.util.Date;
import java.util.Map;
import java.util.Set;

import com.opensymphony.xwork2.ActionSupport;

public class ValueAction extends ActionSupport {

	private Date date;

	private String username;
	private String password;
	private Set<String> hobbies;
	private Map<String, String> words;
	private Point[] points;
	private Point point;
	
	
	public Point[] getPoints() {
		return points;
	}
	public void setPoints(Point[] points) {
		this.points = points;
	}
	public Point getPoint() {
		return point;
	}
	public void setPoint(Point point) {
		this.point = point;
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
	public Set<String> getHobbies() {
		return hobbies;
	}
	public void setHobbies(Set<String> hobbies) {
		this.hobbies = hobbies;
	}
	public Map<String, String> getWords() {
		return words;
	}
	public void setWords(Map<String, String> words) {
		this.words = words;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
}

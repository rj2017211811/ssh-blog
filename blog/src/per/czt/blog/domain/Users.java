package per.czt.blog.domain;

import java.util.Set;

public class Users {
	private Integer id;
	private String username;
	private String password;
	private String truename;
	private String sex;
	private String nickname;
	private String email;
	private String icon;
	private String assign;
	private Integer grade;
	private Country country;
	private Province province;
	private City city;
	private java.util.Date registerDate;
	private Set<Blogsort> blogsorts;
	private Set<Blogcomment> blogcomments;
	private Set<Blogagree> blogagrees;
	private Set<Blogcommentrely> blogcommentrelies1;
	private Set<Blogcommentrely> blogcommentrelies2;
	private Set<Message> hosts;
	private Set<Message> visiteds;
	private Set<Messagecommentrely> messagerelies1;
	private Set<Messagecommentrely> messagerelies2;
	
	private Set<Note> notes;
	private Set<Thoughts> thoughts;
	private Set<Userstag> userstags;
	
	public Set<Note> getNotes() {
		return notes;
	}
	public void setNotes(Set<Note> notes) {
		this.notes = notes;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
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
	public String getTruename() {
		return truename;
	}
	public void setTruename(String truename) {
		this.truename = truename;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	public String getAssign() {
		return assign;
	}
	public void setAssign(String assign) {
		this.assign = assign;
	}
	public Integer getGrade() {
		return grade;
	}
	public void setGrade(Integer grade) {
		this.grade = grade;
	}
	public Country getCountry() {
		return country;
	}
	public void setCountry(Country country) {
		this.country = country;
	}
	public Province getProvince() {
		return province;
	}
	public void setProvince(Province province) {
		this.province = province;
	}
	public City getCity() {
		return city;
	}
	public void setCity(City city) {
		this.city = city;
	}
	public java.util.Date getRegisterDate() {
		return registerDate;
	}
	public void setRegisterDate(java.util.Date registerDate) {
		this.registerDate = registerDate;
	}
	public Set<Blogsort> getBlogsorts() {
		return blogsorts;
	}
	public void setBlogsorts(Set<Blogsort> blogsorts) {
		this.blogsorts = blogsorts;
	}
	public Set<Blogcomment> getBlogcomments() {
		return blogcomments;
	}
	public void setBlogcomments(Set<Blogcomment> blogcomments) {
		this.blogcomments = blogcomments;
	}
	public Set<Blogagree> getBlogagrees() {
		return blogagrees;
	}
	public void setBlogagrees(Set<Blogagree> blogagrees) {
		this.blogagrees = blogagrees;
	}
	public Set<Blogcommentrely> getBlogcommentrelies1() {
		return blogcommentrelies1;
	}
	public void setBlogcommentrelies1(Set<Blogcommentrely> blogcommentrelies1) {
		this.blogcommentrelies1 = blogcommentrelies1;
	}
	public Set<Blogcommentrely> getBlogcommentrelies2() {
		return blogcommentrelies2;
	}
	public void setBlogcommentrelies2(Set<Blogcommentrely> blogcommentrelies2) {
		this.blogcommentrelies2 = blogcommentrelies2;
	}
	public Set<Message> getHosts() {
		return hosts;
	}
	public void setHosts(Set<Message> hosts) {
		this.hosts = hosts;
	}
	public Set<Message> getVisiteds() {
		return visiteds;
	}
	public void setVisiteds(Set<Message> visiteds) {
		this.visiteds = visiteds;
	}
	public Set<Messagecommentrely> getMessagerelies1() {
		return messagerelies1;
	}
	public void setMessagerelies1(Set<Messagecommentrely> messagerelies1) {
		this.messagerelies1 = messagerelies1;
	}
	public Set<Messagecommentrely> getMessagerelies2() {
		return messagerelies2;
	}
	public void setMessagerelies2(Set<Messagecommentrely> messagerelies2) {
		this.messagerelies2 = messagerelies2;
	}
	
	public Set<Thoughts> getThoughts() {
		return thoughts;
	}
	public void setThoughts(Set<Thoughts> thoughts) {
		this.thoughts = thoughts;
	}
	public Set<Userstag> getUserstags() {
		return userstags;
	}
	public void setUserstags(Set<Userstag> userstags) {
		this.userstags = userstags;
	}

	
	
	
	

}

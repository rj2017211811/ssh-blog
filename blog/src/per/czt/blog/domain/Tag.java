package per.czt.blog.domain;

import java.util.Set;

public class Tag {
	private Integer id;
	private String name;
	
	
	private Set<Userstag> userstags;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public Set<Userstag> getUserstags() {
		return userstags;
	}
	public void setUserstags(Set<Userstag> userstags) {
		this.userstags = userstags;
	}

	

}

package per.czt.blog.domain;

public class Thoughts {
	private Integer id;
	private String content;
	private Users user;
	private java.util.Date writeDate;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	public java.util.Date getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(java.util.Date writeDate) {
		this.writeDate = writeDate;
	}
	
	
	

}

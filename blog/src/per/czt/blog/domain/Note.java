package per.czt.blog.domain;

public class Note {
	private Integer id;
	private String content;
	private java.util.Date writeDate;
	private Users user;
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
	public java.util.Date getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(java.util.Date writeDate) {
		this.writeDate = writeDate;
	}
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	
	

}

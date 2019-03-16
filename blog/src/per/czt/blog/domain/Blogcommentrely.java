package per.czt.blog.domain;

public class Blogcommentrely {
	private 	Integer id;
	private String content;
	private Blogcomment blogcomment;
	private Users sender;
	private Users receiver;
	private java.util.Date sendDate;
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
	public Blogcomment getBlogcomment() {
		return blogcomment;
	}
	public void setBlogcomment(Blogcomment blogcomment) {
		this.blogcomment = blogcomment;
	}
	public Users getSender() {
		return sender;
	}
	public void setSender(Users sender) {
		this.sender = sender;
	}
	public Users getReceiver() {
		return receiver;
	}
	public void setReceiver(Users receiver) {
		this.receiver = receiver;
	}
	public java.util.Date getSendDate() {
		return sendDate;
	}
	public void setSendDate(java.util.Date sendDate) {
		this.sendDate = sendDate;
	}

}

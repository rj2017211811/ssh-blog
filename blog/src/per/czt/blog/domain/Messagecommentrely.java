package per.czt.blog.domain;

public class Messagecommentrely {
	private Integer id;
	private String content;
	private Message message;
	private Users sender;
	private Users receiver;
	private java.util.Date publishDate;
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
	public Message getMessage() {
		return message;
	}
	public void setMessage(Message message) {
		this.message = message;
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
	public java.util.Date getPublishDate() {
		return publishDate;
	}
	public void setPublishDate(java.util.Date publishDate) {
		this.publishDate = publishDate;
	}
	
	

}

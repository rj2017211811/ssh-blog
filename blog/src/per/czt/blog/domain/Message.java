package per.czt.blog.domain;

import java.util.Set;

public class Message {
    private Integer id;
    private String content;
    private Users host;
    private Users visited;
    private String website;
    private java.util.Date publishDate;
    private Set<Messagecommentrely> messagecommentrelies;
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
	public Users getHost() {
		return host;
	}
	public void setHost(Users host) {
		this.host = host;
	}
	public Users getVisited() {
		return visited;
	}
	public void setVisited(Users visited) {
		this.visited = visited;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	public java.util.Date getPublishDate() {
		return publishDate;
	}
	public void setPublishDate(java.util.Date publishDate) {
		this.publishDate = publishDate;
	}
	public Set<Messagecommentrely> getMessagerelies() {
		return messagecommentrelies;
	}
	public void setMessagerelies(Set<Messagecommentrely> messagecommentrelies) {
		this.messagecommentrelies = messagecommentrelies;
	}
    
}

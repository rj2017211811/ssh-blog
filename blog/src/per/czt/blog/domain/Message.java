package per.czt.blog.domain;

import java.util.Set;

public class Message {
    private Integer id;
    private String nickname;
    
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
	
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
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
	public Set<Messagecommentrely> getMessagecommentrelies() {
		return messagecommentrelies;
	}
	public void setMessagecommentrelies(Set<Messagecommentrely> messagecommentrelies) {
		this.messagecommentrelies = messagecommentrelies;
	}
	
}

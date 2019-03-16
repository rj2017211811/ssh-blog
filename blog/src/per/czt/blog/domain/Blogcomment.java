package per.czt.blog.domain;

import java.util.Set;

public class Blogcomment {
	private Integer id;
	private String content;
	private Blog blog;
	private Users user;
	private java.util.Date publishDate;
	private Set<Blogcommentrely> blogcommentrely;
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
	public Blog getBlog() {
		return blog;
	}
	public void setBlog(Blog blog) {
		this.blog = blog;
	}
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	public java.util.Date getPublishDate() {
		return publishDate;
	}
	public void setPublishDate(java.util.Date publishDate) {
		this.publishDate = publishDate;
	}
	public Set<Blogcommentrely> getBlogcommentrely() {
		return blogcommentrely;
	}
	public void setBlogcommentrely(Set<Blogcommentrely> blogcommentrely) {
		this.blogcommentrely = blogcommentrely;
	}

}

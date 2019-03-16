package per.czt.blog.domain;

import java.util.Set;

public class Blog {
    private Integer id;
    private String title;
    private String content;
    private Blogsort blogsort;
    private  java.util.Date publishDate;
    private Set<Blogcomment> blogcomments;
    private Set<Blogagree> blogagrees;
    private Userstag usertag;
  
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Blogsort getBlogsort() {
		return blogsort;
	}
	public void setBlogsort(Blogsort blogsort) {
		this.blogsort = blogsort;
	}
	public java.util.Date getPublishDate() {
		return publishDate;
	}
	public void setPublishDate(java.util.Date publishDate) {
		this.publishDate = publishDate;
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
	public Userstag getUsertag() {
		return usertag;
	}
	public void setUsertag(Userstag usertag) {
		this.usertag = usertag;
	}

    
}

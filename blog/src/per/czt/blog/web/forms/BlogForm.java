package per.czt.blog.web.forms;

import org.apache.struts.action.ActionForm;

import per.czt.blog.domain.Blogsort;

public class BlogForm extends ActionForm {
	private Integer id;
    private String title;
    private String content;
    private Integer blogsort;
    private String blogsort2;
    private  String publishDate;
    private String tag;
    private String blogName;
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
	public Integer getBlogsort() {
		return blogsort;
	}
	public void setBlogsort(Integer blogsort) {
		this.blogsort = blogsort;
	}
	public String getPublishDate() {
		return publishDate;
	}
	public void setPublishDate(String publishDate) {
		this.publishDate = publishDate;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public String getBlogsort2() {
		return blogsort2;
	}
	public void setBlogsort2(String blogsort2) {
		this.blogsort2 = blogsort2;
	}
	public String getBlogName() {
		return blogName;
	}
	public void setBlogName(String blogName) {
		this.blogName = blogName;
	}


}

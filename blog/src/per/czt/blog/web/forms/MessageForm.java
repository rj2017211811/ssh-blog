package per.czt.blog.web.forms;

import org.apache.struts.action.ActionForm;

public class MessageForm extends ActionForm {
	private String nickname;
	private String website;
	private String content;
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
}

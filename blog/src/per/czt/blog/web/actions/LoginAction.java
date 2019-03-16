package per.czt.blog.web.actions;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import per.czt.blog.domain.Blog;
import per.czt.blog.domain.Blogsort;
import per.czt.blog.domain.Tag;
import per.czt.blog.domain.Users;
import per.czt.blog.service.interfaces.BlogServiceInter;
import per.czt.blog.service.interfaces.BlogsortServiceInter;
import per.czt.blog.service.interfaces.TagServiceInter;
import per.czt.blog.service.interfaces.UsersServiceInter;
import per.czt.blog.web.forms.UsersForm;

public class LoginAction extends DispatchAction {
	private UsersServiceInter usersService;
	
	private BlogsortServiceInter blogsortService;
	private BlogServiceInter blogService;
	private TagServiceInter tagService;
	
    public UsersServiceInter getUsersService() {
		return usersService;
	}


	public void setUsersService(UsersServiceInter usersService) {
		this.usersService = usersService;
	}

	public BlogsortServiceInter getBlogsortService() {
		return blogsortService;
	}


	public void setBlogsortService(BlogsortServiceInter blogsortService) {
		this.blogsortService = blogsortService;
	}


	public BlogServiceInter getBlogService() {
		return blogService;
	}


	public void setBlogService(BlogServiceInter blogService) {
		this.blogService = blogService;
	}


	public TagServiceInter getTagService() {
		return tagService;
	}


	public void setTagService(TagServiceInter tagService) {
		this.tagService = tagService;
	}


	public ActionForward goLogin(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Users user=(Users)request.getSession().getAttribute("user");
		if(user!=null)
		{
			
			//request.setAttribute("tipMessage", "登录成功!!");
			//List<Blog> blogList=blogService.executeQuery("from Blog where blogsort.user.id="+user.getId(), null);
			List<Blogsort> blogsortList=blogsortService.executeQuery("from Blogsort where user.id="+user.getId(), null);
			
			int pageNow=1;
			int pageSize=3;
			String strPageNow=request.getParameter("pageNow");
			if(strPageNow!=null)
			{
				pageNow=Integer.parseInt(strPageNow);
			}
			int pageCount=blogService.getPageCount("from Blog where blogsort.user.id="+user.getId(), pageSize);
			
			List<Blog> blogList=blogService.executeQueryByPage("from Blog where blogsort.user.id="+user.getId(), null, pageNow, pageSize);
			List<Blog> blogList0=blogService.executeQuery("from Blog where blogsort.user.id="+user.getId(), null);
			
			List<String> dateList=new ArrayList<String>();
		    List<Tag> tagList=tagService.executeQuery("from Tag", null);
			//获取文章发表月份的数目
			for(Blog blog:blogList0)
			{
				//定义要转换的日期格式
			    SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月");
			   
			    //将Date类型转换成String类型
		        String format = sdf.format(blog.getPublishDate());  
		       
		      //打印format数据类型
		      /*  System.out.println(format.getClass().getName());
		        System.out.println(format);//打印当前时间*/
		        
		        if(dateList.size()==0)
		        {
		        	dateList.add(format);
		        }
		        else
		        {
		        	int i=0;
		        	for(String str:dateList)
		        	{
		        		if(str.equals(format))
		        		{
		        			i++;
		        		}
		        	}
		        	if(i==0)
		        	{
		        		
		        		dateList.add(format);
		        	}
		        }
			}
			List<String> dateList3=new ArrayList<String>();
			List<String> dateList2=new ArrayList<String>();
			   
			for(String str:dateList)
			{
				System.out.println("date:"+str);
				
				String str2=str.substring(0, 4)+"-"+str.substring(5,7);
				System.out.println("date2:"+str2);
				dateList2.add(str2);
			}
			for(String str:dateList2)
			{
				  String month=str.substring(5,7);
				  
				//  List<Blog> blogList2=blogService.executeQuery("from Blog where publishDate between '"+str+"-00 00:00:00' and '2019-03-31 23:59:59'",null);
				 //模糊查询某年月的记录
				  List<Blog> blogList2=blogService.executeQuery("from Blog where publishDate like '%"+str+"%' and blogsort.user.id="+user.getId(),null);
				  System.out.println(str+":"+blogList2.size());
				  dateList3.add(blogList2.size()+"");
			}
			
			request.setAttribute("tagList", tagList);
		    request.setAttribute("pageNow", pageNow);
			request.setAttribute("pageCount", pageCount);
			request.setAttribute("blogList", blogList);
			request.setAttribute("blogsortList", blogsortList);
			
			request.setAttribute("blogList0", blogList0);
			request.setAttribute("dateList", dateList);
			request.setAttribute("dateList3", dateList3);
			return mapping.findForward("users");
		}
		request.setAttribute("tipMessage", "您的登录已经失效!!");
		return mapping.findForward("users");
		
	}

	public ActionForward login(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		UsersForm usersForm = (UsersForm) form;
		
		String []parameters= {usersForm.getUsername(),usersForm.getPassword()};
		Users user=(Users)usersService.uniqueQuery("from Users where username=? and password=?", parameters);
		if(user!=null)
		{
			System.out.println("登录成功!");
			request.getSession().setAttribute("user", user);
			
			ActionForward actionforward=new ActionForward();
			actionforward.setPath("/login.do?flag=goLogin");
			
			return actionforward;
		}
		System.out.println("登录失败，用户名或密码错误!");
		request.setAttribute("tipMessage", "用户名或密码错误!!");
		return mapping.findForward("users");
	}
	public ActionForward logout(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		request.getSession().removeAttribute("user");
		return mapping.findForward("users");
		
	}
}

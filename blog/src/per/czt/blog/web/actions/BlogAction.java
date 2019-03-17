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
import per.czt.blog.domain.Userstag;
import per.czt.blog.service.interfaces.BlogServiceInter;
import per.czt.blog.service.interfaces.BlogsortServiceInter;
import per.czt.blog.service.interfaces.TagServiceInter;
import per.czt.blog.service.interfaces.UsersServiceInter;
import per.czt.blog.service.interfaces.UserstagServiceInter;
import per.czt.blog.web.forms.BlogForm;

public class BlogAction extends DispatchAction {
	private UsersServiceInter usersService;
	private BlogServiceInter blogService;
	private BlogsortServiceInter blogsortService;
	private TagServiceInter tagService;
	private UserstagServiceInter userstagService;

	public UsersServiceInter getUsersService() {
		return usersService;
	}

	public void setUsersService(UsersServiceInter usersService) {
		this.usersService = usersService;
	}

	public BlogServiceInter getBlogService() {
		return blogService;
	}

	public void setBlogService(BlogServiceInter blogService) {
		this.blogService = blogService;
	}

	public BlogsortServiceInter getBlogsortService() {
		return blogsortService;
	}

	public void setBlogsortService(BlogsortServiceInter blogsortService) {
		this.blogsortService = blogsortService;
	}

	public TagServiceInter getTagService() {
		return tagService;
	}

	public void setTagService(TagServiceInter tagService) {
		this.tagService = tagService;
	}

	public UserstagServiceInter getUserstagService() {
		return userstagService;
	}

	public void setUserstagService(UserstagServiceInter userstagService) {
		this.userstagService = userstagService;
	}

	public ActionForward goWriteBlog(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Users user = (Users) request.getSession().getAttribute("user");
		if (user != null) {
			String blogId = request.getParameter("blogId");
			if (blogId != null) {
				Blog blog = (Blog) blogService.uniqueQuery("from Blog where id=" + Integer.parseInt(blogId), null);
				request.setAttribute("blog", blog);
			}

			Object[] parameters = { user.getId() };
			List<Blogsort> blogsortList = blogsortService.executeQuery("from Blogsort where user.id=?", parameters);

			request.setAttribute("blogsortList", blogsortList);
			return mapping.findForward("writeBlog");
		}

		request.setAttribute("tipMessage", "您还未登录,请先去登录吧");
		return mapping.findForward("users");

	}

	public ActionForward publishBlog(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Users user = (Users) request.getSession().getAttribute("user");
		if (user != null) {
			int blogId = Integer.parseInt(request.getParameter("blogId"));

			if (blogId == 0) {

				BlogForm blogForm = (BlogForm) form;

				Blog blog = new Blog();
				blog.setTitle(blogForm.getTitle());
				blog.setContent(blogForm.getContent());
				blog.setPublishDate(new java.util.Date());
				Object []parameters= {blogForm.getTag()};
				Tag tag1=(Tag)tagService.uniqueQuery("from Tag where name=?", parameters);
				Tag tag = new Tag();
				if(tag1==null)
				{
					
					tag.setName(blogForm.getTag());
					
					
				}
				
				
				Userstag userstag = new Userstag();
				userstag.setUser((Users) usersService.getObjectById(Users.class, user.getId()));
				

				blog.setUsertag(userstag);
			
				if(blogForm.getBlogsort2()!=null)
				{
					System.out.println("3");
					Object []parameters1= {blogForm.getBlogsort2(),user.getId()};
					
					Blogsort blogsort2=(Blogsort)blogsortService.uniqueQuery("from Blogsort where name=? and user.id=?", parameters1);
					if(blogsort2==null)
					{
						System.out.println(31);
						Blogsort blogsort3=new Blogsort();
						blogsort3.setName(blogForm.getBlogsort2());
						blogsort3.setUser(user);
						blogsortService.save(blogsort3);
						blog.setBlogsort((Blogsort) blogsortService.getObjectById(Blogsort.class, blogsort3.getId()));
					  
					}
					else
					{
						blog.setBlogsort(blogsort2);
					}
					
				}
				else
				{
					System.out.println("4");
					System.out.print("blogsort:" + blogForm.getBlogsort());
					blog.setBlogsort((Blogsort) blogsortService.getObjectById(Blogsort.class, blogForm.getBlogsort()));
				}
				

				
				try {
					if(tag1==null)
					{
						tagService.save(tag);
						userstag.setTag(tag);
					}
					else
					{
						userstag.setTag(tag1);
					}
						
					
					
					userstagService.save(userstag);

					blogService.save(blog);
					System.out.println("发表成功");
					request.setAttribute("tipMessage", "发表成功!!");
					ActionForward actionForward=new ActionForward();
					actionForward.setPath("/login.do?flag=goLogin");
					return  actionForward;
					
				} catch (Exception e) {
					System.out.println("发表失败");
					request.setAttribute("tipMessage", "发表失败!!");
					e.printStackTrace();
					ActionForward actionForward=new ActionForward();
					actionForward.setPath("/login.do?flag=goLogin");
					return  actionForward;
					

				}
			}

			else {
				BlogForm blogForm = (BlogForm) form;
				int blogsortId=0;
				System.out.println("blogForm.getBlogsort2():"+blogForm.getBlogsort2());
				if(blogForm.getBlogsort2()!=null&&!blogForm.getBlogsort2().equals(""))
				{
					System.out.println("3");
					Object []parameters1= {blogForm.getBlogsort2(),user.getId()};
					Blogsort blogsort2=(Blogsort)blogsortService.uniqueQuery("from Blogsort where name=? and user.id=?", parameters1);
					if(blogsort2==null)
					{
						System.out.println(31);
						Blogsort blogsort3=new Blogsort();
						blogsort3.setName(blogForm.getBlogsort2());
						blogsort3.setUser(user);
						blogsortService.save(blogsort3);
						blogsortId=blogsort3.getId();			  
					}
					else
					{
						System.out.println(32);
						blogsortId=blogsort2.getId();
					}
					
					
				}
				else
				{
					System.out.println("4");
					System.out.print("blogsort:" + blogForm.getBlogsort());
					blogsortId=blogForm.getBlogsort();
				
				}
				int usertagId=0;
				Object []parameters= {blogForm.getTag()};
				Tag tag1=(Tag)tagService.uniqueQuery("from Tag where name=?", parameters);
				Tag tag = new Tag();
				   Userstag userstag=new Userstag();
				System.out.println("tag1:"+tag1.getId());
				if(tag1==null)
				{
					
					tag.setName(blogForm.getTag());
					tagService.save(tag);
				 
				    userstag.setTag(tag);
				    userstag.setUser(user);
				    userstagService.save(userstag);
					
				    usertagId=userstag.getId();
				    System.out.println("blogForm.getTag():"+blogForm.getTag());
				}
				else
				{
					Object []parameters2= {user.getId(),tag1.getId()};
					userstag=(Userstag)userstagService.uniqueQuery("from Userstag where user.id=? and tag.id=?", parameters2);
					usertagId=userstag.getId();
				}
				System.out.println("usertagId:"+usertagId);
				System.out.println("blogsortId:"+blogsortId);
				

				
				Object[] parameters1 = { blogForm.getTitle(), blogForm.getContent(), new java.util.Date(),
						blogsortId,usertagId, blogId };
				int flag = blogService.executeUpdate(
						"update Blog set title=?,content=?,publishDate=?,blogsort.id=?,usertag.id=? where id=?", parameters1);
				if (flag == 1) {
					request.setAttribute("tipMessage", "修改成功!!");
					ActionForward actionForward=new ActionForward();
					actionForward.setPath("/login.do?flag=goLogin");
					return  actionForward;
					

				} else {
					request.setAttribute("tipMessage", "修改失败!!");
					ActionForward actionForward=new ActionForward();
					actionForward.setPath("/login.do?flag=goLogin");
					
					return  actionForward;
				}

			}

		}
		request.setAttribute("tipMessage", "您还未登录!!");
		return mapping.findForward("users");
	}

	public ActionForward articleDetail(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Users user = (Users) request.getSession().getAttribute("user");
		if (user != null) {
			String strBlogId = request.getParameter("blogId");
			int blogId = Integer.parseInt(strBlogId);
			Blog blog = (Blog) blogService.uniqueQuery("from Blog where id=" + blogId, null);
			List<Blogsort> blogsortList = blogsortService.executeQuery("from Blogsort where user.id=" + user.getId(),
					null);

			List<Blog> blogList0 = blogService.executeQuery("from Blog where blogsort.user.id=" + user.getId(), null);

			List<String> dateList = new ArrayList<String>();

			// 获取文章发表月份的数目
			for (Blog blog2 : blogList0) {
				// 定义要转换的日期格式
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月");

				// 将Date类型转换成String类型
				String format = sdf.format(blog2.getPublishDate());

				// 打印format数据类型
				/*
				 * System.out.println(format.getClass().getName());
				 * System.out.println(format);//打印当前时间
				 */

				if (dateList.size() == 0) {
					dateList.add(format);
				} else {
					int i = 0;
					for (String str : dateList) {
						if (str.equals(format)) {
							i++;
						}
					}
					if (i == 0) {

						dateList.add(format);
					}
				}
			}
			List<String> dateList3 = new ArrayList<String>();
			List<String> dateList2 = new ArrayList<String>();

			for (String str : dateList) {
				System.out.println("date:" + str);

				String str2 = str.substring(0, 4) + "-" + str.substring(5, 7);
				System.out.println("date2:" + str2);
				dateList2.add(str2);
			}
			for (String str : dateList2) {
				String month = str.substring(5, 7);

				// List<Blog> blogList2=blogService.executeQuery("from Blog where publishDate
				// between '"+str+"-00 00:00:00' and '2019-03-31 23:59:59'",null);
				// 模糊查询某年月的记录
				List<Blog> blogList2 = blogService.executeQuery("from Blog where publishDate like '%" + str + "%'",
						null);
				System.out.println(str + ":" + blogList2.size());
				dateList3.add(blogList2.size() + "");
			}

			request.setAttribute("blog", blog);

			request.setAttribute("blogsortList", blogsortList);

			request.setAttribute("blogList0", blogList0);
			request.setAttribute("dateList", dateList);
			request.setAttribute("dateList3", dateList3);
			return mapping.findForward("articleDetail");
		}

		request.setAttribute("tipMessage", "您的登录已经失效!!");
		return mapping.findForward("users");

	}

	public ActionForward articleCategory(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Users user = (Users) request.getSession().getAttribute("user");
		if (user != null) {
			String strBlogsortId = request.getParameter("blogsortId");

			int blogsortId = Integer.parseInt(strBlogsortId);
			System.out.println("blogsortId:" + blogsortId);
			int pageNow = 1;
			int pageSize = 3;
			String strPageNow = request.getParameter("pageNow");
			if (strPageNow != null) {
				pageNow = Integer.parseInt(strPageNow);
			}
			int pageCount = blogService.getPageCount("from Blog where blogsort.id=" + blogsortId, pageSize);
			List<Blog> blogList = blogService.executeQueryByPage("from Blog where blogsort.id=" + blogsortId, null,
					pageNow, pageSize);
			List<Blogsort> blogsortList = blogsortService.executeQuery("from Blogsort where user.id=" + user.getId(),
					null);

			List<Blog> blogList0 = blogService.executeQuery("from Blog where blogsort.user.id=" + user.getId(), null);

			List<String> dateList = new ArrayList<String>();

			// 获取文章发表月份的数目
			for (Blog blog : blogList0) {
				// 定义要转换的日期格式
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月");

				// 将Date类型转换成String类型
				String format = sdf.format(blog.getPublishDate());

				// 打印format数据类型
				/*
				 * System.out.println(format.getClass().getName());
				 * System.out.println(format);//打印当前时间
				 */

				if (dateList.size() == 0) {
					dateList.add(format);
				} else {
					int i = 0;
					for (String str : dateList) {
						if (str.equals(format)) {
							i++;
						}
					}
					if (i == 0) {

						dateList.add(format);
					}
				}
			}
			List<String> dateList3 = new ArrayList<String>();
			List<String> dateList2 = new ArrayList<String>();

			for (String str : dateList) {
				System.out.println("date:" + str);

				String str2 = str.substring(0, 4) + "-" + str.substring(5, 7);
				System.out.println("date2:" + str2);
				dateList2.add(str2);
			}
			for (String str : dateList2) {
				String month = str.substring(5, 7);

				// List<Blog> blogList2=blogService.executeQuery("from Blog where publishDate
				// between '"+str+"-00 00:00:00' and '2019-03-31 23:59:59'",null);
				// 模糊查询某年月的记录
				List<Blog> blogList2 = blogService.executeQuery(
						"from Blog where publishDate like '%" + str + "%' and blogsort.user.id=" + user.getId(), null);
				System.out.println(str + ":" + blogList2.size());
				dateList3.add(blogList2.size() + "");
			}

			request.setAttribute("pageNow", pageNow);
			request.setAttribute("pageCount", pageCount);
			request.setAttribute("blogsortId", blogsortId);

			request.setAttribute("blogList", blogList);
			request.setAttribute("blogsortList", blogsortList);
			request.setAttribute("blogList0", blogList0);
			request.setAttribute("dateList", dateList);
			request.setAttribute("dateList3", dateList3);

			return mapping.findForward("articleCategory");
		}
		request.setAttribute("tipMessage", "您的登录已经失效!!");
		return mapping.findForward("users");
	}

	public ActionForward articleTime(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Users user = (Users) request.getSession().getAttribute("user");
		if (user != null) {
			String strPublishDate = request.getParameter("publishDate");

			String strPublishDate2 = strPublishDate.substring(0, 4) + "-" + strPublishDate.substring(5, 7);
			System.out.println("strPublishDate2:" + strPublishDate2);
			int pageNow = 1;

			int pageSize = 3;
			String strPageNow = request.getParameter("pageNow");
			if (strPageNow != null) {
				pageNow = Integer.parseInt(strPageNow);
			}
			int pageCount = blogService.getPageCount("from Blog where  publishDate like '%" + strPublishDate2
					+ "%' and blogsort.user.id=" + user.getId(), pageSize);

			List<Blog> blogList = blogService.executeQueryByPage(
					"from Blog where publishDate like '%" + strPublishDate2 + "%' and blogsort.user.id=" + user.getId(),
					null, pageNow, pageSize);
			System.out.println("文章数目" + blogList.size());
			List<Blogsort> blogsortList = blogsortService.executeQuery("from Blogsort where user.id=" + user.getId(),
					null);

			List<Blog> blogList0 = blogService.executeQuery("from Blog where blogsort.user.id=" + user.getId(), null);

			List<String> dateList = new ArrayList<String>();

			// 获取文章发表月份的数目
			for (Blog blog2 : blogList0) {
				// 定义要转换的日期格式
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月");

				// 将Date类型转换成String类型
				String format = sdf.format(blog2.getPublishDate());

				// 打印format数据类型
				// System.out.println(format.getClass().getName());
				System.out.println(format);

				if (dateList.size() == 0) {
					dateList.add(format);
				} else {
					int i = 0;
					for (String str : dateList) {
						if (str.equals(format)) {
							i++;
						}
					}
					if (i == 0) {

						dateList.add(format);
					}
				}
			}
			List<String> dateList3 = new ArrayList<String>();
			List<String> dateList2 = new ArrayList<String>();

			for (String str : dateList) {
				System.out.println("date:" + str);

				String str2 = str.substring(0, 4) + "-" + str.substring(5, 7);
				System.out.println("date2:" + str2);
				dateList2.add(str2);
			}
			for (String str : dateList2) {
				String month = str.substring(5, 7);

				// List<Blog> blogList2=blogService.executeQuery("from Blog where publishDate
				// between '"+str+"-00 00:00:00' and '2019-03-31 23:59:59'",null);
				// 模糊查询某年月的记录
				List<Blog> blogList2 = blogService.executeQuery(
						"from Blog where publishDate like '%" + str + "%' and blogsort.user.id=" + user.getId(), null);
				System.out.println(str + ":" + blogList2.size());
				dateList3.add(blogList2.size() + "");
			}
			request.setAttribute("publishDate", strPublishDate);
			
			request.setAttribute("pageNow", pageNow);
			request.setAttribute("pageCount", pageCount);
			request.setAttribute("blogsortList", blogsortList);
			request.setAttribute("blogList", blogList);
			request.setAttribute("blogList0", blogList0);
			request.setAttribute("dateList", dateList);
			request.setAttribute("dateList3", dateList3);
			return mapping.findForward("articleTime");

		}
		request.setAttribute("tipMessage", "您的登录已经失效!!");
		return mapping.findForward("users");
	}

	public ActionForward deleteBlog(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Users user = (Users) request.getSession().getAttribute("user");
		if (user != null) {
			String blogId = request.getParameter("blogId");
			try {
				blogService.deleteById(Blog.class, Integer.parseInt(blogId));
				request.setAttribute("tipMessage", "删除成功!!");
				ActionForward actionForward=new ActionForward();
				actionForward.setPath("/login.do?flag=goLogin");
				
				
				return actionForward;
			} catch (Exception e) {
				e.printStackTrace();
				request.setAttribute("tipMessage", "删除失败!!");
				
				ActionForward actionForward=new ActionForward();
				actionForward.setPath("/login.do?flag=goLogin");
				
				
				return actionForward;
			}

		}

		request.setAttribute("tipMessage", "您的登录已经失效!!");
		return mapping.findForward("users");
	}
	public ActionForward searchArticle(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Users user = (Users) request.getSession().getAttribute("user");
		if (user != null) {
			String blogName=request.getParameter("blogName:");
			if(blogName==null)
			{
				BlogForm blogForm=(BlogForm)form;
				
				blogName=blogForm.getBlogName();
			}
			
			System.out.println("blogName:"+blogName);
			
			int pageNow = 1;
			int pageSize = 3;
			String strPageNow = request.getParameter("pageNow");
			if (strPageNow != null) {
				pageNow = Integer.parseInt(strPageNow);
			}
			int pageCount = blogService.getPageCount("from Blog where title like '%"+blogName+"%' and blogsort.user.id=" + user.getId(), pageSize);
			System.out.println("pageCount:"+pageCount);
			List<Blog> blogList = blogService.executeQueryByPage("from Blog where title like '%"+blogName+"%' and blogsort.user.id=" + user.getId(), null,
					pageNow, pageSize);
			System.out.println("blogList:"+blogList);
			
			List<Blogsort> blogsortList = blogsortService.executeQuery("from Blogsort where user.id=" + user.getId(),
					null);

			List<Blog> blogList0 = blogService.executeQuery("from Blog where blogsort.user.id=" + user.getId(), null);

			List<String> dateList = new ArrayList<String>();

			// 获取文章发表月份的数目
			for (Blog blog : blogList0) {
				// 定义要转换的日期格式
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月");

				// 将Date类型转换成String类型
				String format = sdf.format(blog.getPublishDate());

				// 打印format数据类型
				/*
				 * System.out.println(format.getClass().getName());
				 * System.out.println(format);//打印当前时间
				 */

				if (dateList.size() == 0) {
					dateList.add(format);
				} else {
					int i = 0;
					for (String str : dateList) {
						if (str.equals(format)) {
							i++;
						}
					}
					if (i == 0) {

						dateList.add(format);
					}
				}
			}
			List<String> dateList3 = new ArrayList<String>();
			List<String> dateList2 = new ArrayList<String>();

			for (String str : dateList) {
				System.out.println("date:" + str);

				String str2 = str.substring(0, 4) + "-" + str.substring(5, 7);
				System.out.println("date2:" + str2);
				dateList2.add(str2);
			}
			for (String str : dateList2) {
				String month = str.substring(5, 7);

				// List<Blog> blogList2=blogService.executeQuery("from Blog where publishDate
				// between '"+str+"-00 00:00:00' and '2019-03-31 23:59:59'",null);
				// 模糊查询某年月的记录
				List<Blog> blogList2 = blogService.executeQuery(
						"from Blog where publishDate like '%" + str + "%' and blogsort.user.id=" + user.getId(), null);
				System.out.println(str + ":" + blogList2.size());
				dateList3.add(blogList2.size() + "");
			}

			request.setAttribute("pageNow", pageNow);
			request.setAttribute("pageCount", pageCount);
			request.setAttribute("blogName", blogName);

			request.setAttribute("blogList", blogList);
			request.setAttribute("blogsortList", blogsortList);
			request.setAttribute("blogList0", blogList0);
			request.setAttribute("dateList", dateList);
			request.setAttribute("dateList3", dateList3);
			
			
			return mapping.findForward("articleSearch");
		}

		request.setAttribute("tipMessage", "您还未登录,请先去登录吧");
		return mapping.findForward("users");

	}
}

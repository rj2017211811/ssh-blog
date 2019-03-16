package per.czt.blog.web.actions;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import per.czt.blog.domain.Users;
import per.czt.blog.service.interfaces.UsersServiceInter;
import per.czt.blog.web.forms.UsersForm;

public class RegisterAction extends DispatchAction {
	private UsersServiceInter usersService;
	
  
    public UsersServiceInter getUsersService() {
		return usersService;
	}


	public void setUsersService(UsersServiceInter usersService) {
		this.usersService = usersService;
	}


	public ActionForward register(ActionMapping mapping, ActionForm form, HttpServletRequest request,
    		HttpServletResponse response) throws Exception {
    	UsersForm usersForm=(UsersForm)form;
    	
    	
    	Users user=new Users();
    	user.setUsername(usersForm.getUsername());
    	user.setPassword(usersForm.getPassword());
    	user.setEmail(usersForm.getEmail());
    	user.setRegisterDate(new java.util.Date());
    	try
    	{
    		usersService.save(user);
    		System.out.println("×¢²á³É¹¦!");
    		return null;
    	}
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	}
    	
    	return null;
    }
}

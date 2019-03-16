package per.czt.blog.web.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;
import org.apache.struts.upload.FormFile;

import per.czt.blog.domain.Users;
import per.czt.blog.service.interfaces.UsersServiceInter;
import per.czt.blog.util.RenameImagesTool;
import per.czt.blog.util.UploadPhotoTool;
import per.czt.blog.web.forms.UsersForm;

public class UsersAction extends DispatchAction {
	private UsersServiceInter usersService;

	public UsersServiceInter getUsersService() {
		return usersService;
	}

	public void setUsersService(UsersServiceInter usersService) {
		this.usersService = usersService;
	}

	public ActionForward goUsersDetailInfo(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Users user = (Users) request.getSession().getAttribute("user");
		if (user != null) {
			return mapping.findForward("usersDetailInfo");
		}
		request.setAttribute("tipMessage", "����δ��¼,����ȥ��¼��");
		return mapping.findForward("users");

	}
	public ActionForward goTimeline(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Users user = (Users) request.getSession().getAttribute("user");
		if (user != null) {
			return mapping.findForward("timeline");
		}
		request.setAttribute("tipMessage", "����δ��¼,����ȥ��¼��");
		return mapping.findForward("users");

	}

	public ActionForward updateSelfInfo(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		Users user = (Users) request.getSession().getAttribute("user");
		if (user != null) {
			UsersForm usersForm = (UsersForm) form;

			Object[] parameters = { usersForm.getUsername(), usersForm.getPassword(), usersForm.getTruename(),
					usersForm.getEmail(), usersForm.getNickname(), usersForm.getSex(), usersForm.getAssign(),
					usersForm.getId() };
			int flag = usersService.executeUpdate(
					"update Users set username=?,password=?,truename=?,email=?,nickname=?,sex=?,assign=? where id=?",
					parameters);
			if (flag == 1) {

				// ����session
				user = (Users) usersService.uniqueQuery("from Users where id=" + usersForm.getId(), null);
				request.getSession().setAttribute("user", user);
				System.out.println("�޸ĳɹ�!!");
				request.setAttribute("tipMessage", "�޸ĳɹ�!!");

				return mapping.findForward("usersDetailInfo");

			}
			System.out.println("�޸�ʧ��!!");
			request.setAttribute("tipMessage", "�޸�ʧ��!!");

			return mapping.findForward("usersDetailInfo");

		}
		request.setAttribute("tipMessage", "����δ��¼,����ȥ��¼��");
		return mapping.findForward("users");

	}

	public ActionForward uploadPhoto(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		Users user = (Users) request.getSession().getAttribute("user");
		if (user != null) {
			UsersForm usersForm = (UsersForm) form;
			FormFile formfile = usersForm.getPhoto();

			String name = formfile.getFileName();
			System.out.print("name:" + name);
			String newName = RenameImagesTool.getNewName(name);
			String allPath = "C:\\Users\\���ſƼ�\\workspace\\.metadata\\blog\\WebContent\\images\\userhead" + "\\"
					+ newName;
			try {

				String[] parameters = { newName };
				UploadPhotoTool.uploadFile(formfile, allPath);
				int flag = usersService.executeUpdate("update Users set icon=? where id=" + user.getId(), parameters);
				if (flag == 1) {
					request.setAttribute("tipMessage", "�޸ĳɹ�!!");
					// ����session
					user = (Users) usersService.uniqueQuery("from Users where id=" + usersForm.getId(), null);
					request.getSession().setAttribute("user", user);
					return mapping.findForward("usersDetailInfo");
				}

				request.setAttribute("tipMessage", "�޸�ʧ��!!");
				return mapping.findForward("usersDetailInfo");

			} catch (Exception e) {
				request.setAttribute("tipMessage", "�޸�ʧ��!!");

				e.printStackTrace();
				return mapping.findForward("usersDetailInfo");
			}

		}

		request.setAttribute("tipMessage", "����δ��¼,����ȥ��¼��");
		return mapping.findForward("users");
	}

}

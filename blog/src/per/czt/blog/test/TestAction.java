package per.czt.blog.test;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class TestAction extends Action {
	private TestServiceInter testService;
	
	public TestServiceInter getTestService() {
		return testService;
	}

	public void setTestService(TestServiceInter testService) {
		this.testService = testService;
	}

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		TestForm testForm=(TestForm)form;
		String name=testForm.getName();
		
		Test test=new Test();
		test.setName(name);
		try
		{
			testService.save(test);
			System.out.println("测试成功!");
		}
		catch(Exception e)
		{
			System.out.println("测试成功!");
			e.printStackTrace();
		}
		return super.execute(mapping, form, request, response);
	}

}

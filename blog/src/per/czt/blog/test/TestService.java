package per.czt.blog.test;

import org.springframework.transaction.annotation.Transactional;

import per.czt.blog.basic.BasicService;
@Transactional
public class TestService extends BasicService implements TestServiceInter{

}

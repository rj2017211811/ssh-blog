package per.czt.blog.service.imp;

import org.springframework.transaction.annotation.Transactional;

import per.czt.blog.basic.BasicService;
import per.czt.blog.service.interfaces.BlogServiceInter;
import per.czt.blog.service.interfaces.BlogagreeServiceInter;
@Transactional
public class BlogService extends BasicService implements  BlogServiceInter {

}

package per.czt.blog.service.imp;

import org.springframework.transaction.annotation.Transactional;

import per.czt.blog.basic.BasicService;
import per.czt.blog.service.interfaces.NoteServiceInter;
@Transactional
public class NoteService extends BasicService implements NoteServiceInter {

}

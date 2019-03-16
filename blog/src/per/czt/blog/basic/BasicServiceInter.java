package per.czt.blog.basic;

import java.util.List;

public interface BasicServiceInter {
	// ͳһ�Ĳ�ѯ����
	public List executeQuery(String hql, Object[] parameters);

	// ͳһ���޸ķ���
	public int executeUpdate(String hql, Object[] parameters);

	public Object uniqueQuery(String hql, Object[] parameters);

	// ͨ��id��ȡ����
	public Object getObjectById(Class clazz, java.io.Serializable id);

	// ͳһ����ӷ���
	public void save(Object obj);

	// ��ҳ��ѯ
	public List executeQueryByPage(String hql, Object[] parameters, int pageNow, int pageSize);

	public int getPageCount(String hql, int pageSize);

	public int getRowCount(String hql, int pageSize);

	public boolean deleteById(Class clazz, java.io.Serializable id);

	public Object getObjectByName(Class clazz, String name);

}

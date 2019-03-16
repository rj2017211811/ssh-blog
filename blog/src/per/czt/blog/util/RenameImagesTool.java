package per.czt.blog.util;

import java.util.UUID;

public class RenameImagesTool {
	
	public  static String getNewName(String name)
	{
		String uuid=UUID.randomUUID().toString();
		//��ȡ.��λ��
		int beginIndex=name.lastIndexOf(".");
		//���ļ���׺��
		String postfix=name.substring(beginIndex, name.length());
		
		return uuid+postfix;
		
	}
    public static void main(String []args)
    {
       System.out.println(getNewName("11.jpg")) ;
    }
}

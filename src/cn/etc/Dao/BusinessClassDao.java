package cn.etc.Dao;

import java.util.List;

import cn.etc.Model.BusinessClass;

public interface BusinessClassDao {
	//����ҳ�������ʾ���з���
	public List<BusinessClass> searchBusinessClassAll();
	//��ɾ�Ĳ����Ա����
	public int addBusinessClass(BusinessClass businessClass);
	public int updateBusinessClass(BusinessClass businessClass);
	public int deletetBusinessClass(BusinessClass businessClass);
}

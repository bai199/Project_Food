package cn.etc.Dao;

import java.util.List;

import cn.etc.Model.CateClass;

public interface CateClassDao {
	public CateClass SearchByName(CateClass cateclass); //����Ա��ѯ
	public int Add(CateClass cateclass);	//����Ա����
	public int Update(CateClass cateclass);	//����Ա�޸�
	public int Delete(int id);	//����Աɾ��
	public List<CateClass> SearchAll();	//����Ա������
}

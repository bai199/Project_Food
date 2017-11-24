package cn.etc.Dao;

import java.util.List;

import cn.etc.Model.Cate;

public interface CateDao {
	public Cate SearchByName(Cate cate); //����Ա��ѯ
	public int Add(Cate cate);	//����Ա����
	public int Update(Cate cate);	//����Ա�޸�
	public int Delete(Cate cate);	//����Աɾ��
	public List<Cate> SearchAll();	//����Ա������
	public Cate SearchByIdcate(Cate cate); //����ID��ѯ
	public List<Cate> SearchByTypecate(Cate cate,int s,int e); //����ϲ�ñ��ѯ��Ӧ����ʳ
	public Cate getCount(Cate cate); //��ҳ����
	public List<Cate> SearchByHot(Cate cate); //���ർ��
}

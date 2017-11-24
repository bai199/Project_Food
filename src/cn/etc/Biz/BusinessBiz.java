package cn.etc.Biz;

import java.util.List;

import cn.etc.Model.Business;
import cn.etc.Model.BusinessClass;

public interface BusinessBiz {
	//ȫ���̼�--���ݵ���λ���ɽ���Զ
		public List<Business> searchBusinessAll();
		//������ѡ�������ʾ�̼�
		public List<Business> searchBusinessByType(BusinessClass businessClass);
		//�����̼�
		public Business searchBusinessByName(Business business);
		public Business searchBusinessById(Business business);
		//�̼Ҽ���ע��
		public int addBusiness(Business business);
		//����Ա����
		public int deleteBusiness(Business business);
		//�̼��޸���Ϣ�����¹����
		public int updateBusiness(Business business);
		public int updateBusinessCount(Business business);
		
		public List<Business> searchBusinessBySearch(Business business);
}

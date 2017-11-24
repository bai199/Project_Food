package cn.etc.Biz;

import java.util.List;

import cn.etc.Model.Health;
import cn.etc.Model.HealthClass;

public interface HealthClassBiz {
	public List<HealthClass> searchAll();
	public List<HealthClass> searchAll2(int a,int b);
	public List<HealthClass> searchByHealthClass123Id(HealthClass healClass);
	public Health searchById(int id);
	public int delete (HealthClass healthclass);
	public int update (HealthClass healthclass);
	public int insert (HealthClass healthclass);
	
}

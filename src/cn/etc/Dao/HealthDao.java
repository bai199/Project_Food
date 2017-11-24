package cn.etc.Dao;

import java.util.List;
import java.util.Map;

import cn.etc.Model.Health;
import cn.etc.Model.HealthClass;

public interface HealthDao {
	public List<Health> searchAll();
	public Health searchByID(int id);
	public List<Health> searchAll2(int a,int b);
	public Integer getCount(int a);
	public List<Health> searchByHealthClass123Id(Map<String, Object> map);
	public List<Health> searchAllMr();
	public List<Health> LikeSearch(String string);
	public int delete (Health health);
	public int update (Health health);
	public int insert (Health health);
}

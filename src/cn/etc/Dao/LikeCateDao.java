package cn.etc.Dao;

import java.util.List;

import cn.etc.Model.LikeCate;

public interface LikeCateDao {
	public LikeCate searchByIdLike(LikeCate likecate);
	public int addLike(LikeCate likecate);
	public int updateLike(LikeCate likecate);
	public int deleteLike(LikeCate likecate);
	public List<LikeCate> searchAllLike();
	public List<LikeCate> searchByUserIdlikecate(LikeCate likecate);//查询用户ID种类
}

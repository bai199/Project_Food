package cn.etc.Biz;

import java.util.List;

import cn.etc.Model.LikeCate;

public interface LikeCateBiz {
	public LikeCate searchByIdLike(LikeCate likecate);
	public int addLike(LikeCate likecate);
	public int updateLike(LikeCate likecate);
	public int deleteLike(LikeCate likecate);
	public List<LikeCate> searchAllLike();
	public List<LikeCate> searchByUserIdlikecate(LikeCate likecate);//≤È—Ø÷÷¿‡
}

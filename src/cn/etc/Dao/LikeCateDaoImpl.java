package cn.etc.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.etc.Model.LikeCate;
@Repository
public class LikeCateDaoImpl implements LikeCateDao {
	
	@Autowired
	private LikeCateDao lc;
	
	@Override
	public LikeCate searchByIdLike(LikeCate likecate) {
		return lc.searchByIdLike(likecate);
	}

	@Override
	public int addLike(LikeCate likecate) {
		return lc.addLike(likecate);
	}

	@Override
	public int updateLike(LikeCate likecate) {
		return lc.updateLike(likecate);
	}

	@Override
	public int deleteLike(LikeCate likecate) {
		return lc.deleteLike(likecate);
	}

	@Override
	public List<LikeCate> searchAllLike() {
		return lc.searchAllLike();
	}

	@Override
	public List<LikeCate> searchByUserIdlikecate(LikeCate likecate) {
		return lc.searchByUserIdlikecate(likecate);
	}
}

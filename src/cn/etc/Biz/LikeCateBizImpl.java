package cn.etc.Biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.etc.Dao.LikeCateDao;
import cn.etc.Model.LikeCate;
@Service
public class LikeCateBizImpl implements LikeCateBiz {
	@Resource(name="likeCateDaoImpl")
	private LikeCateDao lcd;
	
	@Override
	public LikeCate searchByIdLike(LikeCate likecate) {
		return lcd.searchByIdLike(likecate);
	}

	@Override
	public int addLike(LikeCate likecate) {
		return lcd.addLike(likecate);
	}

	@Override
	public int updateLike(LikeCate likecate) {
		return lcd.updateLike(likecate);
	}

	@Override
	public int deleteLike(LikeCate likecate) {
		return lcd.deleteLike(likecate);
	}

	@Override
	public List<LikeCate> searchAllLike() {
		return lcd.searchAllLike();
	}

	@Override
	public List<LikeCate> searchByUserIdlikecate(LikeCate likecate) {
		return lcd.searchByUserIdlikecate(likecate);
	}

}

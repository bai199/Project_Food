package cn.etc.Biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.etc.Dao.TalkClassDaoImpl;
import cn.etc.Model.TalkClass;
@Service
public class TalkClassBizImpl implements TalkClassBiz {
	@Resource(name="talkClassDaoImpl")
	private TalkClassDaoImpl td;
	@Override
	public int add(TalkClass class1) {
		return td.add(class1);
	}

	@Override
	public int delete(TalkClass class1) {
		return td.delete(class1);
	}

	@Override
	public int update(TalkClass class1) {
		return td.update(class1);
	}

	@Override
	public List<TalkClass> searchAll() {
		return td.searchAll();
	}

}

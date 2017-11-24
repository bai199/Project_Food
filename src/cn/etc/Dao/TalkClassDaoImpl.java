package cn.etc.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.etc.Model.TalkClass;
@Repository
public class TalkClassDaoImpl implements TalkClassDao {
	@Autowired
	private TalkClassDao tc;
	@Override
	public int add(TalkClass class1) {
		return tc.add(class1);
	}

	@Override
	public int delete(TalkClass class1) {
		return tc.delete(class1);
	}

	@Override
	public int update(TalkClass class1) {
		return tc.update(class1);
	}

	@Override
	public List<TalkClass> searchAll() {
		return tc.searchAll();
	}

}

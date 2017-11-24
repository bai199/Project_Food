package cn.etc.Biz;

import java.util.List;

import cn.etc.Model.TalkClass;

public interface TalkClassBiz {
	public int add(TalkClass class1);
	public int delete(TalkClass class1);
	public int update(TalkClass class1);
	public List<TalkClass>  searchAll();
}

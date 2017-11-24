package cn.etc.Dao;

import java.util.List;
import cn.etc.Model.Reply;

public interface ReplyDao {
	public int add(Reply reply);
	public int delete(Reply reply);
	public int update(Reply reply);
	
	public List<Reply> searchAllReply(int s,int e);//��ѯ����reply����ҳ
	public Reply count(int id);//note����
}

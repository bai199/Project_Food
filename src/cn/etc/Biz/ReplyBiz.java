package cn.etc.Biz;

import java.util.List;

import cn.etc.Model.Reply;

public interface ReplyBiz {
	public int add(Reply reply);
	public int delete(Reply reply);
	public int update(Reply reply);
	public List<Reply> searchAllReply(int s,int e);//查询所有reply并分页
	public Reply count(int id);//reply计数
}

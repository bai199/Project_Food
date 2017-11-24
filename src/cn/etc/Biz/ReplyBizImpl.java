package cn.etc.Biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.etc.Dao.ReplyDaoImpl;
import cn.etc.Model.Reply;
@Service
public class ReplyBizImpl implements ReplyBiz {
	@Resource(name="replyDaoImpl")
	private ReplyDaoImpl ri;
	@Override
	public int add(Reply reply) {
		return ri.add(reply);
	}

	@Override
	public int delete(Reply reply) {
		return ri.delete(reply);
	}

	@Override
	public int update(Reply reply) {
		return ri.update(reply);
	}



	@Override
	public List<Reply> searchAllReply(int s, int e) {
		return ri.searchAllReply(s, e);
	}

	@Override
	public Reply count(int id) {
		return ri.count(id);
	}


}

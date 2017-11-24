package cn.etc.Dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.etc.Model.Note;
import cn.etc.Model.Reply;
@Repository
public class ReplyDaoImpl  extends SqlSessionDaoSupport implements ReplyDao {
	@Autowired
	private ReplyDao rd;
	@Resource
	public void SqlSessionFactory(SqlSessionFactory sqlSessionFactory){
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	@Override
	public int add(Reply reply) {
		return rd.add(reply);
	}

	@Override
	public int delete(Reply reply) {
		return rd.delete(reply);
	}

	@Override
	public int update(Reply reply) {
		return rd.update(reply);
	}
	

	@Override
	public List<Reply> searchAllReply(int s, int e) {
		RowBounds rb=new RowBounds(s,e);
		List<Reply> list=this.getSqlSession().selectList("cn.etc.Dao.ReplyDao.searchAllReply",null,rb);
		
		return list;
	}

	@Override
	public Reply count(int id) {
		return rd.count(id);
	}

}

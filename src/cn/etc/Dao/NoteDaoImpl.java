package cn.etc.Dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.etc.Model.Note;
@Repository
public class NoteDaoImpl extends SqlSessionDaoSupport implements NoteDao {
	@Autowired
	private NoteDao nd;
	@Resource
	public void SqlSessionFactory(SqlSessionFactory sqlSessionFactory){
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	@Override
	public int addNote(Note note) {
		return nd.addNote(note);
	}

	@Override
	public int deleteNote(Note note) {
		return nd.deleteNote(note);
	}

	public int updateNote(Note note) {
		return nd.updateNote(note);
	}

	@Override
	public Note searchBody(Note id) {
		return nd.searchBody(id);
	}

	@Override
	public List<Note> searchAllById(Note id,int s,int e) {
		RowBounds rb=new RowBounds(s,e);
		List<Note> list=this.getSqlSession().selectList("cn.etc.Dao.NoteDao.searchAllById", id, rb);
		return list;
	}

	@Override
	public Note count() {
		return nd.count();
	}

}

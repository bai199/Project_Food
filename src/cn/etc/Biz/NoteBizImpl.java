package cn.etc.Biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.etc.Dao.NoteDaoImpl;
import cn.etc.Model.Note;
@Service
public class NoteBizImpl implements NoteBiz {
	@Resource(name="noteDaoImpl")
	private NoteDaoImpl ni;
	@Override
	public int addNote(Note note) {
		return ni.addNote(note);
	}

	@Override
	public int deleteNote(Note note) {
		return ni.deleteNote(note);
	}

	@Override
	public int updateNote(Note note) {
		return ni.updateNote(note);
	}

	@Override
	public Note searchBody(Note id) {
		return ni.searchBody(id);
	}

	public List<Note> searchAllById(Note id,int s,int e) {
		return ni.searchAllById(id, s, e);
	}

	@Override
	public Note count() {
		return ni.count();
	}
}

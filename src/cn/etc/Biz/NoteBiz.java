package cn.etc.Biz;

import java.util.List;

import cn.etc.Model.Note;

public interface NoteBiz {
	
	public int addNote(Note note);
	public int deleteNote(Note note);
	public int updateNote(Note note);
	public Note  searchBody(Note  id);
	public List<Note> searchAllById(Note id,int s,int e);
	public Note count();
}

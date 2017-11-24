package cn.etc.Dao;

import java.util.List;

import cn.etc.Model.Note;

public interface NoteDao {
	public int addNote(Note note);
	public int deleteNote(Note note);
	public int updateNote(Note note);
	public Note searchBody(Note  id);//根据note_id来查询note_body，并且，利用其传值
	public List<Note> searchAllById(Note id,int s,int e);//根据talkclass_id来查询note，并且利用其传值
	public Note count();//note计数
}

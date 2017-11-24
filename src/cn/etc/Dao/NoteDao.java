package cn.etc.Dao;

import java.util.List;

import cn.etc.Model.Note;

public interface NoteDao {
	public int addNote(Note note);
	public int deleteNote(Note note);
	public int updateNote(Note note);
	public Note searchBody(Note  id);//����note_id����ѯnote_body�����ң������䴫ֵ
	public List<Note> searchAllById(Note id,int s,int e);//����talkclass_id����ѯnote�����������䴫ֵ
	public Note count();//note����
}

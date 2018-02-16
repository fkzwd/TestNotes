/*package com.vk.fkzwd.datacontroller;

import java.util.*;
import com.vk.fkzwd.model.Note;

public class NotesDataControllerTest extends NotesDataController {
	private List<Note> allNotes = new ArrayList<Note>();
	
	public NotesDataControllerTest() {
		
	}
	//******************************************
	//-----------INITIALIZING NOTES DATA--------
	/*
	{
		for (int i = 1; i<46; i++) {
			Note note = new Note();
			note.setId(Long.valueOf(i));
			note.setText("Note text "+i);
			note.setCreateDate(new Date());
			note.setIsCompleted(Boolean.FALSE);
			allNotes.add(note);
		}
	}
	
	
	@Override
	public List<Note> getNotes(Integer page) {
		List<Note> result = new ArrayList<Note>();
		List<Note> allData = getAllNotes();
		int end = page*10;
		for (int i = end-10; i<end; i++) {
			if (i>=allData.size()) break;
			result.add(allData.get(i));
		}
		return result;
	}
	
	@Override
	public Note getNote(Integer id) {
		return null;
	}
	
	
	@Override
	public boolean checkPage(Integer page) {
		if ((page*10-10)>=getAllNotes().size()) return false;
		return true;
	}
	
	@Override
	public void deleteNote(int id) {
		Note remove = null;
		for (Note note : getAllNotes()) {
			if (note.getId().equals(Long.valueOf(id))) remove=note;
		}
		if (remove!=null)
		getAllNotes().remove(remove);
	}
	
	@Override
	public void addNote(Note note) {
		if (note==null) note = new Note();
		if (note.getId()==null) note.setId(Long.valueOf(getAllNotes().size()+1));
		if (note.getCreateDate()==null) note.setCreateDate(new Date());
		if (note.getIsCompleted()==null) note.setIsCompleted(Boolean.FALSE);
		if (note.getText()==null) note.setText("Default text");
		getAllNotes().add(note);
	}
	
	@Override
	public void editNote(Note note) {
		
	}
	
	
	private List<Note> getAllNotes() {
		return allNotes;
	}
}*/
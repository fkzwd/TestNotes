package com.vk.fkzwd.datacontroller;

import java.util.*;
import com.vk.fkzwd.model.Note;

public abstract class NotesDataController {
	
	abstract public List<Note> getNotes(Integer page);
	
	abstract public int checkPage();
	
	abstract public void deleteNote(int id);
	
	abstract public void editNote(Note note, Integer id);
	
	abstract public void addNote(Note note);
	
	abstract public Note getNote(Integer id);
	
	abstract public void setFilter(int filter);
	
	abstract public int getFilter();
	
	abstract public void setDateFilter(Date date);
	
	abstract public boolean isDateFilter();
	
	abstract public void resetDateFilter();
	
	abstract public String getDateString();
}
package com.vk.fkzwd.datacontroller;

import java.util.*;
import com.vk.fkzwd.model.Note;
import com.vk.fkzwd.HibernateUtil;


import org.hibernate.Session;
import org.hibernate.SessionFactory;

import javax.persistence.criteria.*;
import org.hibernate.*;
import org.hibernate.query.Query;
import java.text.SimpleDateFormat;

public class NotesDataControllerTrue extends NotesDataController {
	private List<Note> allNotes;
	private int filter = 0;
	private boolean isDateFilter = false;
	private Date dateFilter = null;
	
	public NotesDataControllerTrue() {
		
	}
	
	@Override
	public void setFilter(int filter) {
		this.filter = filter;
	}
	
	@Override
	public int getFilter() {
		return filter;
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
		Note result = null;
		for (Note note : getAllNotes()) {
			if (note.getId().equals(Long.valueOf(id))) result = note;
		}
		return result;
	}
	
	@Override
	public int checkPage() {
		int size = getAllNotes().size();
		int pages = size/10;
		int ost = size%10;
		if (ost>0) pages++;
		return pages;
	}
	
	@Override
	public void deleteNote(int id) {
		Note note = null;
		for (Note nextnote : getAllNotes()) {
			if (nextnote.getId().equals(Long.valueOf(id))) note=nextnote;
		}
		if (note!=null)
		{
			Session session = HibernateUtil.getSessionFactory().openSession();  
			session.beginTransaction();  
	  
			session.delete(note);  
	  
			session.getTransaction().commit();  
			session.close();
		}
	}
	
	@Override
	public void addNote(Note note) {
		Session session = HibernateUtil.getSessionFactory().openSession();  
		session.beginTransaction();  
  
		session.saveOrUpdate(note);  
  
		session.getTransaction().commit();  
		session.close();
	}
	
	@Override
	public void editNote(Note note, Integer id) {
		Session session = HibernateUtil.getSessionFactory().openSession();  
		session.beginTransaction();  
		
		Note update = session.load(Note.class, Long.valueOf(id));  
		update.setText(note.getText());
		update.setIsCompleted(note.getIsCompleted());
		
		session.getTransaction().commit();  
		session.close();
	}
	
	@Override
	public void setDateFilter(Date date) {
		isDateFilter = true;
		dateFilter = date;
	}
	
	@Override
	public void resetDateFilter() {
		isDateFilter = false;
	}
	
	@Override
	public boolean isDateFilter() {
		return isDateFilter;
	}
	
	@Override
	public String getDateString() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		if (!isDateFilter) return "NO DATE FILTER";
		else {
			try {
				return sdf.format(dateFilter);
			}
			catch (NullPointerException e) {
				return "NO DATE FILTER";
			}
		}
	}
	
	private List<Note> getAllNotes() {
		Session session = HibernateUtil.getSessionFactory().openSession();  
		session.beginTransaction();  
		
		CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Note> query = builder.createQuery(Note.class);
        Root<Note> root = query.from(Note.class);
        query.select(root);
        Query<Note> q=session.createQuery(query);
        allNotes = q.getResultList();
		
		session.getTransaction().commit();
		session.close();
		allNotes = filterNotes(allNotes);
		if (isDateFilter) allNotes = filterToDate(allNotes);
		if (allNotes==null) allNotes = new ArrayList<Note>();
		return allNotes;
	}
	
	private List<Note> filterToDate(List<Note> list) {
		List<Note> result = new ArrayList<Note>();
		for (Note note : list) {
			// if (note.getCreateDate() > ? && note.getCreateDate() < ?) result.add(note);
			Date noteDate = note.getCreateDate();
			if (noteDate.getTime()-dateFilter.getTime()<86400000 & noteDate.getTime()-dateFilter.getTime()>=0) result.add(note);
		}
		return result;
	}
	
	private List<Note> filterNotes(List<Note> list) {
		if (filter==1) return filterCompletedNotes(list);
		else if(filter==-1) return filterUncompletedNotes(list);
		else return list;
	}
	
	private List<Note> filterCompletedNotes(List<Note> list) {
		List<Note> result = new ArrayList<Note>();
		for (Note note : list) {
			if (note.getIsCompleted()) result.add(note);
		}
		return result;
	}
	
	private List<Note> filterUncompletedNotes(List<Note> list) {
		List<Note> result = new ArrayList<Note>();
		for (Note note : list) {
			if (!note.getIsCompleted()) result.add(note);
		}
		return result;
	}
	
}
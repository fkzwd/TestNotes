package com.vk.fkzwd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.vk.fkzwd.datacontroller.NotesDataController;
//import com.vk.fkzwd.datacontroller.NotesDataControllerTest;
import com.vk.fkzwd.datacontroller.NotesDataControllerTrue;
import com.vk.fkzwd.model.Note;
import java.util.*;
import java.text.SimpleDateFormat;
import java.text.ParseException;

@Controller
public class NotesController {
	private NotesDataController notesData = new NotesDataControllerTrue();
	
	@RequestMapping(value = "notes")
	public String notes(Model model, @RequestParam(value = "page", defaultValue = "1") Integer page) {
		page = checkPage(page);
		model.addAttribute("page",page);
		List<Note> list = notesData.getNotes(page);
		model.addAttribute("notes",list);
		String datestring = notesData.getDateString();
		model.addAttribute("datestring",datestring);
		int filter = notesData.getFilter();
		if (filter==0) {
			model.addAttribute("all","1");
		}
		else if (filter==1) {
			model.addAttribute("completed","1");
		}
		else if(filter==-1) {
			model.addAttribute("uncompleted","1");
		}
		return "notes";
	}
	
	@RequestMapping(value="delete")
	public String delete(@RequestParam(value = "id", required = true) Integer id, @RequestParam(value = "page", required = true) Integer page) {
		notesData.deleteNote(id);
		return "redirect:/notes?page="+page;
	}
	
	@RequestMapping(value="edit")
	public ModelAndView edit(@RequestParam(value = "id", required = true) Integer id,
								@RequestParam(value = "page", required = true) Integer page) {
		Note note = notesData.getNote(id);
		if (note==null) return newnote(page);
		ModelAndView mav = new ModelAndView("editnote", "command", note);
		mav.addObject("id",id);
		mav.addObject("page", page);
		return mav;
	}
	
	@RequestMapping(value = "editnote", method = RequestMethod.POST)
	public String editnote(@ModelAttribute("mvc-dispatcher") Note note, @RequestParam(value = "id", required = true) Integer id,
							@RequestParam(value = "page", required = true) Integer page) {
		notesData.editNote(note, id);
		return "redirect:/notes?page="+page;
	}
	
	@RequestMapping(value="addnote")
	public ModelAndView newnote(@RequestParam(value = "page", required = true) Integer page) {
		return new ModelAndView("addnote", "command", new Note()).addObject("page", page);
	}
	
	@RequestMapping(value = "newnote", method = RequestMethod.POST)
	public String addnote(@ModelAttribute("mvc-dispatcher") Note note, Model model, @RequestParam(value = "page", required = true) Integer page) {
		notesData.addNote(note);
		return "redirect:/notes?page="+page;
	}
	
	@RequestMapping(value = "all")
	public String showsAll() {
		notesData.setFilter(0);
		return "redirect:/notes";
	}
	
	@RequestMapping(value = "uncompleted")
	public String showsUncompleted() {
		notesData.setFilter(-1);
		return "redirect:/notes";
	}
	
	@RequestMapping(value = "completed")
	public String showsCompleted() {
		notesData.setFilter(1);
		return "redirect:/notes";
	}
	
	@RequestMapping(value = "ondatefilter", method = RequestMethod.GET)
	public String datefilter(@RequestParam(value = "String", required = true) String dateString) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		if (dateString==null) dateString="null";
		try {
			Date date = sdf.parse(dateString);
			notesData.setDateFilter(date);
		}
		catch (ParseException e) {
			return "redirect:/dateerror?date="+dateString;
		}
		return "redirect:/notes";
	}
	
	@RequestMapping(value = "dateerror")
	public String dateerror(@RequestParam(value = "date", required = true) String date, Model model) {
		model.addAttribute("date",date);
		return "dateerror";
	}
	
	@RequestMapping(value = "offdatefilter", method = RequestMethod.POST)
	public String datefilter() {
		notesData.resetDateFilter();
		return "redirect:/notes";
	}
	
	
	private Integer checkPage(Integer page) {
		if (page==null) return 1;
		if (page<1) return 1;
		int maxPages = notesData.checkPage();
		if (page>maxPages) return maxPages;
		else return page;
	}
}
package com.vk.fkzwd.model;

import java.util.*;
import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.GenerationType;
import javax.persistence.TemporalType;
import javax.persistence.Temporal;
import javax.persistence.Table;

@Entity
@Table(name = "notes")
public class Note implements Serializable {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private Long id;
	
	@Column(name="text")
	private String text;
	
	@Column(name="createDate")
	@Temporal(TemporalType.TIMESTAMP)
	private Date createDate;
	
	@Column(name="isCompleted")
	private Boolean isCompleted = Boolean.FALSE;
	
	public void setId(Long id) {
		this.id = id;
	}
	
	public void setText(String text) {
		this.text = text;
	}
	
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	
	public void setIsCompleted(Boolean isCompleted) {
		this.isCompleted = isCompleted;
	}
	
	public Long getId() {
		return id;
	}
	
	public String getText() {
		return text;
	}
	
	public Date getCreateDate() {
		return createDate;
	}
	
	public Boolean getIsCompleted() {
		return isCompleted;
	}
	
	public boolean equals(Object o) {
		if(o == null)
		{
			return false;
		}
		if (o == this)
		{
			return true;
		}
		if (getClass() != o.getClass())
		{
			return false;
		}
		 
		Note e = (Note) o;
		return (this.getId() == e.getId());
	}
	
	@Override
	public int hashCode()
	{
		final int PRIME = 31;
		int result = 1;
		result = PRIME * result + getId().intValue();
		return result;
	}
}
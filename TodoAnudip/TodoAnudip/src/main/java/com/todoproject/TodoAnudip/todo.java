package com.todoproject.TodoAnudip;


import java.sql.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class todo {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
  private String description;
  private Date target_date;
  
  
public todo() {
	super();
}
public todo(int id, String description, Date target_date) {
	super();
	this.id = id;
	this.description = description;
	this.target_date = target_date;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public Date getTarget_date() {
	return target_date;
}
public void setTarget_date(Date target_date) {
	this.target_date = target_date;
}
  
}

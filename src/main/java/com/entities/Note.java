package com.entities;

import java.util.Date;
import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
@Entity
public class Note {
	@Id
	private int id;
	private String title;
//	@Column(length = 1500)  // this is for customized length of column (now we can insert 1500 words in content)--if any error than drop table and re-deploye your project
	private String content;
     private Date addDate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getAddDate() {
		return addDate;
	}
	public void setAddDate(Date addDate) {
		this.addDate = addDate;
	}
	public Note( String title, String content, Date addDate) {
		super();
		this.id = new Random().nextInt(10000);
		this.title = title;
		this.content = content;
		this.addDate = addDate;
	}
	public Note() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Note [id=" + id + ", title=" + title + ", content=" + content + ", addDate=" + addDate + "]";
	}
     
     
}

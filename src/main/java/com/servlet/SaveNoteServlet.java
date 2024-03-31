package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;


public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public SaveNoteServlet() {
        super();
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			try {
				//tittle content fetch
				String Title = request.getParameter("title");
				String Content = request.getParameter("content");
				//create object of Note entity
				Note note=new Note(Title,Content,new Date());
				//System.out.println(note.getId()+":"+note.getTitle()+":"+note.getContent());
				//hibernet dao : save()
				Session s = FactoryProvider.getFactory().openSession();
				Transaction tx=s.beginTransaction();
				s.save(note);
				response.setContentType("text/html");
				tx.commit();
				s.close();
				PrintWriter out= response.getWriter();
				out.println("<h1 style='text-align:center;'>Note is added successfully</h1>");
				out.println("<h1 style='text-align:center;'><a href='allNotes.jsp'>View All</a></h1>");
				
			} catch (Exception e) {
				 e.printStackTrace();
			}
	}

}

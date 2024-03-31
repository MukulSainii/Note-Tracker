package com.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UpdateServlet() {
        super();

    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          try {
        	  
        	  String Title=request.getParameter("title");
        	  String Content=request.getParameter("content");
        	  int NoteId=Integer.parseInt(request.getParameter("noteId").trim());
        	  Session s=FactoryProvider.getFactory().openSession();
        	  Transaction tx=s.beginTransaction();
        	 Note note= s.get(Note.class, NoteId);
        	 note.setTitle(Title);
        	 note.setContent(Content);
        	 note.setAddDate(new Date());
        	 
        	  tx.commit();
        	  s.close();
        	 response.sendRedirect("allNotes.jsp"); 
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	
	
	}

}

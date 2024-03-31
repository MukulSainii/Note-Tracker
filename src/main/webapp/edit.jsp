<%@page import="com.entities.Note"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_JS_CSS.jsp" %>
</head>
<body>
     <div class="container">
         <%@include file="navbar.jsp" %>
           <h1>This is Edit(edit.jsp)  page</h1>
           <br>
         <%
            /* take id from url */
            int NoteId=  Integer.parseInt(request.getParameter("note_id").trim());
	         Session s = FactoryProvider.getFactory().openSession();
	         /* get data of gven id from database ,and store in table object*/
	  	    Note note = (Note)s.get(Note.class, NoteId); //"NoteId" is  id which we get from url
	         
         %>
         
	       <h1>Edit your note </h1>
	       <form action="UpdateServlet" method="post">
	       <!--get id from table object on edit page ,but it is hidden  -->
	          <input value="<%=note.getId() %>" name="noteId"  type="hidden"/>
	       
			  <div class="form-group">
			    <label for="exampleInputEmail1">Note Title</label>
			    <!-- previous data show on field which you want to update-->
			    <input name="title" required type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter here" value="<%=note.getTitle() %>">   
			  </div>
			  <div class="form-group">
			    <label for="content">Note Content</label>
			    <!-- previous data show on field which you want to update-->
			    <textarea name="content" required id="content" placeholder="Enter your content here" class="form-control" style="height:250px" ><%=note.getContent() %></textarea>
			  </div>
			  <!--it submit the form on Servlet UpdateServlet,and servlet take data from form and update in the database -->
			  <div class="container text-center" >
			      <button type="submit" class="btn btn-success">Save Your Edit</button>
			  </div>
			</form> 
           
      </div>
</body>
</html>
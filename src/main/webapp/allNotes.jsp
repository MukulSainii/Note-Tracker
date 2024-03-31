<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All notes</title>
 <%@include file="all_JS_CSS.jsp" %>
</head>
<body>
      <div class="container">
       <%@include file="navbar.jsp" %>
       <br>
       <h1 class="text-uppercase">All Notes :</h1>
       
       <div class="row">
	       <div class="col-12">	               
		       <%
		       /*it fetch all data from database through HQL query and show data on card through for-each loop */
		          Session s= FactoryProvider.getFactory().openSession(); 
			       Query q=s.createQuery("from Note");
			       List<Note>list=q.list();
			       for(Note note: list){
			    	  
			   %> 
			      
			   	   <!-- cards form bootStrap 4 -->
			      <div class="card mt-3" >
					  <img class="card-img-top " style ="max-width:50px"src="image/notes.png" alt="Card image cap">
					  <div class="card-body">
					    <h5 class="card-title"><%= note.getTitle() %></h5>
					    <p class="card-text"><%= note.getContent() %></p>
					    <p><b class="text-primary"><%= note.getAddDate() %></b></p>
					    <div class="container text-center">
					         <a href="DeleteServlet?note_id=<%=note.getId() %>" class="btn btn-danger">delete</a>
					         <a href="edit.jsp?note_id=<%=note.getId() %>" class="btn btn-primary">Update</a>
					    </div>
					  </div>
				  </div>
			      	   
			   <%  	   
			       }
			       s.close();
		       %>
	       </div>
       </div>
      
      
      
      </div>
</body>
</html>
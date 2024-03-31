<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Add Notes</title>
 <%@include file="all_JS_CSS.jsp" %>

</head>
<body>
    <div class="container">
         <%@include file="navbar.jsp" %>
       <br>
       
       <h1>This is addNotes page</h1>
       <h1>Please fill your Note detail </h1>
       <form action="SaveNoteServlet" method="post">
		  <div class="form-group">
		    <label for="exampleInputEmail1">Note Title</label>
		    <input name="title" required type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter here">   
		  </div>
		  <div class="form-group">
		    <label for="content">Note Content</label>
		    <textarea name="content" required id="content" placeholder="Enter your content here" class="form-control" style="height:250px"></textarea>
		  </div>
		  
		  <div class="container text-center" >
		      <button type="submit" class="btn btn-primary">Add</button>
		  </div>
		</form>
       
      </div>
</body>
</html>
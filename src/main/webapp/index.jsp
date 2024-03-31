<!doctype html>
<html lang="en">
  <head>
       <title>Note Taker : Home Page</title>
       <%@include file="all_JS_CSS.jsp" %>
  </head>
  <body>
      <div class="container">
         <%@include file="navbar.jsp" %>
           <h1>This is home page (index.jsp) </h1>
           <br>
           <div class="card py-3">
             <img alt="" class="img-fluid mx-auto" style="max-width:500px"   src="image/background.jpg">
            <h3 class="text-primary text-uppercase text-center">Start adding your notes</h3>
               <div class="container text-center">
                   <a href="addNotes.jsp">
                        <button class="btn btn-outline-primary">Start</button>
                   </a>
               </div>
           </div>
           
           
           
      </div>

  
  </body>
</html>
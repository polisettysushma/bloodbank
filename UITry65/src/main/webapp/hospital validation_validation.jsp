<html>
<title>Index Page</title>
<%@ page language="java" import="com.mongodb.client.MongoDatabase" %>
<%@ page language="java"  import="java.sql.*" %>
<%@ page language="java"  import="org.bson.Document" %>
<%@ page language="java" import="com.mongodb.MongoClient" %>
<%@ page language="java" import="java.util.List" %>
<%@ page language="java" import="java.util.ArrayList" %>
<%@page language="java" import ="com.mongodb.client.MongoCollection"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.util.ArrayList" %>
<%@ page language="java" import= "com.mongodb.client.MongoCursor"%>
<%@ page language="java" import="com.mongodb.client.FindIterable"%>

<style>

body {
  background-image: url("https://images.unsplash.com/photo-1505751172876-fa1923c5c528?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80");
  background-color: #cccccc;
  height: 500px;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

</style>

<body>
<br> 
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 <table class="table table-hover table-danger">
<tr><tr>
<!-- <th  class="text-dark"> Hospital Id</th>
<th class="text-warning"> Hospital name</th>
 <th class="text-warning"> Hospital Location</th>
  -->
</tr>

<%
         try{
        	 
        	 String hname=request.getParameter("hname");
     		String hkey=request.getParameter("hkey");
	
        	
            //Creating a MongoDB client
            MongoClient mongo = new MongoClient( "localhost" , 27017 );
            //Connecting to the database
            MongoDatabase database = mongo.getDatabase("DPS");
            //Creating a collection object
            MongoCollection<Document> collection = database.getCollection("hospital22");
            //Retrieving the documents
            
            
            
      
          Document query = new Document("hname", hname).append("hkey", hkey);

            // Execute the query to find the user
            Document user = collection.find(query).first();

            if (user != null) {
                // User is authenticated, display a success message
                out.println("Sign-in successful. Welcome, " + hname + "!");

                // Redirect to another HTML page upon successful sign-in
          
                response.sendRedirect("aftersigninhospital.jsp?hname=" + hname);
            } else {
                // User authentication failed, display an error message
                
                response.sendRedirect("nextinvalidlogin.jsp");
            	out.println("<center><h2><a href='donor1.jsp'> Invalid Login </a> Try Again");
            }
             
			
            }catch(Exception e)
{	
            	out.println("<center><h2><a href='donor1.jsp'> Invalid Login </a> Try Again");
}
	
%>

</body>
</html>

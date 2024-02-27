<html>
<title>Index Page</title>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.text.ParseException" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.ParseException" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>

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
<%@ page import="com.mongodb.*" %>
<%@ page import="org.bson.Document" %>
<%@ page import="org.bson.conversions.Bson" %>
<%@ page import="com.mongodb.client.model.Updates" %>
<%@ page import="com.mongodb.client.model.Filters" %>


<style>

body {
    background-image:    url('https://images.unsplash.com/photo-1519751138087-5bf79df62d5b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3540&q=80');
    background-size:     cover;                      /* <------ */
    background-repeat:   no-repeat;
    background-position: center center; 
      height: 800px;             /* optional, center the image */
}

</style>

<body>

<nav>



<center>


</center>
  
  <div class="animation start-home"></div>
</nav>
 <% String uname = request.getParameter("uname"); %>
  
<%

         try{
        	 
        	 String s1=request.getParameter("uname");
     		String s2=request.getParameter("lastdonated");
     		String s3=request.getParameter("amountinml");
     		String s4=request.getParameter("time");
     		 
	
	
        	  //Creating a MongoDB client
             MongoClient mongo = new MongoClient( "localhost" , 27017 );
             //Connecting to the database
             MongoDatabase database = mongo.getDatabase("DPS");
             //Creating a collection object
             MongoCollection<Document> collection = database.getCollection("walkin22");
             //Retrieving the documents

	           Document query = new Document("uname", s1);
	         
	          


            // Execute the query and get the result
            MongoCursor<Document> cursor = collection.find(query).iterator();
            int x=0;
           
             SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd"); 
             long differenceInDays=0,differenceInMilliseconds=0;

            if (cursor.hasNext()) {
                // Retrieve the document
                Document document = cursor.next();

                
                String lastdonated = document.getString("lastdonated");
                if(lastdonated==null)
                {
                	String s5=request.getParameter("camp");
                	out.println(s5);
                	if(s5!=null)
                	{
                		 Document update = new Document("$set", new Document("type", "Blood Camp"));
                    	 Document updatedDocument = collection.findOneAndUpdate(query, update);
                	}
                	else
                	{
                		Document update = new Document("$set", new Document("type", "Walk in"));
                   	    Document updatedDocument = collection.findOneAndUpdate(query, update);
                	}
                	
                	 Document update = new Document("$set", new Document("lastdonated", s2));
                	 Document updatedDocument = collection.findOneAndUpdate(query, update);
                	 
                	 Document update1 = new Document("$set", new Document("status", "inactive"));
                	 Document updatedDocument1 = collection.findOneAndUpdate(query, update1);
                	 
                	 Document update2 = new Document("$set", new Document("amountinml", s3));
                	 Document updatedDocument2 = collection.findOneAndUpdate(query, update2);
                	 
                	 Document update3 = new Document("$set", new Document("time", s4));
                	 Document updatedDocument3 = collection.findOneAndUpdate(query, update3);
                	 
                	 Document update4 = new Document("$set", new Document("donated", "yes"));
                	 Document updatedDocument4 = collection.findOneAndUpdate(query, update4);
                	 
                	
                	 
                	 x=1;
                	
                	 /* out.println("<center><h2>Thanks for Donating");
                		out.println("<center><h2><a href='index.jsp'> Click Here </a> to back"); */
                			 
                			 
                		
                		// Define your update query
                		
                		
                			

                }
                else if(lastdonated!=null)
                {
                	 
                	 Date date1 = dateFormat.parse(lastdonated);
                     Date date2 = dateFormat.parse(s2);

                      differenceInMilliseconds =(date2.getTime() - date1.getTime());
                      differenceInDays = differenceInMilliseconds / (24 * 60 * 60 * 1000);
                      if(differenceInDays<0)
                    	  x=5;
                      else if(differenceInDays<=120)
                      	x=2;
                     else if(differenceInDays>120)
                     {
                    	 Document update = new Document("$set", new Document("lastdonated", s2));
                    	 Document updatedDocument = collection.findOneAndUpdate(query, update);
                    	 
                    	 Document update1 = new Document("$set", new Document("status", "inactive"));
                    	 Document updatedDocument1 = collection.findOneAndUpdate(query, update1);
                    	 
                    	 x=3;
                    	 
                     }
                }
                 
                 
            }  
            if(x==0)
            {
            	out.println("Its to early");

            	out.println("<center><h2><a href='index.jsp'> Click Here </a> to back");
            }
            if(x==5)
            {
            	response.sendRedirect("nextslotfail.jsp");
            	out.println("Its seems you have selected an invalid date, Please try again");

            	out.println("<center><h2><a href='index.jsp'> Click Here </a> to back");
            }
            else if(x==2)
            {
            	
            	
            	
            	out.println("<body style='display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0;'>");
                
            	out.println("<div>");
            	out.println("<center><h2>Hey Donor!! You have donated "+differenceInDays+" days ago..</h2><center>");
            	long wait=120-differenceInDays;
            	out.println("<center><h3>Please wait for "+wait+" days and come back to donate again :) </h3><center>");
            	
            	
            	out.println("<center><h2><a href='index.jsp'> Click Here </a> to back");
            	out.println("</div>");
            	out.println("</body>");

            	
            }
            else if(x==3 || x==1)
            {
            	
            	response.sendRedirect("nextslotsuccess.jsp");
            	out.println("<center><h2>Hey Donor!! You have Confirmed Your Slot..</h2><center>");
            	
            	

            	out.println("<center><h2><a href='index.jsp'> Click Here </a> to back");
            }
            
	 
	    
         }
	catch(Exception e)
	{
		out.println(e);
	}
%>

</body>
</html>

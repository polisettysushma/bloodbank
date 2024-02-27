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
<%@ page import="com.mongodb.client.model.Filters" %>
<%@ page language="java" import="com.mongodb.client.FindIterable"%>

<style>


body {
  background: #1E1930;
  color: #D2D1D5;
}
tr:nth-child(even) {
  background-color: #84A089;
}
tr:nth-child(odd) {
  background-color: #C87878;
}
th {
  background-color: #342F44;
  color: white;
}
.noBorder {
    border:none !important;
}


</style>

<body>
<br> 
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<br> 
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 <table class="table table-hover table-secondary">
 
 

<%
String bg=request.getParameter("bg");
String hid=request.getParameter("hid");

         try{
	
        	
            //Creating a MongoDB client
            MongoClient mongo = new MongoClient( "localhost" , 27017 );
            //Connecting to the database
            MongoDatabase database = mongo.getDatabase("DPS");
   
            
            //Creating a collection object
            MongoCollection<Document> collection = database.getCollection("walkin22");
           
            
            
            //Retrieving the documents
        
            
          
            
            
            String columnName = "bloodgroup";
		String targetBloodGroup = bg;

		FindIterable<Document> iterDoc = collection.find(Filters.and(
		Filters.eq(columnName, bg),
	    Filters.eq("status", "Approved")
	    
	));



     
            String uname="";
           Iterator it = iterDoc.iterator();
           int t1=0;
         //out.println(bg);
           
           while(it.hasNext())
           {
        	   t1=t1+1;
        	   out.println("<tr>");
        	   String s=it.next().toString();
        	   //out.println(s);
        	   StringTokenizer str=new StringTokenizer(s,",=}");
        	   int count=0;
        	   while(str.hasMoreTokens())
        	   {
        		 
        			count++;
        			String key=str.nextToken();
					String value=str.nextToken();
					        		
					if(count==2)
        		    	uname=value;
        		   	    
        	   	 
        	   }
        	   break;
        	   
           }
         
        if(t1==0)
        {
        	out.println("<center><h2><i>Sorry,Unable to Donate <br> <br> No donor available</i></h2></center>");
        }
        if(t1>0)
        {
         Document filter = new Document("uname", uname);
         Document update = new Document("$set", new Document("status", "Centrifugated"));
         collection.updateOne(filter, update);
         
         
         
         
         collection = database.getCollection("hospitalrequests");
         
         Document filter2 = new Document("hid", hid);
         Document update2 = new Document("$set", new Document("status", "Approved"));
         collection.updateOne(filter2, update2);
         
         out.println("<center><h2><i>Approved  <br> <br> Please check the status</i></h2></center>");
         
         
        }
     
            	
         
            		
			
  }
            
           catch(Exception e)
           	
				{	
					out.println(e);
				}
	
%>

</body>
</html>

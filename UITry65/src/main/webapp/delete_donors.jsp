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
 <table class="table table-hover table-secondary">
<tr><tr>
<th  class="text-warning"> Donor Id</th>
<th class="text-warning"> Donor name</th>
 <th class="text-warning"> Donor AGE</th>
<th class="text-warning"> Donor Gender</th>
<th class="text-warning"> Donor Blood group</th>
<th class="text-warning"> Donor State</th>
<th class="text-warning"> Donor City</th>
<th class="text-warning"> Donor Phno</th>
<th class="text-warning"> Action</th>
</tr>


<%
         try{
	
	
        	  //Creating a MongoDB client
             MongoClient mongo = new MongoClient( "localhost" , 27017 );
             //Connecting to the database
             MongoDatabase database = mongo.getDatabase("DPS");
             //Creating a collection object
             MongoCollection<Document> collection = database.getCollection("donors22");
             //Retrieving the documents
             
             
             
      
             FindIterable<Document> iterDoc = collection.find();
            Iterator it = iterDoc.iterator();
            
            while(it.hasNext())
            {
         	   out.println("<tr>");
         	   String s=it.next().toString();
         	   String x="";
         	   //out.println(s);
         	   StringTokenizer str=new StringTokenizer(s,",=}");
         	   int count=0;
         	   while(str.hasMoreTokens())
         	   {
         		 
         			count++;
         			String key=str.nextToken();
 					String value=str.nextToken();
 					if(count==2)
 					{
 						x=value;
 					}
         		    if(count>1&& count<=8)
 						out.println("<td class=\"text-success\">"+value+"</td>");
         		    else if(count==9)
         		    {
         		    	out.println("<td class=\"text-success\">"+value+"</td>");
         		          		//   out.println("<td><a href='updatedonor1.jsp?t1="+value+"'>Update</a>/<a href='deletedonor1.jsp?t1="+value+"'>Delete </a></td></tr>");
         		       out.println("<td class=\"text-success\"><a href='deletedonor1.jsp?t1="+x+"'>Delete </a></td></tr>");
         		    }
         	   	 // out.println("</tr>");
         	   }
         	   //out.println("<tr><td>"+it.next()+"</td></tr>");
            }
//out.println("<td><a href='updatedonor1.jsp?t1="+x+"'>Update</a>/<a href='deletedonor1.jsp?t1="+x+"'>Delete </a></td></tr>");
	        
	         
	 }
	    
	
	catch(Exception e)
	{
		out.println(e);
	}
%>

</body>
</html>

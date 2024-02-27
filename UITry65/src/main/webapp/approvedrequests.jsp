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
 <table class="table table-hover table-secondary">
 
 
<tr>
<th  class="text-warning"> Req Id </th>
<th  class="text-warning"> Hospital Name </th>
<th class="text-warning">  Req Blood Group</th>
 <th class="text-warning">  Priority</th>
<th class="text-warning">Quantity</th>
<th class="text-warning">Comments</th>
<th class="text-warning">Status</th>
</tr>

<%
         try{
	
        	
            //Creating a MongoDB client
            MongoClient mongo = new MongoClient( "localhost" , 27017 );
            //Connecting to the database
            MongoDatabase database = mongo.getDatabase("DPS");
            //Creating a collection object
            MongoCollection<Document> collection = database.getCollection("hospitalrequests");
            //Retrieving the documents
            
              
            String columnName2 = "status";
            String valuee = "Approved";
            


FindIterable<Document> iterDoc = collection.find(Filters.and(
	    Filters.eq("status", "Approved")
	    
	));



Iterator it = iterDoc.iterator();
            
       
           
           while(it.hasNext())
           {
        	   out.println("<tr>");
        	   String s=it.next().toString();
        	   //out.println(s);
        	   StringTokenizer str=new StringTokenizer(s,",=}");
        	   int count=0;
        	   String x="",y="";
        	   while(str.hasMoreTokens())
        	   {
        		 
        			count++;
        			String key=str.nextToken();
					String value=str.nextToken();
					if(count==2)
						x=value;
					if(count==4)
						y=value;
					        		
        		    if(count>1 ){
        		    	
        
						out.println("<td class=\"noBorder\">"+value+"</td>");
						
        		    
        		    }
        		   
        		    
        	   	 
        	   }
        	   //out.println("<tr><td>"+it.next()+"</td></tr>");
           }
         
          
            
            
            out.println("</table>");
			
            }catch(Exception e)
{	
		out.println(e);
}
	
%>

</body>
</html>

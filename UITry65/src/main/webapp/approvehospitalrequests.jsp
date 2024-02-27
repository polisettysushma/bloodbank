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
<th class="text-warning">Action</th>
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
            


/* FindIterable<Document> iterDoc = collection.find(Filters.and(
	    Filters.eq("status", "Not Approved")
	    
	));



Iterator it = iterDoc.iterator(); */


FindIterable<Document> iterDoc = collection.find();
Iterator it = iterDoc.iterator();
            
       
           //Work on above dont touch below
           while(it.hasNext())
           {
        	   out.println("<tr>");
        	   String s=it.next().toString();
        	   //out.println(s);
        	   StringTokenizer str=new StringTokenizer(s,",=}");
        	   int count=0;
        	   String x="",y="";
        	   String st="";
        	   while(str.hasMoreTokens())
        	   {
        		 
        			count++;
        			String key=str.nextToken();
					String value=str.nextToken();
					if(count==2)
						x=value;
					if(count==4)
						y=value;
					if(count==8)
						st=value;
					        		
        		    if(count>1 && count!=9 ){
        		    	
        
						out.println("<td class=\"noBorder\">"+value+"</td>");
						
        		    
        		    }
        		    if(count==8)
        		    {
        		    	String encodedY = java.net.URLEncoder.encode(y, "UTF-8");
        		    	
        		    //	out.println(st);
        		    	if(st.equals("Approved"))
        		    	{
        		    		String v1="Accepted";
        		    		out.println("<td class=\"noBorder\">"+v1+"</td>");
        		    	}
        		    	else
        		    	out.println("<td class=\"noBorder\"><a href='approvehospitalrequests1.jsp?hid=" + x + "&bg=" +encodedY + "'>Approve </a></td></tr>");

        		    	//out.println("<td class=\"noBorder\"><a href='approvehospitalrequests1.jsp?hid=" + x + "&bg=" + y + "'>Approve </a></td></tr>");

        		    }
        		    
        	   	 
        	   }
        	   //out.println("<tr><td>"+it.next()+"</td></tr>");
           }
         
          
            
            
            out.println("</table>");
            
            
            
           //Work on below dont touch above
            
             mongo = new MongoClient( "localhost" , 27017 );
            //Connecting to the database
             database = mongo.getDatabase("DPS");
            //Creating a collection object
             collection = database.getCollection("walkin22");

 iterDoc = collection.find(Filters.and(
	    Filters.eq("status", "Approved")
	    
	));
            
           
              it = iterDoc.iterator();
               int ap=0,an=0,abp=0,abn=0,bp=0,bn=0,op=0,on=0;
              
              while(it.hasNext())
              {
           	   out.println("<tr>");
           	   String s=it.next().toString();
           	   //out.println(s);
           	   StringTokenizer str=new StringTokenizer(s,",=}");
           	   int count=0;
           	   String x="",y="";
           	   String st="";
           	   while(str.hasMoreTokens())
           	   {
           		 
           			count++;
           			String key=str.nextToken();
   					String value=str.nextToken();
   					if(count==8)
   					{
   	   					;
   						if(value.equals("A+"))
   						{
   							ap++;
   						}
   						if(value.equals("A-"))
   						{
   							an++;
   						}
   						if(value.equals("AB+"))
   						{
   							abp++;
   						}
   						if(value.equals("AB-"))
   						{
   							abn++;
   						}
   						if(value.equals("B+"))
   						{
   							bp++;
   						}
   						if(value.equals("B-"))
   						{
   							bn++;
   						}
   						if(value.equals("O+"))
   						{
   							op++;
   						}
   						if(value.equals("O-"))
   						{
   							on++;
   						}
   						
   					}
   					
   					
   				
           	   	 
           	   }
           	   //out.println("<tr><td>"+it.next()+"</td></tr>");
              }
              out.println("<center>Available Inventory</center>"+"<br>");
            %>
            
             
  <table class="table table-hover table-secondary">
<tr>
<th  class="text-warning"> A+ </th>
<th  class="text-warning"> A- </th>
<th class="text-warning">  AB+</th>
 <th class="text-warning">  AB-</th>
<th class="text-warning">B+</th>
<th class="text-warning">B-</th>
<th class="text-warning">O+</th>
<th class="text-warning">O-</th>
</tr>
            
            <%
            
            out.println("<td class=\"noBorder\">"+ap+" Unit/s</td>");
            out.println("<td class=\"noBorder\">"+an+" Unit/s</td>");
            out.println("<td class=\"noBorder\">"+abp+" Unit/s</td>");
            out.println("<td class=\"noBorder\">"+abn+" Unit/s</td>");
            out.println("<td class=\"noBorder\">"+bp+" Unit/s</td>");
            out.println("<td class=\"noBorder\">"+bn+" Unit/s</td>");
            out.println("<td class=\"noBorder\">"+op+" Unit/s</td>");
            out.println("<td class=\"noBorder\">"+on+" Unit/s</td>");
            }
            catch(Exception e)
{	
		out.println(e);
}
	
%>

</body>
</html>

<%@ page language='java' import='java.sql.*' %>
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
<%
     try
      {
	String t1=request.getParameter("t1").trim();out.println(t1);
	String t2=request.getParameter("t2").trim();out.println(t2);

	if(t1.length()!=0)
	 {
	         if(t2.length()!=0)
	          {
					if(t1.equals("Admin") && t2.equals("Admin"))
		 			{
		             	session.setAttribute("usr","Administrator");
		            	 response.sendRedirect("AdminForm.jsp");
		 			}
					else
		 			{
						out.println("<h1>Entered");
						
						//Creating a MongoDB client
			            MongoClient mongo = new MongoClient( "localhost" , 27017 );
			            //Connecting to the database
			            MongoDatabase database = mongo.getDatabase("DPSl");
			            //Creating a collection object
			            MongoCollection<Document> collection = database.getCollection("patient2");
			            //Retrieving the documents            
			            
			            
			     
			            FindIterable<Document> iterDoc = collection.find();
			           Iterator it = iterDoc.iterator();
			           
			           while(it.hasNext())
			           {
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
								        		
			        		    if(count>8)
			        		    {
			        		    	if(t1.equals(value)&& t2.equals(value))
			        		    	{
			        		    		session.setAttribute("usr",t1);
			        		    		response.sendRedirect("patient1.jsp");
			        		    	}
									out.println("<td>"+value+"</td>");
			        		    }
			        		   
			        	   	 // out.println("</tr>");
			        	   }
			        	   //out.println("<tr><td>"+it.next()+"</td></tr>");
			           }
			         
		 	
						
	          		}
					
	          }
	         else
	          {
	           session.setAttribute("msg","PassWord is Not Specified...");
	           response.sendRedirect("ErrorPage.jsp");
	          }
	 }
	else
	 {
	           session.setAttribute("msg","UserName is Not Specified...");
	           response.sendRedirect("ErrorPage.jsp");
	 }
      }
     catch(Exception e)
      {
	           session.setAttribute("msg","Error in Validating the Page..."+e);
	           response.sendRedirect("ErrorPage.jsp");
      }
%>
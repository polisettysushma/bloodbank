<%@ page language='java' import='java.sql.*' %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page language='java' import='java.sql.*' %>
<%@ page language='java' import='java.sql.*' %>
<%@ page language="java" import="com.mongodb.client.MongoDatabase" %>
<%@ page language="java"  import="java.sql.*" %>
<%@ page language="java"  import="org.bson.Document" %>
<%@ page language="java" import="com.mongodb.Mongo" %>
<%@ page language="java" import="java.util.List" %>
<%@ page language="java" import="java.util.ArrayList" %>
<%@page language="java" import ="com.mongodb.client.MongoCollection"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.util.ArrayList" %>
<%@ page language="java" import= "com.mongodb.client.MongoCursor"%>
<%@ page language="java" import="com.mongodb.client.FindIterable"%>
    
<%@ page import =" com.mongodb.*"%>
<%@ page import="java.util.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<style>
import com.mongodb.client.MongoClient;
        import com.mongodb.client.MongoClients;
        import com.mongodb.client.MongoCollection;
        import com.mongodb.client.MongoDatabase;
        import org.bson.Document;
        import com.mongodb.client.model.IndexOptions;

body {
  background-image: url("https://images.unsplash.com/photo-1536856136534-bb679c52a9aa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80");
  background-color: #cccccc;
  height: 500px;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

</style>
<%@ page language="java" import="com.mongodb.client.MongoDatabase" %>
<%@ page language="java"  import="java.sql.*" %>
<%@ page language="java"  import="org.bson.Document" %>
<%@ page language="java" import="com.mongodb.MongoClient" %>
<%@ page language="java" import="java.util.List" %>
<%@ page language="java" import="java.util.ArrayList" %>
<%@page language="java" import ="com.mongodb.client.MongoCollection"%>
 


 
 
<%

 try{
	 String hid=request.getParameter("hid");
	 String hname=request.getParameter("hname");
		String bloodgrp=request.getParameter("bloodgrp");
		String prio=request.getParameter("prio");
		String qty=request.getParameter("qty");
		String comments=request.getParameter("comments");
		

MongoClient mongo = new MongoClient( "localhost" , 27017 );
//Connecting to the database
MongoDatabase database = mongo.getDatabase("DPS");
MongoCollection<Document> collection =
database.getCollection("hospitalrequests");
//database.createCollection("donor2");
 

//Preparing a document
Document document = new Document();
 
document.append("hid",hid);
document.append("hname", hname);
document.append("bloodgrp", bloodgrp);
document.append("prio", prio);
document.append("qty", qty);
document.append("comments", comments);


document.append("status", "Not Approved");




//Inserting the document into the collection
//database.getCollection("donors2").insertMany(document);
List<Document> list = new ArrayList<Document>();
list.add(document);

collection.insertMany(list);
//System.out.println("Document inserted successfully");
	

	

	 //response.sendRedirect("hop.jsp");
	out.println("<center><h2><a href='walkin_login.jsp'> Click Here </a> ");
	response.sendRedirect("checkhospitalreq.jsp?hname="+hname);

	}
	catch(Exception e)
	{
		 response.sendRedirect("nextinvaliduname.jsp");
		out.println("<center><h2>Sorry , Please try again");
		out.println("<center><h2><a href='walkin.jsp'> Donate here </a> to back");
	}
%>
</body>
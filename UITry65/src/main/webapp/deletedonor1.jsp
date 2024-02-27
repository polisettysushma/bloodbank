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
<%@ page language="java" import ="com.mongodb.client.model.Filters"%>
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


<%
         try{
		String s1=request.getParameter("t1");	
	
		MongoClient mongo = new MongoClient( "localhost" , 27017 );
	      //Connecting to the database
	      MongoDatabase database = mongo.getDatabase("DPS");
	      //Creating a collection
	      MongoCollection<Document> collection = database.getCollection("donors22");
	      //Deleting a document
	      collection.deleteOne(Filters.eq("did",s1));
	      out.println("<h2>Document deleted successfully...");	
		
		
	
	}
	catch(Exception e)
	{
		out.println(e);
	}
	
%>
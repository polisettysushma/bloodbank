<%@ page language='java' import='java.sql.*' %>
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
<%@ page language="java" import="com.mongodb.client.MongoDatabase" %>
<%@ page language="java"  import="java.sql.*" %>
<%@ page language="java"  import="org.bson.Document" %>
<%@ page language="java" import="com.mongodb.MongoClient" %>
<%@ page language="java" import="java.util.List" %>
<%@ page language="java" import="java.util.ArrayList" %>
<%@page language="java" import ="com.mongodb.client.MongoCollection"%>
<%
 try{
String name=request.getParameter("name");
String age=request.getParameter("age");
String gender=request.getParameter("gender");
String bgrp=request.getParameter("bloodgrp");
 
String state=request.getParameter("state");
String city=request.getParameter("city");
String phno=request.getParameter("phone");
String did=request.getParameter("did");

MongoClient mongo = new MongoClient( "localhost" , 27017 );
//Connecting to the database
MongoDatabase database = mongo.getDatabase("DPS");
MongoCollection<Document> collection =
database.getCollection("donors22");
//database.createCollection("donor2");
//Preparing a document
Document document = new Document();
document.append("did", did);
document.append("name", name);
document.append("age", age);
document.append("gender", gender);
document.append("bloodgrp", bgrp);
document.append("state", state);
document.append("city", city);
document.append("phno", phno);



//Inserting the document into the collection
//database.getCollection("donors2").insertMany(document);
List<Document> list = new ArrayList<Document>();
list.add(document);

collection.insertMany(list);
//System.out.println("Document inserted successfully");
	

	

	out.println("<center><h2>Record Stored successfully");
	out.println("<center><h2><a href='index.jsp'> Click Here </a> to back");

	}
	catch(Exception e)
	{
		out.println(e);
	}
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import =" com.mongodb.*"%>
<%@ page import="java.util.*" %>
<%@ page import =" com.mongodb.*"%>
<%@ page import="java.util.*" %>
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
<%@ page language="java"  import="org.bson.Document" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
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
   try
   {
		String cid=request.getParameter("cid");
		String clocation=request.getParameter("clocation");
		String cdate=request.getParameter("cdate");
		String cstatus=request.getParameter("cstatus");
	
		//out.println(s1);
		//out.println(s2);
		
		 MongoClient mongo = new MongoClient("localhost", 27017);
     //DB db = mongo.getDB("DPSl");
     //DBCollection collection = db.getCollection("donors2");
     
		 //////MongoClient mongo = MongoClients.create("mongodb://127.0.0.1:27017");
	MongoDatabase db = mongo.getDatabase("DPS");
	MongoCollection<Document>DPSlColl = db.getCollection("camp");

	Document filter = new Document("cid", cid); // Replace with your filter criteria

	// Define the update operation using $set
	Document update = new Document("$set", new Document()
    .append("clocation", clocation)
    .append("cdate", cdate)
    .append("status", cstatus)
    // Add more fields as needed
);
	// Replace "columnName" with the actual field you want to update and "newColumnValue" with the new value.

	// Perform the update operation
	DPSlColl.updateMany(filter, update);
	
	DPSlColl.updateMany(filter, update);
		
		
   } 
   catch(Exception e)
   {
	   out.println(e);
   }
%>

</body>
</html>
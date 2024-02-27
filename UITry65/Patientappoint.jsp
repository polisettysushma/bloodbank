<%@ page language='java' import='java.sql.*' %>
<body bgcolor="cyan" text="black">
<body bgcolor="cyan" text="black">
<%@ page language="java" import="com.mongodb.client.MongoDatabase" %>
<%@ page language="java"  import="java.sql.*" %>
<%@ page language="java"  import="org.bson.Document" %>
<%@ page language="java" import="com.mongodb.MongoClient" %>
<%@ page language="java" import="java.util.List" %>
<%@ page language="java" import="java.util.ArrayList" %>
<%@page language="java" import ="com.mongodb.client.MongoCollection"%>
<%
int hid=0;

 try{
	 String pid=request.getParameter("pid");
		//String pname=request.getParameter("pname");
		String paid=request.getParameter("paid");
		//String gender=request.getParameter("gender");
		String bagno=request.getParameter("bagno");
		String date=request.getParameter("date");
		String time=request.getParameter("time");
		

MongoClient mongo = new MongoClient( "localhost" , 27017 );
//Connecting to the database
MongoDatabase database = mongo.getDatabase("DPSl");
MongoCollection<Document> collection =
database.getCollection("patient appointment");
//database.createCollection("donor2");
//Preparing a document
Document document = new Document();
//document.append("name", pname);
document.append("paid", paid);
document.append("pid", pid);
document.append("date", date);
//document.append("gender", gender);
document.append("bagno", bagno);
//document.append("cp", dcp);
//document.append("cn", dcn);
document.append("time", time);
document.append("status", "Active");




//Inserting the document into the collection
//database.getCollection("donors2").insertMany(document);
List<Document> list = new ArrayList<Document>();
list.add(document);

collection.insertMany(list);
//System.out.println("appointment registred  successfully");
	

	

	out.println("<center><h2>Patientappointment Stored successfully");
	//out.println("<center><h2><a href='index.jsp'> Click Here </a> to back");

	}
	catch(Exception e)
	{
		out.println(e);
	}
%>
</body>
<%@ page import="java.time.LocalDate, java.time.format.DateTimeFormatter, java.time.Period" %>
<%@ page language="java" %>
<%@ page language='java' import='java.sql.*' %>
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
	 String pid=request.getParameter("pid");
		String uname=request.getParameter("uname");
		String dname=request.getParameter("dname");
		String age=request.getParameter("age");
		String height=request.getParameter("height");
		String weight=request.getParameter("weight");
		String gender=request.getParameter("gender");
		String bgrp=request.getParameter("bloodgrp");
		String passcode=request.getParameter("passcode");
		String phno=request.getParameter("phone");
		String lastdonated=request.getParameter("lastdonated");
		String status=request.getParameter("status");
		String amountinml=request.getParameter("amountinml");
		

MongoClient mongo = new MongoClient( "localhost" , 27017 );
//Connecting to the database
MongoDatabase database = mongo.getDatabase("DPS");
MongoCollection<Document> collection =
database.getCollection("walkin22");
//database.createCollection("donor2");
 



 String dateFormat = "yyyy-MM-dd";

    // Date of birth in string format
    String dateOfBirthStr = age;

    // Parse the date string to LocalDate using DateTimeFormatter
    DateTimeFormatter formatter = DateTimeFormatter.ofPattern(dateFormat);
    LocalDate dateOfBirth = LocalDate.parse(dateOfBirthStr, formatter);

    // Get the current date
    LocalDate currentDate = LocalDate.now();

    // Calculate the period between the dates
    Period period = Period.between(dateOfBirth, currentDate);

    // Display the age
    int years = period.getYears();
    int months = period.getMonths();
    int days = period.getDays();
    
    
    String finaldate=years+"y "+months+"m "+days+"d";

//Preparing a document
Document document = new Document();
 

document.append("uname", uname);
document.append("dname", dname);
document.append("age", finaldate);
document.append("height", height);
document.append("weight", weight);
document.append("gender", gender);
document.append("bloodgroup", bgrp);

document.append("passcode", passcode);
document.append("phno", phno);
document.append("lastdonated", lastdonated);
document.append("status", status);
document.append("amountinml", amountinml);

document.append("time", amountinml);
document.append("donated", "no");


/* document.append("{"pid; pid"},{ "unique; true "}")
mongo.collection.createIndex({pid:1},{unique:true});
db.collection.createIndex( { "pid": pid }, { unique: true } ) */







//Inserting the document into the collection
//database.getCollection("donors2").insertMany(document);
List<Document> list = new ArrayList<Document>();
list.add(document);

collection.insertMany(list);
//System.out.println("Document inserted successfully");
	

	

	 response.sendRedirect("next.jsp");
	out.println("<center><h2><a href='walkin_login.jsp'> Click Here </a> ");

	}
	catch(Exception e)
	{
		 response.sendRedirect("nextinvaliduname.jsp");
		out.println("<center><h2>Sorry the User name is already taken,Please try with other");
		out.println("<center><h2><a href='walkin.jsp'> Donate here </a> to back");
	}
%>
</body>
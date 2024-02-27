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

<html>
<title>Index Page</title>


 <style>
 body{
  overflow-y: scroll;
  background-color: #EBEBEB;  
}
.title{
  margin: 0 auto;
  width: 50%;
  text-align: center;
  padding-bottom: 10px;
  font-family: Rajdhani;
  font-size: 32px;
  color: #2E4B62;
}
.wrapper {
  width: 50%;
  height: 50%;
  margin: 5% auto 0 auto; 
}
.font {
  font-size: 16px;
  font-family: Helvetica, sans-serif;
  color: white;
}
.form {
  text-align: center; 
  -webkit-animation: bounce 1.5s infinite;
  -moz-animation: bounce 1.5s infinite;
  animation: bounce 1.5s infinite;
}
.shadow{
  box-shadow: 0px 0px 20px 5px #AAA;
  opacity: 0.5;
  border-radius: 100px;
  width: 45%; 
  margin: 40px auto 0 auto;
  padding: 0 10px;  
  -webkit-animation: shadow 1.5s infinite;
}
.field-in {
  display: block;
  margin: 10px auto;
  padding: 10px;
  border-radius: 5px;
  border: none;
  width: 50%;
  -webkit-transition: all 0.5s ease 0s;
  -moz-transition: all 0.5s ease 0s;
  transition: all 0.5s ease 0s;
}
.name {
  background-color: #7D75A9;  
  border-bottom: 5px solid #CB64B2;
}
.name:hover{
  background-color: #DF1B76;
  border-bottom: 5px solid #B2175F;
}
.name:focus, .email:focus, .message:focus{
  outline: none;
  padding:15px;
}
.email {
  background-color: #7239C1;  
  border-bottom: 5px solid #502789;
}
.email:hover{
  background-color: #2014CB;
  border-bottom: 5px solid #18108E;
}
.message {   
  background-color: #0F9BE6;
  border-bottom: 5px solid #1185C3;
  overflow: hidden;
  height: 50px;
}
.message:hover{
  background-color: #2DD7BB;
  border-bottom: 5px solid #2BB09A;
  height: 150px;
}
.submit{
  border-radius:5px;
  padding:10px;
  background-color: #EE78D1;  
  border: none;
  border-bottom: 5px solid #CB64B2;  
  -webkit-transition: all 0.5s ease 0s;
  -moz-transition: all 0.5s ease 0s;
  transition: all 0.5s ease 0s;
}
.submit:hover{
  -webkit-transform: translate(0, 4px);
  border-bottom: 2px solid #CB64B2;  
  box-shadow: inset 0px 0px 10px 10px #CF5DB2;
  cursor: pointer;
}
::-webkit-input-placeholder {
   color: white;
}

:-moz-placeholder { 
   color: white;
}

::-moz-placeholder { 
   color: white; 
}

:-ms-input-placeholder {  
   color: white;  
}

@-webkit-keyframes bounce{
  0%{
    
  }
  50%{
    -webkit-transform: translate(0, 8px);
  }
}
@-moz-keyframes bounce{
  0%{
    
  }
  50%{
    -moz-transform: translate(0, 8px);
  }
}
@keyframes bounce{
  0%{
    
  }
  50%{
    transform: translate(0, 8px);
  }
}
@-webkit-keyframes shadow{
  0%{
    
  }
  50%{
    opacity: 0.8;
    width: 50%;
  }
}
@-moz-keyframes shadow{
  0%{
    
  }
  50%{
    opacity: 0.8;
    width: 50%;
  }
}
@keyframes shadow{
  0%{
    
  }
  50%{
    opacity: 0.8;
    width: 50%;
  }
}


 
 </style>
<body>
 
 
<%
int paid=1001;
try    
{
	//out.println("entered");
	MongoClient mongo = new MongoClient("localhost", 27017);
	  DB database = mongo.getDB("DPS");

	  DBCollection collection = database.getCollection("patient appointment");

	  DBObject sort = new BasicDBObject();
	  sort.put("paid", -1);
	  
	  
	    BasicDBObject whereQuery = new BasicDBObject();	  
	  
	  BasicDBObject fields = new BasicDBObject();
	    fields.put("paid",1);
	   // fields.put("hospital name",2);
	    
	  DBCursor cursor = collection.find(whereQuery,fields).sort(sort).limit(1);
	  while(cursor.hasNext()) {
	   String s=cursor.next().toString();
	 //out.println(s);
	 int x=s.lastIndexOf(":");
	 String s1=s.substring(x+3,x+7);
	 //out.println("<br><br><br><br><br><br><br>"+s1);
	 
	 paid=Integer.parseInt(s1)+1;
	 //out.println(paid);
	 
	     
	   
	  }

}
catch(Exception e)
{

	paid=1001;
	//out.println("<br><br><br><br><br><br><br>"+e);
}

%>
<form action='Patientappoint.jsp'>


 
 <div class="wrapper">
    <div class="title">
      Patient Appointment
    </div>
   
     
      <input type='text' placeholder="Patient APpoint Id"class="name field-in font" name='paid' size=20 value=<%= paid %> readonly>
      
     
     
      <select name='pid' placeholder="Patient Id"class="name field-in font">
       <option>Select Patient Id</option>

  
   

  <%

int pid=100001;
try
{
	MongoClient mongo1 = new MongoClient("localhost", 27017);
	  DB database1 = mongo1.getDB("DPS");

	  DBCollection collection = database1.getCollection("patient22");

	  DBObject sort = new BasicDBObject();
	  sort.put("pid", -1);
	  
	  
	    BasicDBObject whereQuery = new BasicDBObject();	  
	  
	  BasicDBObject fields = new BasicDBObject();
	    fields.put("pid",1);
	   // fields.put("hospital name",2);
	    
	  DBCursor cursor = collection.find(whereQuery,fields);
	  while(cursor.hasNext()) {
	   String s=cursor.next().toString();
	 
	 int x=s.lastIndexOf(":");
	 String s1=s.substring(x+3,x+9);
	 out.println("<br><br>s1:"+s1);
	 out.println("<option>"+s1+"</option>");

	//out.println("<br><br><br><br><br><br><br>"+s1);
	 
	 //pid=Integer.parseInt(s1)+1;
	 //out.println(pid);
	 
	     
	   
	  }

}
catch(Exception e)
{

	pid=10001;
	//out.println("<br><br><br><br><br><br><br><br><br><br><br><br><br><br>"+e);
}

%>
</select>
         


	   <select name='hid' placeholder="Hospital Id"class="name field-in font">
       <option>Select Hospital Id</option>
	
	<%
int hid=0;
try
{
	MongoClient mongo1 = new MongoClient("localhost", 27017);
	  DB database1 = mongo1.getDB("DPS");

	  DBCollection collection = database1.getCollection("hospitalss");

	  DBObject sort1 = new BasicDBObject();
	  sort1.put("hospital id", -1);
	  
	  out.println("Entered2");
	  
	   BasicDBObject whereQuery = new BasicDBObject();	  
	  
	  BasicDBObject fields = new BasicDBObject();
	    fields.put("hospital id",1);
	   // fields.put("hospital name",2);
	    
	  DBCursor cursor = collection.find(whereQuery,fields);
	  while(cursor.hasNext()) {
	   String s=cursor.next().toString();
///out.println(s);
	 int x=s.lastIndexOf(":");
	 String s1=s.substring(x+3,x+6);
	 out.println("<br><br>s1:"+s1);
	 
	 out.println("<option>"+s1+"</option>");
			    
	 
	// hid=Integer.parseInt(s1)+1;
	// out.println(hid);
	 
	    
	   
	  }

}
catch(Exception e)
{

	hid=101;
	out.println("<br><br><br><br><br><br><br>"+e);
}

%>
</select> 
    
	 




 





 
   

  <%

int pidd=100001;
try
{
	MongoClient mongo1 = new MongoClient("localhost", 27017);
	  DB database1 = mongo1.getDB("DPS");

	  DBCollection collection = database1.getCollection("patient22");

	  DBObject sort = new BasicDBObject();
	  sort.put("pid", -1);
	 
	  
	    BasicDBObject whereQuery = new BasicDBObject();	  
	  
	  BasicDBObject fields = new BasicDBObject();
	    fields.put("pid",1);
	   // fields.put("hospital name",2);
	    
	  DBCursor cursor = collection.find(whereQuery,fields);
	  while(cursor.hasNext()) {
	   String s=cursor.next().toString();
	 
	 int x=s.lastIndexOf(":");
	 String s1=s.substring(x+3,x+9);
	 

	//out.println("<br><br><br><br><br><br><br>"+s1);
	 
	 //pid=Integer.parseInt(s1)+1;
	 //out.println(pid);
	 
	     
	   
	  }

}
catch(Exception e)
{

	pid=10001;
	//out.println("<br><br><br><br><br><br><br><br><br><br><br><br><br><br>"+e);
}

%>
</select> 
	
 
  
  
  
  
  
        <input type='date' placeholder="Date" class="name field-in font" name='date' size=20>
  
  
  
  <select name='bagno' placeholder="Patient Id"class="name field-in font">
       <option>Select Plasma Bagno</option>
   

  <%

int pbn=1;
try
{
	MongoClient mongo1 = new MongoClient("localhost", 27017);
	  DB database1 = mongo1.getDB("DPS");

	  DBCollection collection = database1.getCollection("centrifugation");

	  DBObject sort = new BasicDBObject();
	  sort.put("plasma bagno", -1);
	 

	  
	    BasicDBObject whereQuery = new BasicDBObject();	  
	  
	  BasicDBObject fields = new BasicDBObject();
	    fields.put("plasma bagno",7);
	   // fields.put("hospital name",2);
	    
	  DBCursor cursor = collection.find(whereQuery,fields);
	  while(cursor.hasNext()) {
	   String s=cursor.next().toString();
	 
	 int x=s.lastIndexOf(":");
	 String s1=s.substring(x+3,x+4);
	 out.println("<br><br>s1:"+s1);
	 out.println("<option>"+s1+"</option>");

	//out.println("<br><br><br><br><br><br><br>"+s1);
	 
	 //pid=Integer.parseInt(s1)+1;
	 //out.println(pid);
	 
	     
	   
	  }

}
catch(Exception e)
{

	pbn=1;
	//out.println("<br><br><br><br><br><br><br><br><br><br><br><br><br><br>"+e);
}

%>
</select> 
	
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
   <input type='time' placeholder="Time" class="name field-in font" name='time' size=20>
  
	 
   <input  class="submit font"  type='submit' value='REGISTER'>
   
      
    	
    <div class="shadow"></div>
  </div>
     </table>
</form>
</body>
</html>



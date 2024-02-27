<html>
<title>Index Page</title>
<body bgcolor="cyan" text="black">
<img src='p2.jpg' width='200' height='100' style='position:absolute;top:100pt;left:10pt'>

<center><h1>DONATE PLASMA SAVE LIVES
</center>
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
    
<h3><a href='patient.jsp' style='text-decoration:none'>PATIENT</a> |
<a href='donor.jsp' style='text-decoration:none'>DONOR</a> |
<a href='alogin.jsp' style='text-decoration:none'>Admin</a> |
<a href='about.jsp' style='text-decoration:none'>About Us</a> |
<a href='contact.jsp' style='text-decoration:none'>Contact Us</a> |

<form name='f1' method='post' action='Verification.jsp'>



<table border='1' bgcolor='orange' style='position:absolute;left:300pt;top:300pt'>
    <tr>
	<th align='right'>User Name :</th>
	<td><input type='text' name='t1' size=20></td>
   </tr>
  <tr>
	<th align='right'>PassWord :</th>
	<td><input type='password' name='t2' size=20></td>
	<td><input type='submit' value='Go!'></td>
    </tr>
</table>
</form>
<a href='patient_register.jsp' style='position:absolute;left:300pt;top:250pt'>REGISTER HERE</a>
</body>
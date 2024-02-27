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
.login-box {
  position: absolute;
  top: 60%;
  left: 50%;
  width: 400px;
  padding: 40px;
  transform: translate(-50%, -50%);
  background: rgba(0,0,0,.5);
  box-sizing: border-box;
  box-shadow: 0 15px 25px rgba(0,0,0,.6);
  border-radius: 10px;
}

.login-box h2 {
  margin: 0 0 30px;
  padding: 0;
  color: #fff;
  text-align: center;
}

.login-box .user-box {
  position: relative;
}
.submit{
  border-radius:5px;
  padding:10px;
  background-color: green;  
  border: none;
  border-bottom: 5px green;  
  -webkit-transition: all 0.5s ease 0s;
  -moz-transition: all 0.5s ease 0s;
  transition: all 0.5s ease 0s;
}
.submit:hover{
  -webkit-transform: translate(0, 4px);
  border-bottom: 2px green;  
  box-shadow: inset 0px 0px 10px 10px #CF5DB2;
  cursor: pointer;
}

.login-box .user-box input {
  width: 100%;
  padding: 10px 0;
  font-size: 16px;
  color: #fff;
  margin-bottom: 30px;
  border: none;
  border-bottom: 1px solid #fff;
  outline: none;
  background: transparent;
}
.login-box .user-box label {
  position: absolute;
  top:0;
  left: 0;
  padding: 10px 0;
  font-size: 16px;
  color: #fff;
  pointer-events: none;
  transition: .5s;
}

.login-box .user-box input:focus ~ label,
.login-box .user-box input:valid ~ label {
  top: -20px;
  left: 0;
  color: #03e9f4;
  font-size: 12px;
}

.login-box form a {
  position: relative;
  display: inline-block;
  padding: 10px 20px;
  color: #03e9f4;
  font-size: 16px;
  text-decoration: none;
  text-transform: uppercase;
  overflow: hidden;
  transition: .5s;
  margin-top: 40px;
  letter-spacing: 4px
}

.login-box a:hover {
  background: #03e9f4;
  color: #fff;
  border-radius: 5px;
  box-shadow: 0 0 5px #03e9f4,
              0 0 25px #03e9f4,
              0 0 50px #03e9f4,
              0 0 100px #03e9f4;
}

.login-box a span {
  position: absolute;
  display: block;
}

.login-box a span:nth-child(1) {
  top: 0;
  left: -100%;
  width: 100%;
  height: 2px;
  background: linear-gradient(90deg, transparent, #03e9f4);
  
}

 
.login-box a span:nth-child(2) {
  top: -100%;
  right: 0;
  width: 2px;
  height: 100%;
  background: linear-gradient(180deg, transparent, #03e9f4);
   
  animation-delay: .25s
}
 

.login-box a span:nth-child(3) {
  bottom: 0;
  right: -100%;
  width: 100%;
  height: 2px;
  background: linear-gradient(270deg, transparent, #03e9f4);
  
  animation-delay: .5s
}
 
.login-box a span:nth-child(4) {
  bottom: -100%;
  left: 0;
  width: 2px;
  height: 100%;
  background: linear-gradient(360deg, transparent, #03e9f4);
  
  animation-delay: .75s
}


 
 

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
<title>Index Page</title>
<body>
 
<form action='bloodsearch.jsp'>
</center><h3>



<div class="login-box">
  <h2>Search based on Blood Group </h2>
  
 <center>
    <select class="user-box"  name='bloodgrp' >
      <option>Select Blood Group</option>
		<option>A+</option>
		<option>A-</option>
		<option>B+</option>
		<option>B-</option>
		<option>AB+</option>
		<option>AB-</option>
		<option>O+</option>
		<option>O-</option>	
		</select>
		
    </center> 
 
     <br><br><br>
    <center>   <input class="submit font" type='submit' value='Search'></center> 
     
  
</div>



</form>
</body>
</html>
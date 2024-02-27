<html>
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
<style>
body {
    background-image:    url('https://images.unsplash.com/photo-1497035111255-8bc8464dc267?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3540&q=80');
    background-size:     cover;                      /* <------ */
    background-repeat:   no-repeat;
    background-position: center center; 
      height: 800px;             /* optional, center the image */
}
nav {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	background-color: black;
	color: white;
	padding: 1px;
	text-align: center;
	align-items: center;
	height: auto;
	box-shadow: rgba(9, 30, 66, 0.25) 0px 4px 8px -2px, rgba(9, 30, 66, 0.08) 0px 0px 0px 1px;
}

nav a {
	color: white;
	text-decoration: none;
	padding: 10px 20px;
}
.inav{
	margin-right: 7px;
	font-size: 14px
}
.iabout{
	font-size: 16px;
}
.ishop{
	font-size: 16px;
}
section {
	height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	font-size: 2rem;
	color: white;
}

/* contents */
.container{
	display: flex-wrap;
	padding: 10px;
	padding-left: 100px;
	padding-right: 100px;
	border-radius: 30px;
	background: #e0e0e0;
	box-shadow:  9px 9px 18px #acacac,
             -9px -9px 18px #ffffff;
}
.container:hover{
	border-radius: 30px;
	background: #dde3e4;
	box-shadow: inset 9px 9px 11px #aaafb0,
							inset -9px -9px 11px #ffffff;
		color: #97bdbf;
	cursor: pointer;
}

h2{
	display: flex;
	justify-content: center;
	align-items: center;
	text-align: center;
}
.icontent{
	margin-right: 20px;
}
#portfolio {
	background-color: #ebeef0;
	color: #c2c5cc;
}

#press {
	background-color: #ebeef0;
	color: #c2c5cc;
}

#shop {
	background-color: #ebeef0;
	color: #c2c5cc;
}

#about {
	background-color: #ebeef0;
	color: #c2c5cc;
}


/* mod */
.right{
	float: right;
	display: flex;
	align-items: center;
}
.left{
	float: left;
	display: flex;
	position: fixed;
	margin-top: 0.4%;
	margin-left: -10px;
}
.navs{
	background-color: #444a59;
	float: left;
	margin: 0 5px;
	padding: 11.3px;
	border-radius: 4.5px;
	padding-left: 15px;
	padding-right: 15px;
}
.navs:hover{
	background-color: #63697a;
}
.profile{
	width: 2.5rem;
	height: 2.4rem;
	border-radius: 3px;
	border: none;
	margin-left: -15px;
	margin-right: -9px;
	margin-top: 3px;
}
.codepen{
  width: 2.1rem;
	height: 2.1rem;
	border-radius: 3px;
}
.title{
	position: fixed;
	left: 35px;
	top: 0.1%;
	margin-left: clamp(5px, 5px, 5px);
	font-size: 1.2rem;
}
.one{
	top: 4%;
	color: gray;
	font-size: 0.8rem;
}
.one:hover{
	color: white;
}
.fa-pencil{
	color: white;
	font-size: 0.8rem;
	margin-left: 2px;
}
.fa-pencil:hover{
	color: gray;
}
.fa-heart{
	font-size: 13px;
	color: white;
	height: 43.3px;
	width: 50px;
}

::-webkit-scrollbar {
  display: none;
}

 
:root {
  --width: 250px;  
}

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  height: 100vh;
  display: grid;
  place-items: center;
}

.cards {
  display: flex;
  gap: 1.5rem;
}


.card {
  position: relative;
  width: 200px;
  height: 350px;
  border-radius: 1rem;
  overflow: hidden;
  box-shadow: 0 3px 15px rgba(0,0,0,0.3);
  transition: width 0.5s ease-out;

  &:hover {
    width: var(--width);
  }

  &:hover .card-container h2 {
    transform: rotate(0);
  }

  &:hover .card-container p  {
    opacity: 1;
    transform: translateY(0);
    transition: transform 1s, opacity 0.5s linear 0.3s;
  }

  &:hover::before {
    transform: scale(1.3);
  }

  &::before {
    content: '';
    position: absolute;
    z-index: -1;
    width: 350px;
    height: 350px;
    background-size: cover;
    background-position: center;
    transform: scale(1);
    transition: transform 0.5s ease-in;
  }

  &:nth-of-type(2):before { background-image: url('https://images.unsplash.com/photo-1485163819542-13adeb5e0068?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2487&q=80'); }
  &:nth-of-type(1):before { background-image: url('https://images.unsplash.com/photo-1610322231968-31322d42851f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2236&q=80'); }
 &:nth-of-type(4):before { background-image: url('https://images.unsplash.com/photo-1627740660376-bc7506720b8a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2340&q=80'); }
  &:nth-of-type(5):before { background-image: url('https://images.unsplash.com/photo-1485163819542-13adeb5e0068?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2487&q=80'); }
  &:nth-of-type(6):before { background-image: url('https://images.unsplash.com/photo-1610322231968-31322d42851f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2236&q=80'); }
 &:nth-of-type(7):before { background-image: url('https://images.unsplash.com/photo-1627740660376-bc7506720b8a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2340&q=80'); }
  &:nth-of-type(8):before { background-image: url('https://images.unsplash.com/photo-1485163819542-13adeb5e0068?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2487&q=80'); }
  &:nth-of-type(9):before { background-image: url('https://images.unsplash.com/photo-1610322231968-31322d42851f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2236&q=80'); }
 &:nth-of-type(10):before { background-image: url('https://images.unsplash.com/photo-1627740660376-bc7506720b8a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2340&q=80'); }
  &:nth-of-type(11):before { background-image: url('https://images.unsplash.com/photo-1485163819542-13adeb5e0068?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2487&q=80'); }
  &:nth-of-type(12):before { background-image: url('https://images.unsplash.com/photo-1610322231968-31322d42851f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2236&q=80'); }
 &:nth-of-type(13):before { background-image: url('https://images.unsplash.com/photo-1627740660376-bc7506720b8a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2340&q=80'); }
  &:nth-of-type(14):before { background-image: url('https://images.unsplash.com/photo-1485163819542-13adeb5e0068?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2487&q=80'); }
  &:nth-of-type(15):before { background-image: url('https://images.unsplash.com/photo-1610322231968-31322d42851f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2236&q=80'); }
 &:nth-of-type(16):before { background-image: url('https://images.unsplash.com/photo-1627740660376-bc7506720b8a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2340&q=80'); }
  &:nth-of-type(17):before { background-image: url('https://images.unsplash.com/photo-1485163819542-13adeb5e0068?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2487&q=80'); }
  &:nth-of-type(18):before { background-image: url('https://images.unsplash.com/photo-1610322231968-31322d42851f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2236&q=80'); }

  & .card-container {
    position: absolute;
    left: 50%;
    bottom: 25%;
    transform: translateX(-50%);
    text-align: center;
    font: 900 1rem helvetica,sans-serif;
    color: white;

    & h2 {
      font-size: 1.1rem;
      letter-spacing: -1px;
      text-transform: uppercase;
      transform: rotate(90deg);
      transition: transform 0.5s;
    }
  
    & p {
      position: relative;
      width: var(--width);
      font-size: 0.75rem;
      font-weight: 100;
      line-height: 1.6;
      color: rgba(255,255,255,0.75);
      margin-top: 0.5rem;
      padding: 0 1.2rem;
      transform: translateY(2rem);
      opacity: 0;
    }
  }
}</style>
<br><br><br>
 
	<nav>
	<br>
		<div class="left">
		 
		<a class="title" href="index.jsp">Home <i class="fa fa-pencil"></i></a>
		 
		</div>
		
		<div class="right">
		 
		<a class="navs" href="admin.jsp">Admin</a>
		<a class="navs" href="walkin.jsp">  Ready to Donate</a>
		<a class="navs" href="walkin_login.jsp">Donate Here</a>
		<a class="navs" href="bloodcampdonor.jsp">Blood Camps</a>
		<a class="navs" href="contact.jsp">Contact Us</a>
		 
	</nav>


<center><h1 style="color: violet">Blood Camps</h1></center>
<center><h2 style="color: cyan">Save the date, and Please do Donate</h2></center>

<%
         try{
	
        	
            //Creating a MongoDB client
            MongoClient mongo = new MongoClient( "localhost" , 27017 );
            //Connecting to the database
            MongoDatabase database = mongo.getDatabase("DPS");
            //Creating a collection object
            MongoCollection<Document> collection = database.getCollection("camp");
            //Retrieving the documents
            
            
            
     
            FindIterable<Document> iterDoc = collection.find();
           Iterator it = iterDoc.iterator();
           while(it.hasNext())
           {
        	   
        	  out.println(" <main class='cards'>");
        	   out.println("<div class='card'>");
        	    out.println(" <div class='card-container'>");
        	      
        	      
        	       
        	   
        	   String s=it.next().toString();
        	   //out.println(s);
        	   StringTokenizer str=new StringTokenizer(s,",=}");
        	   int count=0;
        	   while(str.hasMoreTokens())
        	   {
        		 
        			count++;
        			String key=str.nextToken();
					String value=str.nextToken();
					
        		    if(count==3)
						out.println("<h2 style='color: orange;'>Event: "+value+"</h2>");
        		    if(count==4)
        		    	out.println("<h3 style='color: green;'>Location : "+value+"</h3>");
        		    if(count==5)
        		    	out.println("<h3 style='color: cyan;'> Date : "+value+"</h4>");
        		    out.println("<br>");
        		    if(count==6)
        		    	out.println("<h5>Start time : "+value+" </p>");
        		    if(count==7)
        		    	out.println("<h5>End time : "+value+" </p>");
        		    if(count==8)
        		    	out.println("<h5>Status : "+value+" </p>");
        		    
        		   
        		    	
        	   	 // out.println("</tr>");
        	   }
        	    out.println("</div>");
        	    out.println("</div>");
        	 
        	   //out.println("<tr><td>"+it.next()+"</td></tr>");
           }
         
          
           out.println("</div>");
   	    out.println("</div>");
            
            out.println("</table>");
			
            }catch(Exception e)
{	
		out.println(e);
}         
          
            
%>
	
 
</main>
</html>
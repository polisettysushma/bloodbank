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
    background-image:    url('https://images.unsplash.com/photo-1605802905116-e35c1dee9082?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3387&q=80');
    background-size:     cover;                      /* <------ */
    background-repeat:   no-repeat;
    background-position: center center; 
      height: 800px;             /* optional, center the image */
}
nav {
  margin: 27px auto 0;

  position: relative;
  width: 520px;
  height: 50px;
  background-color: #34495e;
  border-radius: 8px;
  font-size: 0;
}
nav a {
  line-height: 50px;
  height: 100%;
  font-size: 15px;
  display: inline-block;
  position: relative;
  z-index: 1;
  text-decoration: none;
  text-transform: uppercase;
  text-align: center;
  color: white;
  cursor: pointer;
}
nav .animation {
  position: absolute;
  height: 100%;
  top: 0;
  z-index: 0;
  transition: all .5s ease 0s;
  border-radius: 8px;
}
a:nth-child(1) {
  width: 100px;
}
a:nth-child(2) {
  width: 160px;
}
a:nth-child(3) {
  width: 100px;
}
a:nth-child(4) {
  width: 160px;
}
 
nav .start-home, a:nth-child(1):hover~.animation {
  width: 100px;
  left: 0;
  background-color: #1abc9c;
}
nav .start-about, a:nth-child(2):hover~.animation {
  width: 125px;
  left: 115px;
  background-color: #e74c3c;
}
nav .start-blog, a:nth-child(3):hover~.animation {
  width: 110px;
  left: 255px;
  background-color: #3498db;
}
nav .start-portefolio, a:nth-child(4):hover~.animation {
  width: 140px;
  left: 370px;
  background-color: #9b59b6;
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

<nav>



<a href='admin.jsp'>Admin</a> |
<a href='patient_register.jsp'>Walk in</a> |
<a href='donor1.jsp'>Main Donor</a> |
<a href='donor.jsp'>Donor</a> |
 

  
  <div class="animation start-home"></div>
</nav>


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
        		    	
						out.println("<h2 style='color: orange;'>"+value+"</h2>");
        		    if(count==4)
        		    	out.println("<h3 style='color: green;'>Location : "+value+"</h3>");
        		    if(count==5)
        		    	out.println("<h4 style='color: gold;'> Date : "+value+"</h4>");
        		    if(count==6)
        		    	out.println("<p>Blood Group : "+value+"</p>");
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
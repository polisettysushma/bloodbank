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
		String hname=request.getParameter("hname");
		String hdesc=request.getParameter("hdesc");
		String hloc=request.getParameter("hloc");
		String hphone=request.getParameter("hphone");
		String hkey=request.getParameter("hkey");
	

MongoClient mongo = new MongoClient( "localhost" , 27017 );
//Connecting to the database
MongoDatabase database = mongo.getDatabase("DPS");
MongoCollection<Document> collection =
database.getCollection("hospital22");
//database.createCollection("donor2");
 

//Preparing a document
Document document = new Document();
 

document.append("hname", hname);
document.append("hdesc", hdesc);
document.append("hloc", hloc);
document.append("hphone", hphone);
document.append("hkey", hkey);


document.append("status", "Not Approved");




/* document.append("{"pid; pid"},{ "unique; true "}")
mongo.collection.createIndex({pid:1},{unique:true});
db.collection.createIndex( { "pid": pid }, { unique: true } ) */







//Inserting the document into the collection
//database.getCollection("donors2").insertMany(document);
List<Document> list = new ArrayList<Document>();
list.add(document);

collection.insertMany(list);
//System.out.println("Document inserted successfully");
	

	

	 response.sendRedirect("hospital_login.jsp");
	out.println("<center><h2><a href='hospital_login.jsp'> Click Here </a> ");

	}
	catch(Exception e)
	{
		 response.sendRedirect("nextinvalidunamehospital.jsp");
		out.println("<center><h2>Sorry the User name is already taken,Please try with other");
		out.println("<center><h2><a href='walkin.jsp'> Donate here </a> to back");
	}
%>
</body>
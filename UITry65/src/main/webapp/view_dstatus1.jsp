<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

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
<form action='view_dstatus2.jsp'>

<%
	String s1=request.getParameter("t1");
       //out.println(s1);    
       
%>
 
 <div class="wrapper">
    <div class="title">
      Donor Status Update
    </div>
   
     
   <input class="name field-in font"  type='text' name='t1' value= <%= s1 %> readonly> 
 <h2 style="color:orange" class="name field-in font">Description</h2>
 <textarea class="name field-in font" placeholder="Description"  name='t2' rows=3 cols=20> </textarea> 
 
<input  class="submit font" type='submit' value='Update'>
    	
    <div class="shadow"></div>
  </div>
</form>
</body>
</html>
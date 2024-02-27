<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<style>
body {
    background-image:    url('https://images.unsplash.com/photo-1603827457577-609e6f42a45e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3431&q=80');
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
 
 
 
h1 {
  text-align: center;
  margin: 40px 0 40px;
  text-align: center;
  font-size: 30px;
  color: #ecf0f1;
  text-shadow: 2px 2px 4px #000000;
  font-family: 'Cherry Swash', cursive;
}

p {
    position: absolute;
    bottom: 20px;
    width: 100%;
    text-align: center;
    color: #ecf0f1;
    font-family: 'Cherry Swash',cursive;
    font-size: 16px;
}

span {
    color: #2BD6B4;
}
</style>
<title>Insert title here</title>
</head>
<body>

<h1>Donate Plasma Save Lives</h1>

<nav>



<center>

<a href='walkin.jsp'>Walk In</a> |
<a href='bloodcamp.jsp'>Blood Camp</a> |

</center>
  
  <div class="animation start-home"></div>
</nav>

 
</body>
</html>
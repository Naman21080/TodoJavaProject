<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>
<link rel="stylesheet" href="style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384- T3c6CoIi6uLr49TneNEoa7RxnatzjcDSCmG1MXxSR1GASXEV/Dwwykc2MPK8M2HN" crossorigin-"anonymous">
</head>
<body>
 <nav > 
  <ul>
     <li id="logo">Java Guides</li>
     <a href="welcome"  class="link-offset-2 link-opacity-10-hover link-underline link-underline-opacity-0 link-dark"><li>Home</li></a>
     <a href="todos"  class="link-offset-2 link-opacity-10-hover link-underline link-underline-opacity-0 link-dark"><li >Todos</li></a>
     <a href="logout" class="link-offset-2 link-opacity-10-hover link-underline link-underline-opacity-0 link-dark" ><li>Logout</li></a>
  </ul>
  </nav>


<div id="page"><p>Home Page</p></div>
<div id="come"><p>Welcome admin!! <a href="todos" class="link-offset-2 link-underline link-underline-opacity-0" >Click here</a> to manage your todo's</p></div>

</body>
</html>
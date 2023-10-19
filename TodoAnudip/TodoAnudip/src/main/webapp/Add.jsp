<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert</title>
<link rel="stylesheet" href="style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384- T3c6CoIi6uLr49TneNEoa7RxnatzjcDSCmG1MXxSR1GASXEV/Dwwykc2MPK8M2HN" crossorigin-"anonymous">
</head>
<body>
<nav >
    <ul>
     <li id="logo">Java Guides</li>
     <a  href="welcome" class="link-offset-2 link-underline link-opacity-10-hover link-underline-opacity-0 link-dark"><li>Home</li></a>
     <a href="todos"  class="link-offset-2 link-opacity-10-hover link-underline link-underline-opacity-0 link-dark"><li >Todos</li></a>
     <a href="logout" class="link-offset-2 link-underline link-opacity-10-hover link-underline-opacity-0 link-dark"><li>Logout</li></a>
    </ul>
  </nav>
  

   <div class="container mt-4 ">
  <div class="bg-primary text-white display-4 px-2">Add Todo</div>
  
  <form action="addRecord" method="get" class="border border-primary px-2">
<div >
<label for="description" class="mt-2">Description</label><br/>
<input type="text" class="form-control" id="description" name="description" placeholder="Enter Todo">
</div>

<div>
<label for="target_date " class="mt-2 ">Target Date</label><br/>
<input type="date" class="form-control" id="target_date" name="target_date" value="2000-08-21">
</div>

<input type="submit" class="btn btn-success mt-4 mb-2 " value="save">
</form>
  </div>
  

  
</body>
</html>
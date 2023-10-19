<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<link rel="stylesheet" href="style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384- T3c6CoIi6uLr49TneNEoa7RxnatzjcDSCmG1MXxSR1GASXEV/Dwwykc2MPK8M2HN" crossorigin-"anonymous">
</head>
<body>
  <nav >
    <ul>
     <li id="logo">Java Guides</li>
     <a href="welcome" class="link-offset-2 link-underline link-opacity-10-hover link-underline-opacity-0 link-dark"><li>Home</li></a>
    <a href="todos"  class="link-offset-2 link-opacity-10-hover link-underline link-underline-opacity-0 link-dark"><li >Todos</li></a>
     <a href="logout" class="link-offset-2 link-underline link-opacity-10-hover link-underline-opacity-0 link-dark" ><li>Logout</li></a>
    </ul>
  </nav>
  
  <div class="container ">
     <button class="btn btn-primary mb-4"><a class="link-offset-2 link-underline link-underline-opacity-0 link-light " href="add" >Add Todo</a></button>
  </div>
  <div class="container">
     <table class="table table-striped table-hover table-bordered">
    	<thead>
    		<tr>
    			<th scope="col" class="bg-primary text-white text-center" colspan="3"><h2>List of TODO's</h2></th>
    		</tr>
    		<tr>
    			<th scope="col">Description</th>
    			<th scope="col" colspan="2">Target Date</th>
    		</tr> 		
    	</thead>
    	<tbody>
    		<c:forEach items="${object}" var="todo">
    			<tr>
    				<td scope="row">${todo.description}</td>
    				<td>${todo.target_date}</td>
    				<td colspan="2">
    					<a href="update?id=${todo.id}"><button type="button" class="btn btn-success">Update</button></a>
    					<a href="delete?id=${todo.id}"><button type="button" class="btn btn-warning">Delete</button></a>
    				</td>
    			</tr>
    		</c:forEach>
    	</tbody>
     </table>
  </div>
    
</body>
</html>
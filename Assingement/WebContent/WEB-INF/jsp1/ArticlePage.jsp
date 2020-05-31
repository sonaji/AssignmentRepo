<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="l"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</head>
<body class="container">

<form>
  
     <a href="ArticleNew.html" class="btn btn-warning col-2 btn-md"  style="margin-left: 75px;">New-Article</a><br><br>
    <a href="viewArticle.html" class="btn btn-primary col-2 btn-md"  style="margin-left: 75px;">View Article</a><br><br>
  

 <div style="color: red;  font-style: italic; font-size: 30px"  > ${message}
   
   </div>
    <div style="color: red;  font-style: italic; font-size: 30px"  > ${article}
    
    <h3>Article List :</h3>
   
   
   </form><table border="3" width="90%%">
<tr><th>Id</th>
<th>Title</th>
<th>Body</th>
<th>Auther</th>


</tr>
<l:forEach var="w" items="${list}">
<tbody><tr>
<td><l:out value="${w.id }"/></td>
<td><l:out value="${w.title }"/></td>
<td><l:out value="${w.body}"/></td>
<td><l:out value="${w.auther}"/></td>


</tr>
</tbody>



</l:forEach>


</table>
<div class="row">
<div class="col-9">
<nav aria-label="Page navigation example">
  <ul class="pagination">
    <li class="page-item"><a class="page-link" href="viewArticle.html">Previous</a></li>
    <li class="page-item"><a class="page-link" href="viewArticle.html">1</a></li>
    <li class="page-item"><a class="page-link" href="viewArticle.html">2</a></li>
    <li class="page-item"><a class="page-link" href="viewArticle.html">3</a></li>
    <li class="page-item"><a class="page-link" href="viewArticle.html">Next</a></li>
  </ul>
</nav>
</div>
   </div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<body class="container" style="background-color: orange;">

               <form action="aftersaveArticle.html">
                
                 <div class="row">
                 <div class="col-md-12">
                <h1>Artice page</h1>
                 </div>
                 </div>
                 <div class="row">
                
                  <div class="col-md-2">
                 
                                <input id="fname" name="title" type="text" required="required" placeholder="Title :"  class="form-control">
                          
                            </div>
                
                 </div>
                
                 
                <div class="row">
               
                  <div class="col-md-8">
                                <textarea class="form-control" id="message" required="required" name="body" placeholder="Body" rows="12"></textarea>
                            </div>
                
                 </div>
               
               
                 <div class="row">
                
                  <div class="col-md-2">
                  
                                <input id="fname" name="auther" type="text" required="required" placeholder="Auther :"  class="form-control">
                          
                </div>
                 </div>
                 <div class="row">
                  <div class="col-md-1">
                                <input id="fname" name="submit" class="btn btn-primary" type="submit" required="required" value="Post"  class="form-control">
                            </div>
                
                 </div>
                 
                </form>
            

</body>
</html>
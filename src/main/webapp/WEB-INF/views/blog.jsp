<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="header.jsp"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BLOG</title>
<script src= "http://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>

<style>
div#header, div#footer {
    padding: 10px;
    color:purple;
    background-color: #ff00ff;
    
    body {font-family: "Lato", sans-serif}
    
    
    h1 {
    color: blue;
    font-family: verdana;
    font-size: 300%;

}
</style>
</head>
<body>

<div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                <ul class="nav navbar-nav">
                    
                    <li>
                        <a href="home" data-toggle="tooltip" data-placement="left" title="GO TO HOME!"><span class="glyphicon glyphicon-home"></span></a>
                    </li>
                </ul>
</div>




<c:url var="addAction" value="/blog/add"></c:url>

<div class="row">
          <div class="col-md-12">
          <div class="header">
            <h1 style="color:red">Add New Blog</h1>
            </div>
          </div>
        </div>

<div class="well">
	
			   

              <form:form role="form" commandName="blog" action="${addAction}">
               <form:errors path="title" cssClass="error"/><br/>
               <form:errors path="content" cssClass="error"/><br/>
			   
                <div class="form-group">
                  <label class="control-label" style="color:red">Title</label>
                  <form:input class="form-control" placeholder="Enter Title" type="text" path="title"/>
                </div>
               
                <div class="form-group">
                  <label class="control-label" style="color:red">Content
                  </label>
                  <form:textarea class="form-control" placeholder="Enter Content" rows="10" path="content"></form:textarea>
                </div>
               
                <button type="submit" class="btn btn-default" style="color:red">Post</button>
              </form:form>
            </div>
            
            <div  ng-app="repeatSample" class="section">
	<div class="container">
	




		<!-- Angular script -->
		

		<script>
			var b = ${blogs};

			angular.module('repeatSample', []).controller('repeatController',
					function($scope) {
						$scope.blogs = b;

						$scope.sort = function(keyname) {
							$scope.sortKey = keyname; //set the sortKey to the param passed
							$scope.reverse = !$scope.reverse; //if true make it false and vice versa
						}

					});
		</script>

		

		<div class="bs-component" ng-controller="repeatController">

			<form class="form-inline">
				<div class="form-group">
					<label style="color:red">Search</label> <input type="text" ng-model="search"
						class="form-control" placeholder="Search">
				</div>
			</form>


			

			<table class="table table-striped table-hover">
				<thead>
					<tr>

						
						<th ng-click="sort('title')" style="color:red">Title <span
							class="glyphicon sort-icon" ng-show="sortKey=='name'"
							ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</th>
						<th ng-click="sort('content')" style="color:red">Content <span
							class="glyphicon sort-icon" ng-show="sortKey=='price'"
							ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</th>
						<th ng-click="sort('user')" style="color:red">User <span
							class="glyphicon sort-icon" ng-show="sortKey=='category'"
							ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</th>
						<th ng-click="sort('date')" style="color:red">Date <span
							class="glyphicon sort-icon" ng-show="sortKey=='category'"
							ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</th>
						

					</tr>
				</thead>
				<tbody>
					
					<tr ng-repeat="blog in blogs|orderBy:sortKey:reverse|filter:search">
						<td>{{blog.title}}</td>
						<td>{{blog.content}}</td>
						<td>{{blog.user}}</td>
						<td>{{blog.date}}</td>
					</tr>
				</tbody>
			</table>

		</div>
	</div>
</div>

<!-- Footer -->
<footer class="w3-container w3-padding-64 w3-center w3-red w3-light-red w3-xlarge">
  
  <p class="w3-medium">Copyright @2016 Collaboration Site <a href="http://www.w3schools.com/w3css/default.asp" target="_blank"></a></p>
</footer>


</body>
</html>
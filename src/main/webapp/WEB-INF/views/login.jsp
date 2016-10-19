<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="header.jsp"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>



<style>
div#header, div#footer {
    padding: 10px;
    color: white;
    background-color: #ff00ff;
    
    
    
}





/* footer*/
#footer{background:#336; padding-top:30px; padding-bottom:30px; text-align:center; border-top:solid 4px #303}
#footer p{padding:10px; color:#fff}
.dont-remove{color:#fff !important; text-decoration:none !important; font-weight:700}
.rights{display:inline-block; border-top:solid 1px rgba(103, 58, 183, 0.3)}

</style>
</head>
<body style="color: #ffbf00; ">
	<section id="services" class="services bg-danger">
      <div class="container">
        <div class="row text-center">
          <div class="col-lg-10 col-lg-offset-1">
            <h2>
              <i class="fa fa-sign-in" aria-hidden="true"></i>
              <div id="header">
<h1>SignIn</h1>
</div>
              
              <br></h2>
            <hr class="small">
            <div class="section">
              <form class="form-horizontal" role="form" action="perform_login" method="post">
              
              
              <c:if test="${not empty error}">
                    <div class="error" style="color: #ffcccc;">${error}</div>
                </c:if>
                <div class="span9 center">
                   	<c:if test="${not empty msg}">
                 		<div class="msg">${msg} <br><br></div>
            		</c:if>
            		
                <div class="form-group">
                  <div class="col-sm-2">
                    <label for="inputEmail3" class="control-label">Username</label>
                  </div>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="username" placeholder="Username">
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-2">
                    <label for="inputPassword3" class="control-label">Password</label>
                  </div>
                  <div class="col-sm-10">
                    <input type="password" class="form-control" name="password" placeholder="Password">
                  </div>
                </div>
                
                <div class="form-group">
                  <button style="color:#80ff00; " type="submit" class="btn btn-default">Sign in</button>
                </div>
                
                </div>
               
                
              </form>
              
              
            
              <footer id="footer">
<div class="footer">
      
<p class="rights">Copyright @2016 Collaboration Site<!-- dont remove link --><a class="dont-remove" href="http://webdeveloperbareilly.in" target="_blank"></a></p>


</div>
</footer>

            </div>
          </div>
        </div>
      </div>
    </section>
</body>
</html>   


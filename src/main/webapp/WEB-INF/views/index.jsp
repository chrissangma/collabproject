<!DOCTYPE html>



<html>


<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<style>
body {font-family: "Lato", sans-serif}
.mySlides {display: none}
</style>
<body>

<!-- Navbar -->
<div class="w3-top">
<ul class="w3-navbar w3-red w3-card-2 w3-left-align">
  <li class="w3-hide-medium w3-hide-large w3-opennav w3-right">
    <a class="w3-padding-large" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
  </li>
  <li><a href="home" class="w3-hover-none w3-hover-text-grey w3-padding-large">HOME</a></li>
  <li class="w3-hide-small"><a href="login" class="w3-padding-large">Login</a></li>
  <li class="w3-hide-small"><a href="forum" class="w3-padding-large">Forum</a></li>
  <li class="w3-hide-small"><a href="blog" class=" w3-padding-large">BLOG</a></li>
   <li class="w3-hide-small"><a href="register" class=" w3-padding-large">Register</a></li>
   <li class="w3-hide-small"><a href="logout" class=" w3-padding-large">Logout</a></li>
  <li class="w3-hide-small w3-dropdown-hover">
    <a href="javascript:void(0)" class="w3-hover-none w3-padding-large w3-red" title="More">MORE <i class="fa fa-caret-down w3-red"></i></a>
    <div class="w3-dropdown-content w3-red w3-card-4">
    <c:if test"${pageContext.request.userPrincipal.name !=null}">
   
    <c:if test="${pageContext.request.userPrincipal.name != 'admin'}"> 
      <a href="chatPage">Chat </a>
      
      </c:if>
      </c:if>
     
      <a href="Aboutus">About us </a>
    </div>
  </li>
  
</ul>
</div>

<!-- Navbar on small screens -->
<div id="navDemo" class="w3-hide w3-hide-large w3-hide-medium w3-top" style="margin-top:46px">
  <ul class="w3-navbar w3-left-align w3-black">
    <li><a class="w3-padding-large" href="logout">Logout</a></li>
    <li><a class="w3-padding-large" href="#">Chat</a></li>
    <li><a class="w3-padding-large" href="forum">Forum</a></li>
    <li><a class="w3-padding-large" href="blog">BLOG</a></li>
    <li><a class="w3-padding-large" href="register">Register</a></li>
  </ul>
</div>

<!-- Page content -->
<div class="w3-content" style="max-width:1800px;margin-top:46px">
</div>
  <!-- Automatic Slideshow Images -->
  <div class="mySlides w3-display-container">
    <img src="http://tszulczewski.com/wp-content/uploads/2016/04/collaboration-2.jpg" style="width:100%">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
      <h3></h3>
      <p><b>We provide the best learning opportuinity</b></p>
    </div>
  </div>
  <div class="mySlides w3-display-container">
    <img src="http://chs.coronadousd.net/static/media/uploads/Coronado%20Unified%20School%20District/departments/technology/Tech%20Images/SNIP-of-Collaboration-Graphic.png" style="width:105%">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
      
      <p><b>Carreer path is important</b></p>
    </div>
  </div>
  <div class="mySlides w3-display-container">
    <img src="https://networkingexchangeblog.att.com/wp-content/uploads/2016/07/072516-whats-your-collaboration-style_750.jpg" style="width:100%">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
     
      <p><b>Alone we can do so little; together we can do so much </b></p>
    </div>
  </div>
   <!-- The Band Section -->
  <div class="w3-container w3-content w3-center w3-padding-40" style="max-width:800px">
    <h2 class="w3-wide">Collaboration Site</h2>
    <p class="w3-opacity"><i> Collaboration is highly diversified teams working together inside and outside a company with the purpose to create value by improving innovation, customer relationships and efficiency while leveraging technology for effective interactions in the virtual and physical space.</i></p>
    <div class="w3-row w3-padding-20">
    </div>
  </div>

  <!-- The Tour Section -->
   
  <!-- The Contact Section -->
  <div class="w3-container w3-content w3-padding-40" style="max-width:800px">
    <h2 class="w3-wide w3-center">CONTACT US</h2>
    <p class="w3-opacity w3-center"><i>We Would Love to Help you to Upgrade your Knowledge</i></p>
    <div class="w3-row w3-padding-32">
      <div class="w3-col m6 w3-large w3-margin-bottom">
        <i class="fa fa-map-marker" style="width:30px;"></i> Bangalore, India<br>
        <i class="fa fa-phone" style="width:30px"></i> Phone: +00 151515<br>
        <i class="fa fa-envelope" style="width:30px"> </i> Email: rajchris9@gmail.com<br>
      </div>
      </div>>
  <!-- End Page Content -->
  </div>
<!-- Footer -->
<footer class="w3-container w3-padding-64 w3-center w3-opacity w3-light-grey w3-xlarge">
 
  <p class="w3-medium">Powered by <a href="http://www.w3schools.com/w3css/default.asp" target="_blank">Chris</a></p>
</footer>

<script>
// Automatic Slideshow - change image every 4 seconds
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}
    x[myIndex-1].style.display = "block";
    setTimeout(carousel, 4000);
}

// Used to toggle the menu on small screens when clicking on the menu button
function myFunction() {
    var x = document.getElementById("navDemo");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else {
        x.className = x.className.replace(" w3-show", "");
    }
}

// When the user clicks anywhere outside of the modal, close it
var modal = document.getElementById('ticketModal');
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>



 <!-- jQuery -->
    <script src="vendor/jquery/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

    <!-- Google Maps API Key - Use your own API key to enable the map feature. More information on the Google Maps API can be found at https://developers.google.com/maps/ -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRngKslUGJTlibkQ3FkfTxj3Xss1UlZDA&sensor=false"></script>

    <!-- Theme JavaScript -->
    <script src="js/grayscale.min.js"></script>

</body>
</html>

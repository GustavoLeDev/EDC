<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
 <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="EKONA MINGA KERVOISE GUSTAVE">
    <meta name="generator" content="Hugo 0.84.0">
    <title>EDC</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/heroes/">

    

    <!-- Bootstrap core CSS -->
<link href="./assets/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="style.css" rel="stylesheet">
	<script src="./chart.js-3.5.1/package/dist/chart.min.js"></script>
	
  </head>
<body>
<div class="container col-xl-10 col-xxl-8 px-4 py-5">
	<div class="modal modal-tour position-static d-block py-5" tabindex="-1" role="dialog" id="modalChoice" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
		<div class="modal-content rounded-4 shadow">
		  <div class="modal-body p-4 text-center">
			<h5 class="mb-0">Vous avez un nouveau code secret!!</h5>
			<p class="mb-0">Un mail contenant votre code secret <br/>a été envoyé à l'adresse <c:out value='${requestScope.email}' /></p>
		  </div>
		  <div class="modal-footer flex-nowrap p-0">
			<a href = "login.jsp">
			<button type="button"  class="btn btn-lg btn-link fs-6 text-decoration-none col-6 m-0 rounded-0 border-right" data-bs-dismiss="modal"><strong>OK</strong></button>
			</a>
		  </div>
		</div>
	  </div>
	</div>
</div>
	</script>
	<script src="package/dist/chart.min.js"></script> 
    <script src="assets/dist/js/bootstrap.bundle.min.js"></script>
    <script src="assets/dist/js/jquery.min.js"></script>
 </body>
  <footer class = "fixed-bottom">
		 
    <p>  <img class = "logo" src = "images/logoENSPD.png" />&copy; 2021 ENSPD, Inc. &middot;  </p>
		 
</footer>
</html>
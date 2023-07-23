<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="EKONA MINGA KERVOISE GUSTAVE">
    <title>EDC-Login</title>

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
  </head>
  <body>
       <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" aria-label="Fifth navbar example">
    <div class="container-fluid">
      <a class="navbar-brand logoText" href="#">EDC</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample05" aria-controls="navbarsExample05" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse justify-content-md-center" id="navbarsExample05">
        <ul class="navbar-nav ">
		 <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Accueil</a>
          </li>
          <li class="nav-item">
            <a class="nav-link " aria-current="page" href="#">Mon Choix</a>
          </li>
		  <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-bs-toggle="dropdown" aria-expanded="false">Départements</a>
            <ul class="dropdown-menu" aria-labelledby="dropdown01">
              <li><a class="dropdown-item" href="#">GAM</a></li>
              <li><a class="dropdown-item" href="#">GC</a></li>
			  <li><a class="dropdown-item" href="#">GE</a></li>
              <li><a class="dropdown-item" href="#">GESI</a></li>
			  <li><a class="dropdown-item" href="#">GIT</a></li>
              <li><a class="dropdown-item" href="#">GM</a></li>
              <li><a class="dropdown-item" href="#">GMP</a></li>
			  <li><a class="dropdown-item" href="#">GP</a></li>
              <li><a class="dropdown-item" href="#">QHSEI</a></li>
            </ul>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Statistiques</a>
          </li> 
        </ul>
      </div>
    </div>
  </nav>
  <main>
  <div class="container col-xl-10 col-xxl-8 px-4 py-5">
    <div class="row align-items-center g-lg-5 py-5">
      <div class="col-lg-7 text-center text-lg-start"> 
		<p>
        <h1 class="display-4 fw-bold lh-1 mb-3">EDC - Login</h1>
        <p class="col-lg-10 fs-4" id = "descripT">La plateforme EDC vous permet d'effectuer le choix de la filière dans laquelle
		vous souhaitez poursuivre vos études (ceci s'adresse aux étudiants ayant été admis au niveau 3 de l'ENSPD.
		Pour cela, vous devez entrer votre numéro matricule et votre mot de passe pour vous connecter.</p>
      </div>
      <div class="col-md-10 mx-auto col-lg-5">
        <form class="p-4 p-md-5 border rounded-3 bg-black" action ="authentifier.Login" method ="post">
          <div class="form-floating mb-3">
            <input type="text" class="form-control" id="floatingInput" placeholder="Matricule" name ="matricule" required >
            <label for="floatingInput">matricule</label>
          </div>
          <div class="form-floating mb-3">
            <input type="password" class="form-control" id="floatingPassword" placeholder="Password" name ="password" required>
            <label for="floatingPassword">Mot de passe </label>
          </div>
          <div class="checkbox mb-3">
   
          <button class="w-100 btn btn-lg btn-primary" type="submit">OK</button>
          <hr class="my-4">
          <small class="text-muted">En vous connectant, vous acceptez les conditions de confidentialité de l'université de douala.</small>
		  <label>
               <a href="createPass.Login">Obtenir un code secret(mot de passe)</a>
           </label>
          </div>
        </form>
      </div>
    </div>
  </div>
</main>   
  <script src="./assets/dist/js/bootstrap.bundle.min.js"></script>
 </body>

  <footer class = "fixed-bottom">
		 
    <p>  <img class = "logo" src = "images/logoENSPD.png" />&copy; 2021 ENSPD, Inc. &middot;  </p>
		 
</footer>
</html>
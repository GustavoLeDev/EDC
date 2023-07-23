<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     
 
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="EKONA MINGA KERVOISE GUSTAVE">
    <meta name="generator" content="Hugo 0.84.0">
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
    <div class="row align-items-center g-lg-6 py-5">
      <div class="col-md-10 mx-auto col-lg-6">
	     <h1>EDC-Obtenez votre code secret </h1>
        <form class="p-4 p-md-5 border rounded-3 bg-light" action ="createPass.Login" method = "post">
		 <legend class ="error">
		 <img class ="userIcon" src="icons/exclamation-triangle-fill.svg" width="20" height="20">
		 Erreur de Connexion!!!!
		 </legend>
          <div class="form-floating mb-3">
            <input type="login" class="form-control" id="floatingInput" name = "matricule" placeholder="Matricule" required >
            <label for="floatingInput">matricule</label>
          </div>
		  <div class="form-floating">
			<input type="email" class="form-control" id="floatingInput" name = "email" placeholder="nom@exemple.com">
			<label for="floatingInput">Adresse mail</label>
		  </div>
		  <div class="row ">
		  <div class="col-md-7">
              <label for="country" class="form-label bold">Diplôme d'admission</label>
              <select class="form-select" id="diplom" name = "diplome" onchange = "voirSelection(this)" required>
                <option value="" selected disabled>Choisir...</option>
                <option>BACCALAUREAT</option>
				<option>GCE-A/L</option>
              </select>
              <div class="invalid-feedback">
                SVP Faites un choix correct.
              </div>
            </div>

            <div class="col-md-5" >
              <label for="state" class="form-label gray" id ="stateLabel" >Spécialité</label>
              <select class="form-select" id="state" name = "specialite" disabled="true" required>
                <option value="" selected disabled>Choisir...</option>
				<option>BT</option>
                <option>C</option>
				<option>D</option>
				<option>E</option>
				<option>F1</option>
				<option>F2</option>
				<option>F3</option>
				<option>F4</option>
				<option>F4</option>
				<option>F5</option>
				<option>IT</option>
              </select>
              <div class="invalid-feedback">
                SVP Faites un choix correct.
              </div>
            </div>
		  </div>
		  <hr class="my-4">
          <div class="checkbox mb-3">
			<button class="w-100 btn btn-lg btn-primary" type="submit">OK</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</main>   
  <script src="./assets/dist/js/bootstrap.bundle.min.js"></script>
   <script>
		function voirSelection(liste)
		{
			var choix = liste.selectedIndex;
			var valeur = liste.options[choix].value;
			var sl = document.getElementById("stateLabel");
			var state = document.getElementById("state");
			if (valeur == 'BACCALAUREAT')
			{
				sl.className = "form-label bold";
				state.disabled = false;
			}
			else
			{
				sl.className = "form-label gray";
				state.disabled = true;
			}
		}
   </script>
 </body>

  <footer class = "fixed-bottom">
		 
    <p>  <img class = "logo" src = "images/logoENSPD.png" />&copy; 2021 ENSPD, Inc. &middot;  </p>
		 
</footer>
</html>
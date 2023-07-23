<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Armand EMANE">
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
 
  <div class="fixed-top">
     <nav class="navbar navbar-expand-lg navbar-dark bg-dark " aria-label="Fifth navbar example">
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
            <a class="nav-link " aria-current="page" href="#monChoix">Mon Choix</a>
          </li>
		  <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-bs-toggle="dropdown" aria-expanded="false">Orientation</a>
            <ul class="dropdown-menu" aria-labelledby="dropdown01">
              <li><a class="dropdown-item" href="#TAU">TAU</a></li>
              <li><a class="dropdown-item" href="#GCI">GCI</a></li>
              <li><a class="dropdown-item" href="#ROI">ROI</a></li>
			  <li><a class="dropdown-item" href="#TTIC">TTIC</a></li>
              <li><a class="dropdown-item" href="#TCI">TCI</a></li>
              <li><a class="dropdown-item" href="#PEI_GM">PEI_GM</a></li>
			  <li><a class="dropdown-item" href="#gp">GP</a></li>
              <li><a class="dropdown-item" href="#HSSI">HSSI</a></li>
            </ul>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#stats">Statistiques</a>
          </li> 
		  <li class="nav-item">
            <a class="nav-link" href="#listesD">Listes Définitives</a>
          </li> 
        </ul>
      </div>
    </div>
  </nav>
     <div class="container-md user bg-light rounded fixed justify-content">
        <span class=""><c:out value='${etudiant.noms}' /></span>
        <span class=" dropdown-toggle " href="#" id="userAcc" data-bs-toggle="dropdown" aria-expanded="false">
			<img class ="userIcon" src="icons/person-circle.svg" alt="Mon Compte" width="20" height="20">
		</span>
		
            <ul class="dropdown-menu" aria-labelledby="userAcc">
              <li><a class="dropdown-item" href="#"><img src="icons/wrench.svg" width="17" height="17">  Modifier</a></li>
              <li><a class="dropdown-item" href="login.jsp"><img src="icons/x-octagon.svg" width="17" height="17">  Déconnexion</a></li>
            </ul>
		</div>
    </div>
  </div>
  
  <main>
   <div class="container col-xl-10 col-xxl-8 px-4 py-5">
    <section class = "firstE" id = "accueil">
	<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
          <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
          </div>
          <div class="carousel-inner border rounded">
            <div class="carousel-item active " >
             <img class="bd-placeholder-img bd-placeholder-img-lg d-block w-100" height="250em" alt = automobile  src = "images/automobile.jpg" />
              <div class="carousel-caption d-none d-md-block">
                <h5>Génie Automobile et Mécatronique (TAU)</h5>
                <p>Devenez Ingénieur TAU</p>
              </div>
              
            </div>
            <div class="carousel-item">
              <img class="bd-placeholder-img bd-placeholder-img-lg d-block w-100" height="250em" alt = automobile  src = "images/GCI.jpg" />
              <div class="carousel-caption d-none d-md-block">
                <h5>Génie Civil (GCI)</h5>
                <p>Devenez Ingénieur GCI</p>
              </div>
            </div>
            <div class="carousel-item">
			<img class="bd-placeholder-img bd-placeholder-img-lg d-block w-100" height="250em" alt = automobile  src = "images/TTIC.jpg" />
              <div class="carousel-caption d-none d-md-block">
                <h5>Génie Informatique et Télécommunications (TTIC)</h5>
                <p>Devenez Ingénieur Informatique ou des Télécommunications</p>
              </div>
            </div>
          </div>
          <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"  data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
          </button>
          <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"  data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
          </button>
        </div>

	    <hr class="separator" >
	   <p><h2>EDC</h2> est une plateforme qui permet à chaque étudiant ayant été admis au niveau 3 de l'ENSPD d'effectuer le choix de la filière dans laquelle il souhaite
	   poursuivre ses études. Pour celà il est conseillé d'avoir une idée précise des différentes filières qui sont soumises à l'appréciation de l'étudiant afin
	   d'opérer le choix adéquat.
	   <br/>Après avoir effectué dans l'ordre qui lui conviendra le choix de différentes filières, l'étudiant devra télécharger la fiche de choix correspondante, qui
	   attestera de l'effectivité de l'opération.
	   </p>
	   <p><em>NB: Le candidat ne pourra soumettre son choix qu'une seule fois!!!</em>
	   </p>
	   <hr>
	     <div class="col">
            <div class="card">
              <div class="card-header">
                <h5>Filières de l'ENSPD</h5>
              </div>
              <ul class="list-group list-group-flush ">
                <li class="list-group-item centered">
					<span class="col-3"><strong>Code</strong></span>
					<span class="col-8"><strong>Intitulé</strong></span>
				</li>
                <li class="list-group-item centered">
					<span class="col-3">TAU</span>
					<span class="col-8">Technologies Automobiles</span>
				</li>
				 <li class="list-group-item centered">
					<span class="col-3">GCI</span>
					<span class="col-8">Génie Civil</span>
				</li>
				 <li class="list-group-item centered">
					<span class="col-3">TTIC</span>
					<span class="col-8">Télécommunications et Technologies de l'Information et de la Communication</span>
				</li>
				 <li class="list-group-item centered">
					<span class="col-3">ROI</span>
					<span class="col-8">Robotique Indutstrielle</span>
				</li>
				 <li class="list-group-item centered">
					<span class="col-3">TCI</span>
					<span class="col-8">Technologies de Construction Industrielle</span>
				</li>
				 <li class="list-group-item centered">
					<span class="col-3">PEI_GM</span>
					<span class="col-8">Pêche Industrielle/Génie Maritime</span>
				</li>
				 <li class="list-group-item centered">
					<span class="col-3">GP</span>
					<span class="col-8">Génie des Procédés</span>
				</li>
				 <li class="list-group-item centered">
					<span class="col-3">HSSI</span>
					<span class="col-8">Hygiène-Sûreté-Sécurité Industrielle</span>
				</li>
   
              </ul>
              <div class="card-footer">
                <a href="#orientation" class="card-link"><em>En savoir plus ...</em></a>
                
              </div>
            </div>
          </div>
	   
    </section>
	 <div class="b-divider"></div>
	 
	
		 
	 <h2>Mon Choix</h2>
	 <hr class="my-10">
	<section id = "monChoix">
	 <legend class ="<c:out value='${error}' />">
		 <img class ="userIcon" src="icons/exclamation-triangle-fill.svg" width="20" height="20">
		 Erreur!!!! tous les choix sont obligatoires et doivent être différents
		 </legend>
	 <form class=" choixF border rounded" action = "choisir.Login" method ="post">
	  <div class="row choixP">
	  <div class="col-4">
              <label for="country" class="form-label">1<sup>er</sup> Choix</label>
              <select class="form-select" id="firstC" name = "firsC" <c:if test="${choix1 != ''}" >disabled = "true"</c:if> onchange ="firstSelection(this)"  required >
                <option value="" selected disabled> <c:out value='${choix1}' /></option>
                <option>TAU</option>
				<option>GCI</option>
				<option>ROI</option>
				<option>TTIC</option>
				<option>TCI</option>
				<option>PEI_GM</option>
				<option>GP</option>
				<option>HSSI</option>
              </select>
              <div class="invalid-feedback">
                SVP Faites un choix correct.
              </div>
       </div>
	   <div class="col-4">
              <label for="country" class="form-label">2<sup>e</sup> Choix</label>
              <select class="form-select" id="secondC" name ="secondC" onchange ="secondSelection(this)" required <c:if test="${choix2 != ''}" >disabled = "true"</c:if>>
                <option value="" selected disabled><c:out value='${choix2}' /></option>
                <option>TAU</option>
				<option>GCI</option>
				<option>ROI</option>
				<option>TTIC</option>
				<option>TCI</option>
				<option>PEI_GM</option>
				<option>GP</option>
				<option>HSSI</option>
              </select>
              <div class="invalid-feedback">
                SVP Faites un choix correct.
              </div>
       </div>
	   <div class="col-4">
              <label for="country" class="form-label">3<sup>e</sup> Choix</label>
              <select class="form-select" id="thirdC" name = "thirdC"  onchange ="thirdSelection(this)" required <c:if test="${!choix3 != ''}" >disabled = "true"</c:if>>
                <option value="" selected disabled><c:out value='${choix3}' /></option>
                <option>TAU</option>
				<option>GCI</option>
				<option>ROI</option>
				<option>TTIC</option>
				<option>TCI</option>
				<option>PEI_GM</option>
				<option>GP</option>
				<option>HSSI</option>
              </select>
              <div class="invalid-feedback">
                SVP Faites un choix correct.
              </div>
       </div>
	   </div>
	   <hr class="my-10">
	   <div class = "choixP ">
	   	  <div class="col-6">
			<button class="w-50 btn  btn-primary" type="reset">Annuler</button>
          </div>
          <div class="checkbox col-6">
			<button class="w-50 btn btn-primary" disabled = true data-bs-toggle="modal" data-bs-target="#modalChoice">OK</button>
          </div>
		</div>
	<div class="modal fade normal" tabindex="-1" role="dialog" id="modalChoice" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
		<div class="modal-content rounded-4 shadow">
		  <div class="modal-body p-4 text-center">
			<h5 class="mb-0">Etes-vous sûr de votre choix?</h5>
			<p class="mb-0">Vous ne pouvez soumettre ce formulaire qu'une seule fois.</p>
		  </div>
		  <div class="modal-footer flex-nowrap p-0">
		  	<button type="button" class="btn btn-lg btn-link fs-6 text-decoration-none col-6 m-0 rounded-0" data-bs-dismiss="modal">Annuler</button>
			<button type="submit" class="btn btn-lg btn-link fs-6 text-decoration-none col-6 m-0 rounded-0 border-right" data-bs-dismiss="modal"><strong>OK, Soumettre</strong></button>
		  </div>
		</div>
	  </div>
	</div>
	 </form>
	 <div class="<c:if test="${choix1 = ''}" >cacher</c:if>" >
	 <div class="">
		<marquee behavior = "right" >Choix effectué avec succès !!!! </marquee>
	 </div>
	 <div class="choixP">
		<span class=""><strong>Télécharger la fiche de choix  </strong></span>
        <span class=" btn btn-outline-primary" >
        <a href = "downloadPDF.Login">
			<img class ="userIcon" src="images/pdf-icon.png" alt="Téléchargement"   width="50" height="50">
		</a>
		</span>
	 </div>
	</div>
    </section>
	 <div class="b-divider"></div>
	<section id = "orientation">
	<h2>Présentation des départements</h2>
		 <hr>
		  <div class="col approved" id = "TAU">
            <div class="card">
              <div class="row g-0">
                <div class="col-md-4">
					<img class="bd-placeholder-img" width="100%" height="250" alt = automobile  src = "images/automobile.jpg" />
                </div>
                <div class="col-md-8">
                  <div class="card-body">
                    <h5 class="card-title">Technologies Automobiles (TAU)</h5>
                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
		  <hr>
		<div class="col approved" id = "GCI">
            <div class="card">
              <div class="row g-0">
                <div class="col-md-4">
					<img class="bd-placeholder-img" width="100%" height="250" alt = "image GCI"  src = "images/GCI.jpg" />
                </div>
                <div class="col-md-8">
                  <div class="card-body">
                    <h5 class="card-title">Génie Civil (GCI)</h5>
                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
		  <hr>
	 
		  <hr>
		  <div class="col approved" id = "ROI">
            <div class="card">
              <div class="row g-0">
                <div class="col-md-4">
					<img class="bd-placeholder-img" width="100%" height="250" alt = "image ROI"  src = "images/ROI.jpg" />
                </div>
                <div class="col-md-8">
                  <div class="card-body">
                    <h5 class="card-title">Robotique Industrielle (ROI)</h5>
                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
		  <hr>
		 <div class="col approved" id = "TTIC">
            <div class="card">
              <div class="row g-0">
                <div class="col-md-4">
					<img class="bd-placeholder-img" width="100%" height="250" alt = "image TTIC"  src = "images/TTIC.jpg" />
                </div>
                <div class="col-md-8">
                  <div class="card-body">
                    <h5 class="card-title">Télécommunications et Technologies de l'Information et de la Communication(TTIC)</h5>
                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
		  <hr>
		 <div class="col approved" id = "TCI">
            <div class="card">
              <div class="row g-0">
                <div class="col-md-4">
					<img class="bd-placeholder-img" width="100%" height="250" alt = "image TCI"  src = "images/TCI.jpg" />
                </div>
                <div class="col-md-8">
                  <div class="card-body">
                    <h5 class="card-title">Technologies de Construction Industrielle (TCI)</h5>
                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
		  <hr>
		 <div class="col approved" id = "PEI_GM">
            <div class="card">
              <div class="row g-0">
                <div class="col-md-4">
					<img class="bd-placeholder-img" width="100%" height="250" alt = "image PEI_GM"  src = "images/PEI_GM.jpg" />
                </div>
                <div class="col-md-8">
                  <div class="card-body">
                    <h5 class="card-title">Pêche Industrielle/Génie Maritime (PEI_GM)</h5>
                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
		  <hr>
		<div class="col approved" id = "gp">
            <div class="card">
              <div class="row g-0">
                <div class="col-md-4">
					<img class="bd-placeholder-img" width="100%" height="250" alt = "image gp"  src = "images/gp.jpg" />
                </div>
                <div class="col-md-8">
                  <div class="card-body">
                    <h5 class="card-title">Génie des Procédés (GP)</h5>
                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
		  <hr>
		<div class="col approved" id = "HSSI">
            <div class="card">
              <div class="row g-0">
                <div class="col-md-4">
					<img class="bd-placeholder-img" width="100%" height="250" alt = "image HSSI"  src = "images/HSSI.jpg" />
                </div>
                <div class="col-md-8">
                  <div class="card-body">
                    <h5 class="card-title">Hygiène - Sûreté - Sécurité Industrielle (HSSI)</h5>
                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
		  <hr>
    </section>
	 <div class="b-divider"></div>
	<section id = "stats">
	<h2>Evolution des choix</h2>
		 <hr>
	 ,<div class="graphique">
            <canvas id = "myChart"></canvas>
      </div>
    </section>
	 <div class="b-divider"></div>
    <section id ="listesD">
         <h2>Liste des étudiants par département</h2>
		 <hr>
		  <div class="accordion" id="accordionExample">
          <div class="accordion-item">
            <h4 class="accordion-header" id="headingOne">
              <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                TAU<img src="icons/wrench.svg" width="17" height="17">
              </button>
            </h4>
            <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
              <div class="accordion-body">
			  <div class="bd-example">
				<table class="table table-striped">
				  <thead>
				  <tr>
					<th scope="col">#</th>
					<th scope="col">Matricule</th>
					<th scope="col">Noms et prénoms</th>
				  </tr>
				  </thead>
				  <tbody>
				  <tr>
					<th scope="row">1</th>
					<td>18G00023</td>
					<td>Otto</td>
				  </tr>
				  <tr>
					<th scope="row">2</th>
					<td>18G00043</td>
					<td>Thornton JEAN PHILIPPE</td>
				  </tr>
				  <tr>
					<th scope="row">3</th>
					<td >18G00025</td>
					<td>Larry the Bird</td>
				  </tr>
				  </tbody>
				</table>
			  </div>
			  <div class ="approved justify-content-center">
				  <div class="col-5">
				   <h6>Le Chef de département</h6>
				   <img src="icons/check2-circle.svg" width="30" height="30">
				  </div>
				  <div class="col-5">
			       <h6>Le Directeur</h6>
				   <img src="icons/check2-circle.svg" width="30" height="30">
			      </div>
			  </div>
			  </div>
            </div>
          </div>
          <div class="accordion-item">
            <h4 class="accordion-header" id="headingTwo">
              <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                Accordion Item #2
              </button>
            </h4>
            <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
              <div class="accordion-body">
                <strong>LISTE NON DISPONIBLE.</strong> 
			</div>
            </div>
          </div>
          <div class="accordion-item">
            <h4 class="accordion-header" id="headingThree">
              <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                Accordion Item #3
              </button>
            </h4>
            <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
              <div class="accordion-body">
                <strong>LISTE NON DISPONIBLE.</strong> 
			</div>
            </div>
          </div>
        </div>
    </section>
	</div>
       
  
          
		  
</main>   
<script>
	
		var myContext = document.querySelector('#myChart').getContext('2d');
		var myChartConfig = 
		{
		  type: 'bar',
		  data: {
		  labels: ["GCI","GP","HSSI","PEI_GM","ROI","TAU","TCI","TTIC"],
		  datasets:[
		  {
			label: "1er choix", 
			//data: <c:out value='${data1}' />,
			data:[100, 140, 23,90, 53, 23,16, 14],
			backgroundColor:['blue','blue','blue']
		  },
		  {
			label: "2ème choix", 
			//data: <c:out value='${data2}' />,
			data:[100, 140, 23,90, 53, 23,16, 14],
			backgroundColor:['green','green','green']
		  },
		  {
			label: "3ème choix", 
			//data: <c:out value='${data3}' />,
			data:[100, 140, 23,90, 53, 23,16, 14],
			backgroundColor:['red','red','red']
		  }]
		 },
		  options:{responsive:true}
		}
		var myChart = new Chart(myContext, myChartConfig);
		/*
		var canvas = document.getElementById('myChart');
        var context = canvas.getContext('2d');
		context.fillStyle = "gold";
		context.fillRect(0, 0, 50, 80);
		context.fillStyle = "rgba(23, 145, 167, 0.5)";
		context.fillRect(40, 25, 40, 40);
		*/
	
	</script>
		  <script>
			n1 = 0; v1="";
			n2 = 0; v2 ="";
			n3 = 0; v3 ="";
			
		function firstSelection(liste)
		{
			 n1 += 1;
			 var choix = liste.selectedIndex;
			 v1 = liste.options[choix].value;
			 var bt = document.getElementById("choixB");
			 alert("bonjour");
			if ((n2>0)&&(n3>0)&&(v1!=v2)&&(v1!=v3)&&(v2!=v3))
			{
				bt.disabled = false;
				document.forms['choixF'].action = "";
			}
			else
			{
				bt.disabled = true;
			}
		}
		function secondSelection(liste)
		{
			 n2 += 1;
			 var choix = liste.selectedIndex;
			 v2 = liste.options[choix].value;
			var bt = document.getElementById("choixB");
			if ((n3>0)&&(n1>0)&&(v1!=v2)&&(v1!=v3)&&(v2!=v3))
			{
				bt.disabled = false;
				document.forms['choixF'].action = "";
			}
			else
			{
				bt.disabled = true;
			}
		}
		
		function thirdSelection(liste)
		{
			 n3 += 1;
			 var choix = liste.selectedIndex;
			 v3 = liste.options[choix].value;
			 var bt = document.getElementById("choixB");
			if ((n2>0)&&(n1>0)&&(v1!=v2)&&(v1!=v3)&&(v2!=v3))
			{
			
				bt.disabled = false;
				document.forms['choixF'].action = "";
			}
			else
			{
				bt.disabled = true;
				 
			}
		}
		
		 
   </script>
    <script src="package/dist/chart.js"></script> 
    <script src="assets/dist/js/bootstrap.bundle.min.js"></script>
    <script src="assets/dist/js/jquery.min.js"></script>
 </body>
  <footer class = "fixed-bottom">
		 
    <p>  <img class = "logo" src = "images/logoENSPD.png" />&copy; 2021 ENSPD, Inc. &middot;  </p>
		 
</footer>
</html>
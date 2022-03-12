<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
	<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
	<link rel="icon" type="image/png" href="Style/assets/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Ajouter Catégorie</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="Style/assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="Style/assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="Style/assets/css/light-bootstrap-dashboard.css?v=1.4.0" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="Style/assets/css/demo.css" rel="stylesheet" />


    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="Style/assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
    <style type="text/css">
        select#soflow, select#soflow-color {
                margin: 0px;
                overflow: hidden;
                padding: 5px 10px;
                white-space: nowrap;
                width: 350px;
        }

        select#soflow1, select#soflow1-color {
                margin: 0px;
                overflow: hidden;
                padding: 5px 10px;
                white-space: nowrap;
                width: 315px;
        }

   </style>
</head>
<body>

<div class="wrapper">
    <div class="sidebar" data-color="blue" data-image="Style/assets/img/sidebar-4.jpg">

    <!--

        Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
        Tip 2: you can also add an image using data-image tag

    -->

        <div class="sidebar-wrapper">
            <div class="logo">
                <a href="" class="simple-text">
                    Football News
                </a>
            </div>

            <ul class="nav">
                <li>
                    <a href="/ProjetFootNewsUser/dashboard">
                        <i class="pe-7s-graph"></i>
                        <p>Dashboard</p>
                    </a>
                </li>
                <li>
                    <a href="/ProjetFootNewsUser/agent?aff=true">
                        <i class="pe-7s-user"></i>
                        <p>Ajouter Agent</p>
                    </a>
                </li>
                <li>
                    <a href="/ProjetFootNewsUser/article">
                        <i class="pe-7s-news-paper"></i>
                        <p>Ajouter Actirle</p>
                    </a>
                </li>
                <li class="active">
                    <a href="#">
                        <i class="pe-7s-menu"></i>
                        <p>Ajouter Catégorie</p>
                    </a>
                </li>
                <li>
                    <a href="/ProjetFootNewsUser/article-list">
                        <i class="pe-7s-news-paper"></i>
                        <p>List Article</p>
                    </a>
                </li>
            </ul>
        </div>
    </div>

    <div class="main-panel">
		 <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                           <a href="/ProjetFootNewsUser/profil">
                               <p>Profil</p>
                            </a>
                        </li>
                        <li>
                            <a href="/ProjetFootNewsUser/logout">
                                <p>Déconnexion</p>
                            </a>
                        </li>
                        <li class="separator hidden-lg"></li>
                    </ul>
                </div>
            </div>
        </nav>


        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="card">
                            <div class="header">
                                <center><h4 class="title"><b>Ajouter Catégorie</b></h4></center>
                            </div>
                            <div class="content">
                                <form method="post" method="post" action="/ProjetFootNewsUser/categorie?aff=false">
                                    <div class="row">
                                        <div class="col-md-7">
                                            <div class="form-group">
                                                <label>Nom Catégorie</label>
                                                <input type="text" class="form-control" placeholder="Nom Catégorie" name="categorie" required>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label >Description</label>
                                                <textarea class="form-control" rows="6" placeholder="Description de Catégorie" name="description" required></textarea>
                                            </div>
                                        </div>
                                    </div>

                                    <button type="reset" class="btn btn-info btn-fill pull-left"><i class="pe-7s-delete-user">&nbsp;Annuler</i></button>&nbsp&nbsp&nbsp&nbsp
                                    <!-- <button type="submit" class="btn btn-info btn-fill pull-center">Modifier</button>&nbsp&nbsp&nbsp&nbsp -->
                                    <button type="submit" class="btn btn-info btn-fill pull-right"><i class="pe-7s-add-user">&nbsp;Ajouter</i></button>
                                    <div class="clearfix"></div>
                                </form>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <center><h4 class="title"><b>Liste des Catégories</b></h4></center>
                            </div><br>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-hover table-striped">
                                    <thead>
                                        <th>ID Catégorie</th>
                                        <th>Nom Catégorie</th>
                                        <th>Description de Catégorie</th>
                                    </thead>
                                    <tbody>
				                      	<c:forEach items="${listCats}" var="objet">
				                        	<tr>
					                        	<td> <c:out value="${objet.idCat}"/> </td>
					                        	<td> <c:out value="${objet.nom}"/> </td>
					                        	<td> <c:out value="${objet.description}"/>
					                    	</tr>
										</c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>





        <footer class="footer">
            <div class="container-fluid">
                <p class="copyright pull-right">
                    &copy; <script>document.write(new Date().getFullYear())</script> <a href="#">Football News</a>
                </p>
            </div>
        </footer>

    </div>
</div>


</body>

    <!--   Core JS Files   -->
    <script src="Style/assets/js/jquery.3.2.1.min.js" type="text/javascript"></script>
	<script src="Style/assets/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Charts Plugin -->
	<script src="Style/assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="Style/assets/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
	<script src="Style/assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

	<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
	<script src="Style/assets/js/demo.js"></script>

    <c:if test="${add == 'true'}">
		<script type="text/javascript">
		    $(document).ready(function () {
		
		        demo.initChartist();
		
		        $.notify({
		            icon: 'pe-7s-check',
		            message: "Nice <b>Categorie à été ajoute</b>."
		
		        }, {
		            type: 'info',
		            timer: 100
		        });
		
		    });
		</script>
    </c:if>
</html>

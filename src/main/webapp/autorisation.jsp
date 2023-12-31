<%@page import="java.util.List"%>
<%@page import="tn.iit.model.Enseignant"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<!-- Coding by CodingNepal || www.codingnepalweb.com -->
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Gestion Enseignant </title>
<link rel="stylesheet" href="css/style.css" />
<!-- Boxicons CSS -->
<link flex href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
		<nav class="sidebar locked">
		<div class="logo_items flex">
			<span class="nav_image"> <img src="images/logo.jpg"
				alt="logo_img" />
			</span> <span class="logo_name">Admin</span> <i class="bx bx-lock-alt"
				id="lock-icon" title="Unlock Sidebar"></i> <i class="bx bx-x"
				id="sidebar-close"></i>
		</div>

		<div class="menu_container">
			<div class="menu_items">
				<ul class="menu_item">
					<div class="menu_title flex">
						<span class="title">Dashboard</span> <span class="line"></span>
					</div>
					<li class="item"><a href="EnseignantController"
						class="link flex"> <i class="bx bx-home-alt"></i> <span>Enseigant</span>
					</a></li>
					<li class="item"><a href="AutorisationController" class="link flex"> <i
							class="bx bx-grid-alt"></i> <span>Autorisation</span>
					</a></li>
				</ul>




			</div>

			
		</div>
	</nav>

	<div class="container-md d-flex flex-column justify-content-end align-items-center" style="min-height: 50vh;">
    <form action="AutorisationController" method="POST">
        <div class="form-group col-md-20">
            <label for="selectProfessor">Choisir un enseignant</label>
            <select class="form-control" id="selectProfessor" name="id" required>
                <option value="0">Choisir Enseignant</option>
                <c:forEach items="${requestScope.enseignants}" var="enseignant">
                    <option value="${enseignant.idEnseignant}">${enseignant.nom}</option>
                </c:forEach>
            </select>
        </div>
        <button type="submit" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
            <i class="fas fa-download fa-sm text-white-50"></i> Generer Autorisation
        </button>
    </form>
</div>



</body>
</html>
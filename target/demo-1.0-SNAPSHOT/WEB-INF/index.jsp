<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<jsp:include page="header.jsp">
    <jsp:param name="pageTitle" value="Home"/>
</jsp:include>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <div class="container-fluid">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="#">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">info</a>
            </li>
        </ul>
    </div>
</nav>

<h1><%= "Guida per la scomposizione del sistema nel Threat Modeling!" %>
</h1>

<h2><%= "Informazioni generali" %></h2>

<form class="bg-light p-5" method="get" action="">
    <div class="mb-3 mt-3">
        <label for="nome" class="form-label">Inserire il nome applicazione:</label>
        <input type="nome" class="form-control" id="nome"  name="nome">
    </div>

    <div class="mb-3 mt-3">
        <label for="versione" class="form-label">Inserire la versione applicazione:</label>
        <input type="versione" class="form-control" id="versione"  name="versione">
    </div>

    <label for="descrizione">Inserisci una descrizione ad alto livello:</label>
    <textarea class="form-control" rows="5" id="descrizione" name="descrizione"></textarea>

    <div class="mb-3 mt-3">
        <label for="proprietario" class="form-label">Inserire il proprietario dell'applicazione:</label>
        <input type="proprietario" class="form-control" id="proprietario"  name="proprietario">
    </div>
    <button type="submit" class="btn btn-primary" value="2" name="stato">Avanti</button>
</form>
<br/>
<%@include file="footer.jsp"%>

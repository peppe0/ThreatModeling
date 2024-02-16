<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<jsp:include page="header.jsp">
    <jsp:param name="pageTitle" value="Home"/>
</jsp:include>



<div class="riga">
    <h1 class="titolo"><%= "GUIDA AL THREAT MODELING" %>

</div>
<div id="myModal" class="modal">
    <div class="modal-content">
        <span class="close">&times;</span>
        <h4>Informazioni Threat Model</h4>
        <h6>Versione Applicazione: 1.0</h6>
        <h6>Descrizione: Il sito web della biblioteca universitaria è la prima implementazione di un sito web per fornire ai bibliotecari e agli utenti della biblioteca
            (studenti e personale universitario) servizi online. Trattandosi della prima implementazione del sito web, le funzionalità saranno limitate. Gli utenti dell'applicazione
            saranno tre:
            <ul>
                <li>Studenti</li>
                <li>Staff</li>
                <li>Bibliotecari</li>
            </ul>
            Il personale e gli studenti potranno accedere e cercare libri e i membri del personale potranno richiedere libri.
            I bibliotecari potranno accedere, aggiungere libri, aggiungere utenti e cercare libri.
        </h6>
        <h6>Proprietario Documento: Giuseppe Abbatiello</h6>
        <h6>Partecipanti: Marco Ancona</h6>
        <h6>Reviewer: El Mehdi Boudad, Davide Cammarano</h6>
    </div>
</div>
<div class="content">
  <h3>Fase 1 - Decomposizione applicazione</h3>
    <p>L'obiettivo di questa fase è comprendere l'applicazione e il modo in cui interagisce con le entità esterne.
        Questo obiettivo viene raggiunto attraverso la raccolta di informazioni e la documentazione.
        Il processo di raccolta delle informazioni viene eseguito utilizzando una struttura chiaramente definita, che garantisce la raccolta delle informazioni corrette.</p>
    <div class="btn-container">
        <button class="btn-primary" id="showModalBtn">esempio </button>
    </div>
    <form method="post" action="">
    <div >
        <label for="nome" class="form-label">Inserire il nome applicazione:</label>
        <input type="text" class="form-control" id="nome"  name="nome">
    </div>

    <div >
        <label for="versione" class="form-label">Inserire la versione applicazione:</label>
        <input type="text" class="form-control" id="versione"  name="versione">
    </div>

    <label for="descrizione">Inserisci una descrizione ad alto livello:</label>
    <textarea class="form-control" rows="5" id="descrizione" name="descrizione"></textarea>

    <div >
        <label for="proprietario" class="form-label">Inserire il proprietario dell'applicazione:</label>
        <input type="text" class="form-control" id="proprietario"  name="proprietario">
    </div>

    <div >
        <label for="partecipanti" class="form-label">Inserire i partecipanti dell'applicazione:</label>
        <input type="text" class="form-control" id="partecipanti"  name="partecipanti">
    </div>

    <div >
        <label for="reviewer" class="form-label">Inserire i reviewer dell'applicazione:</label>
        <input type="text" class="form-control" id="reviewer"  name="reviewer">
    </div>
    <br>
    <button type="submit" class="btn btn-primary" value="2" name="stato">Avanti</button>
</form>
</div>

<br/>
<script src="script.js"></script>
<%@include file="footer.jsp"%>

<%--
  Created by IntelliJ IDEA.
  User: peppe
  Date: 29/01/2024
  Time: 18:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<jsp:include page="header.jsp">
    <jsp:param name="pageTitle" value="Home"/>
</jsp:include>

<div class="riga">
    <h1 class="titolo"><%= "ESEMPIO APPLICAZIONE THREAT MODELING PROCESS" %>
     </h1>
</div>
<div class="content">
    <h3>Fase 1 - Decomposizione applicazione</h3>
    <p>L'obiettivo di questa fase è comprendere l'applicazione e il modo in cui interagisce con le entità esterne.
        Questo obiettivo viene raggiunto attraverso la raccolta di informazioni e la documentazione.
        Il processo di raccolta delle informazioni viene eseguito utilizzando una struttura chiaramente definita, che garantisce la raccolta delle informazioni corrette.</p>
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
    </br>
    <h4>Dipendenze Esterne</h4>
    <p>Le dipendenze esterne sono elementi esterni al codice dell'applicazione che possono costituire una minaccia per l'applicazione.
        Questi elementi sono in genere ancora sotto il controllo dell'organizzazione, ma probabilmente non del team di sviluppo.
        La prima area da considerare quando si analizzano le dipendenze esterne è l'ambiente di produzione e i requisiti.
        È utile capire come l'applicazione è o non è destinata a essere eseguita.
        Ad esempio, se si prevede che l'applicazione venga eseguita su un server su cui è stato eseguito l'hardening in base agli standard  dell'organizzazione e si prevede che si trovi dietro un
        questa informazione deve essere documentata nella sezione delle dipendenze esterne.</p>
    <h6>Le dipendenze esterne devono essere documentate come segue:
    <ul>
        <li>ID: un ID univoco assegnato alla dipendenza esterna.</li>
        <li>Descrizione: Una descrizione testuale della dipendenza esterna.</li>
    </ul>
    </h6>

</div>
</br>
<%@include file="footer.jsp"%>

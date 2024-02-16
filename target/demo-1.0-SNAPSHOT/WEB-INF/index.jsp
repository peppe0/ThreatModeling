<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<jsp:include page="header.jsp">
    <jsp:param name="pageTitle" value="Home"/>
</jsp:include>

<div class="riga">
<h1 class="titolo"><%= "INTRODUZIONE AL THREAT MODELING" %>
</h1><img class="imgThreat" src="img/threats-security.png" alt="descrizione">
</div>

<div class="content">
    <h3><%= "Cos'è il Threat Modeling" %></h3>
    <p>
        Il Threat Modeling analizza le varie rappresentazioni di un sistema per evidenziare tutto ciò che riguarda
        caratteristiche di sicurezza e privacy.</p>
    <h3><%= "Perchè applicare il Threat Modeling" %></h3>
    <p>
        Quando si esegue il Threat Modeling, si inizia a riconoscere cosa può andare storto in un sistema.
        Inoltre, consente di individuare i problemi di progettazione e implementazione che richiedono una mitigazione, sia nelle fasi iniziali che durante l'intero ciclo di vita del sistema.
        I risultati del Threat Modeling, noti come Threats (Minacce), influenzano le decisioni che si possono prendere nelle fasi successive di progettazione, sviluppo, testing e post-deployment.
    </p>
    <h3><%= "Chi dovrebbe applicare il Threat Modeling" %></h3>
    <p>
        Esso dovrebbe essere applicato da chiunque sia preoccupato per la privacy, la sicurezza e la protezione del proprio sistema.
    </p>

    <h3><%= "Come si dovrebbe applicare il Threat Modeling" %></h3>
    <p>
        Il processo di Threat Modeling può essere decomposto in 3 passaggi di alto livello. Ognuno dei quali viene documentato e produce
        un documento chiamato threat model.

        I passi sono:
        <li>Decomposizione dell'applicazione.</li>
        <li>Determinazione del Threat Rank.</li>
        <li>Individuazione di Contromisure e Mitigazione.</li>
    </p>
</div>
</div>
<br/>
<%@include file="footer.jsp"%>

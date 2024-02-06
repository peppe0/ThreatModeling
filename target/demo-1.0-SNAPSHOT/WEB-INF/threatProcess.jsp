<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<jsp:include page="header.jsp">
    <jsp:param name="pageTitle" value="Home"/>
</jsp:include>

<div class="riga">
<h1 class="titolo"><%= "THREAT MODELING PROCESS" %>
</h1>
</div>
    <div class="content">
        <h3><%= "Descrizione delle fasi del processo" %></h3>

    <p>
        Il threat modeling esamina un sistema dal punto di vista di un potenziale attaccante, anziché da quello di un difensore.
        Applicare il threat modeling risulta essere una componente fondamentale all'interno del Software Development Lifecycle che contribuisce ad aumentarne la sicurezza.
        Il processo di threat modeling può essere scomposto in tre fasi di alto livello. Ogni fase viene documentata man mano che viene eseguita.
        Il documento risultante è chiamato Threat Model per l'applicazione.
    </p>
     <h4><%= "Fase 1) Decomposizione dell'applicazione" %></h4>
    <p>
        La prima fase del processo di modellazione delle minacce consiste nel comprendere l'applicazione e il modo in cui interagisce con le entità esterne. Ciò comporta:
        <ul>
        <li>Creare casi d'uso per capire come viene utilizzata l'applicazione; </li>
        <li>Identificare i punti di ingresso per capire dove un potenziale aggressore potrebbe interagire con l'applicazione;</li>
        <li>Identificare gli asset, ossia gli elementi o le aree a cui l'attaccante sarebbe interessato;</li>
        <li>Identificare i livelli di fiducia che rappresentano i diritti di accesso che l'applicazione concede alle entità esterne.</li>
     </ul>
        Queste informazioni sono documentate all'interno del "Modello di minaccia" risultante alla fine della fase, esso viene inoltre utilizzato per produrre diagrammi di flusso dei dati (DFD) per l'applicazione.
        I DFD mostrano i diversi percorsi attraverso il sistema, evidenziando i confini dei privilegi.
        <h4><%= "Fase 2) Determinare e classificare le minacce" %></h4>
        Per identificare le minacce è fondamentale utilizzare una metodologia di categorizzazione delle minacce.
        Si può utilizzare una categorizzazione delle minacce come STRIDE o l'Application Security Frame (ASF), che definisce categorie di minacce come Auditing e Logging, Autenticazione, Autorizzazione, Gestione della configurazione, Protezione dei dati nell'archiviazione e nel transito, Convalida dei dati e Gestione delle eccezioni.
        L'obiettivo della categorizzazione delle minacce è aiutare a identificare le minacce sia dal punto di vista dell'attaccante (STRIDE) che da quello della difesa ASF. Le DFD prodotte nella fase 1 aiutano a identificare i potenziali obiettivi delle minacce dal punto di vista dell'attaccante, come le fonti di dati, i processi, i flussi di dati e le interazioni con gli utenti.
        <h4> <%="FASE 3) Determinare le contromisure e la mitigazione."%> </h4>

        Una vulnerabilità può essere mitigata con l'implementazione di una contromisura. Tali contromisure possono essere identificate utilizzando elenchi di mappatura delle minacce e delle contromisure. Una volta assegnata una classificazione del rischio alle minacce nella fase 2, è possibile ordinare le minacce dal rischio più alto a quello più basso e dare priorità agli sforzi di mitigazione.
        La strategia di mitigazione del rischio potrebbe comportare la valutazione delle minacce in base all'impatto aziendale che esse comportano. Una volta identificato il possibile impatto, le opzioni per affrontare il rischio includono:
        <ul>
            <li>Accettare: decidere che l'impatto aziendale è accettabile;</li>
            <li> Eliminare: rimuovere i componenti che rendono possibile la vulnerabilità;</li>
            <li>Mitigare: aggiungere controlli o verifiche che riducano l'impatto del rischio o le probabilità che si verifichi.</li>
        </ul>

      </p>
    </div>


<%@include file="footer.jsp"%>
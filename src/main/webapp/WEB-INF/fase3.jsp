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
        <h3>Punti d'accesso</h3>
        <h4>I punti d'accesso dovrebbero essere documentati come segue:</h4>
        <ul>
            <li> ID: un ID univoco assegnato al punto di accesso. Verrà utilizzato per fare un riferimento incrociato tra il punto di accesso e le minacce o le vulnerabilità identificate.
                Nel caso di punti di accesso stratificati, si dovrebbe usare la notazione major-minor.</li>
            <li> Nome: Nome descrittivo che identifica il punto di accesso e il suo scopo.</li>
            <li> Descrizione: Una descrizione testuale che descrive in dettaglio l'interazione o l'elaborazione che avviene nel punto di accesso.</li>
            <li> Livelli di fiducia: Il livello di accesso richiesto al punto di accesso. Questi saranno incrociati con i livelli di fiducia definiti più avanti nel documento.</li>
        </ul>

        <h4>Esempio: </h4>
        <table >
            <thead>
            <tr>
                <th scope="col">Id</th>
                <th scope="col">Nome</th>
                <th scope="col">Descrizione</th>
                <th scope="col">Trust Levels</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <th scope="row">1</th>
                <td>Porte HTTPS</td>
                <td>Il sito web della biblioteca universitaria sarà accessibile solo tramite TLS.
                    Tutte le pagine del sito web della biblioteca universitaria si basano su questo punto di accesso.</td>
                <td><ul><li>(1) Utente Web anonimo</li>
                    <li>(2) Utente con credenziali di accesso valide</li>
                    <li>(3) Utente con credenziali di accesso non valide</li>
                    <li>(4) Bibliotecario</li></ul>
                </td>
            </tr>
            <tr>
                <th scope="row">1.1</th>
                <td>Pagina principale della biblioteca</td>
                <td>La homepage del sito web della biblioteca universitaria è il punto di ingresso per tutti gli utenti.</td>
                <td><ul><li>(1) Utente Web anonimo</li>
                    <li>(2) Utente con credenziali di accesso valide</li>
                    <li>(3) Utente con credenziali di accesso non valide</li>
                    <li>(4) Bibliotecario</li></ul></td>
            </tr>
            <tr>
                <th scope="row">1.2</th>
                <td>Pagina Login</td>
                <td>Gli studenti, i docenti e i bibliotecari devono collegarsi al sito web della biblioteca universitaria prima di poter eseguire uno qualsiasi dei casi d'uso.</td>
                <td><ul><li>(1) Utente Web anonimo</li>
                    <li>(2) Utente con credenziali di accesso valide</li>
                    <li>(3) Utente con credenziali di accesso non valide</li>
                    <li>(4) Bibliotecario</li></ul></td>
            </tr>
            <tr>
                <th scope="row">1.2.1</th>
                <td>Funzione Login</td>
                <td>La funzione di login accetta le credenziali fornite dall'utente e le confronta con quelle presenti nel database.</td>
                <td><ul><li>(1) Utente Web anonimo</li>
                    <li>(2) Utente con credenziali di accesso valide</li>
                    <li>(3) Utente con credenziali di accesso non valide</li>
                    <li>(4) Bibliotecario</li></ul></td>
            </tr>
            <tr>
                <th scope="row">1.3</th>
                <td>Pagina di ricerca</td>
                <td>La pagina utilizzata per inserire una query di ricerca.</td>
                <td><ul><li>(2) Utente con credenziali di accesso valide</li>
                    <li>(4) Bibliotecario</li></ul></td>
            </tr>
            </tbody>
        </table>


    </div>
</div>

<div class="content">
<h3><%= "Individuazione Punti d'accesso" %></h3>
    <p> I punti d'accesso definiscono le interfacce attraverso le quali i potenziali aggressori possono interagire con l'applicazione o fornirle dati.
        Affinché un potenziale aggressore possa attaccare un'applicazione, devono esistere punti d'accesso.
        I punti di ingresso in un'applicazione possono essere stratificati.
        Ad esempio, ogni pagina web di un'applicazione web può contenere più punti di ingresso.</p>
</br>
    <p>I punti d'accesso indicano i punti in cui i dati entrano nel sistema (ad esempio, campi di input, metodi)
        e i punti di uscita sono quelli in cui i dati escono dal sistema (ad esempio, output dinamico, metodi).
        I punti d'accesso e di uscita definiscono i Trust Level.</p>
    <div class="btn-container">
        <button class="btn-primary" id="showModalBtn">esempio </button>
    </div>
<form    method="post" action="">
<div class="p-5">
    <table class="table table-hover ">
        <thead>
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Nome</th>
            <th scope="col">Descrizione</th>
            <th scope="col">Trust Levels</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <th scope="row">1</th>
            <td contenteditable="true">Inserisci qui il nome</td>
            <td contenteditable="true">Inserisci qui la descrizione.</td>
            <td contenteditable="true">Inserisci qui i Trust Level.</td>
        </tr>
        <tr>
            <th scope="row">2</th>
            <td contenteditable="true">Inserisci qui il nome</td>
            <td contenteditable="true">Inserisci qui la descrizione.</td>
            <td contenteditable="true">Inserisci qui i Trust Level.</td>
        </tr>
        </tbody>
    </table>
    </div>

    <button type="submit" class="btn btn-primary" value="2" name="stato">Indietro</button>
    <button type="submit" class="btn btn-primary" value="4" name="stato">Avanti</button>


</form>
    <div class="btn-container">
        <button id="createPdfBtn" class="outlined-gradient-button">Crea PDF</button>
    </div>

</div>

<br/>


<% HttpSession session1 = request.getSession(); %>
<% String nome = (String) session1.getAttribute("nome"); %>
<% String versione = (String) session1.getAttribute("versione"); %>

<script >
    var nome = '<%= nome %>';
    var versione = '<%= versione %>';
    document.getElementById('createPdfBtn').addEventListener('click', function () {

        // Create a new jsPDF instance
        window.jsPDF = window.jspdf.jsPDF
        var doc = new jsPDF();

        var img = new Image();
        img.src = 'img/download.jpg';

        doc.addImage(img, 'JPEG', 7, 4, 25, 25);
        // Add content to the PDF
        doc.setDrawColor(0);
        doc.setFillColor(255, 255, 255);
        doc.rect(10, 30, 190, 250);
        doc.setFont('helvetica');
        doc.setFontSize(20);
        doc.text('Threat Modeling Information Document', 105, 15, null, null, 'center');
        doc.setFontSize(13);
        doc.text('Nome: ' +nome, 30, 23);
        doc.text('Versione applicazione: ' +versione, 30, 28);

        // Save the PDF
        doc.save('Threat Modeling Document.pdf');
    });
</script>
<script src="script.js"></script>

<%@include file="footer.jsp"%>
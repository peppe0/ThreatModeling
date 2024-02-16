<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<jsp:include page="header.jsp">
    <jsp:param name="pageTitle" value="Home"/>
</jsp:include>


<div class="riga">
    <h1 class="titolo">
            <%= "GUIDA AL THREAT MODELING" %>
</div>

<div id="myModal" class="modal">
    <div class="modal-content">
        <span class="close">&times;</span>
        <h3>Asset</h3>
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
<h3><%= "Definizione Asset" %></h3>
    <p> Il sistema deve avere qualcosa a cui l'attaccante è interessato; questi elementi o aree di interesse sono definiti asset.

        Gli asset sono essenzialmente obiettivi per gli attaccanti, cioè sono il motivo per cui esistono le minacce.
        Gli asset possono essere sia fisici che astratti.
        Ad esempio, un asset di un'applicazione potrebbe essere un elenco di clienti e le loro informazioni personali;
        si tratta di un asset fisico. Un asset astratto potrebbe essere la reputazione di un'organizzazione.</p>
</br>

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
        </tr>
        </thead>
        <tbody>
        <tr>
            <th scope="row">1</th>
            <td> <select id="myComboBox">
                <option value="database">Database</option>
                <option value="webApplication">Web Application</option>
                <option value="codaMess">Coda Messaggi</option>
                <option value="backProc">Processo in Background</option>
            </select>
            </td>
            <td contenteditable="true">Inserisci qui la descrizione.</td>
        </tr>
        <tr>
            <th scope="row">2</th>
            <td> <select>
                <option value="database">Database</option>
                <option value="web application">Web Application</option>
                <option value="backProc">Processo in Background</option>
                <option value="Processo">Processo sempre in Esecuzione</option>
            </select>
            </td>
            <td contenteditable="true">Inserisci qui la descrizione.</td>
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

    <h4>Threat List:</h4>
    <table id="myTable" >
        <thead>
        <tr>
        <th scope="col">Nome Threat</th>
        <th scope="col">Tipo</th>
        <th scope="col">Mitigazione</th>
        </tr>
        </thead>
        <tbody>
        </tbody>
    </table>
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
        doc.se
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

<script>
    // Get combobox element
    var comboBox = document.getElementById("myComboBox");

    var tbody = document.querySelector('#myTable tbody');
    var rows = tbody.querySelectorAll('tr');

    // Add event listener for combobox click
    comboBox.addEventListener("click", function() {
        // Get selected value
        var table = document.getElementById("myTable").getElementsByTagName('tbody')[0];
        var newRow = table.insertRow(table.rows.length);


        var selectedValue = comboBox.options[comboBox.selectedIndex].value;
        var displayId = "",displayTipo ="",displayMit;
        switch (selectedValue){
            case "database": {
                rows = tbody.querySelectorAll('tr');
                rows.forEach(function(row) {
                    row.innerHTML = ''; // Remove all TDs by emptying the innerHTML of each row
                });

                newRow.insertCell(0).innerHTML = "Accesso non autorizzato.";
                newRow.insertCell(1).innerHTML ="Divulgazione di informazioni (Information Disclosure)";
                newRow.insertCell(2).innerHTML="Richiedere l'autenticazione di tutte le query.";
                newRow = table.insertRow(table.rows.length);
                newRow.insertCell(0).innerHTML="Furto credenziali"; // Insert the first cell
                newRow.insertCell(1).innerHTML="Divulgazione di informazioni (Information Disclosure)"; // Insert the second cell var textarea = document.createElement("textarea");
                newRow.insertCell(2).innerHTML="Utilizzare un firewall per limitare l'accesso al DB solo a determinati indirizzi IP.";

            }break;
            case "webApplication":{
                rows = tbody.querySelectorAll('tr');
                rows.forEach(function(row) {
                    row.innerHTML = ''; // Remove all TDs by emptying the innerHTML of each row
                });

                newRow.insertCell(0).innerHTML = "Credenziali non criptate.";
                newRow.insertCell(1).innerHTML ="Divulgazione di informazioni (Information Disclosure)";
                newRow.insertCell(2).innerHTML="Le credenziali della coda di messaggi devono essere criptate";
            }break;
            case "codaMess":{
                rows = tbody.querySelectorAll('tr');
                rows.forEach(function(row) {
                    row.innerHTML = ''; // Remove all TDs by emptying the innerHTML of each row
                });

                newRow.insertCell(0).innerHTML = "Segretezza messaggio.";
                newRow.insertCell(1).innerHTML ="Divulgazione di informazioni. (Information Disclosure)";
                newRow.insertCell(2).innerHTML="Utilizzare la crittografia a livello di messaggio per i dati ad alta sensibilità (ad esempio, i token di sicurezza) nei messaggi.";
                newRow = table.insertRow(table.rows.length);
                newRow.insertCell(0).innerHTML="Manomissione del messaggio"; // Insert the first cell
                newRow.insertCell(1).innerHTML="Manomissione (Tampering)"; // Insert the second cell var textarea = document.createElement("textarea");
                newRow.insertCell(2).innerHTML="Firmare tutti i messaggi della coda sul server Web. Rifiutare qualsiasi messaggio con una firma mancante o non valida.";
                newRow = table.insertRow(table.rows.length);
                newRow.insertCell(0).innerHTML = "Messaggi falsi inseriti nella coda.";
                newRow.insertCell(1).innerHTML ="falsificazione (Spoofing)";
                newRow.insertCell(2).innerHTML="Limitare l'accesso alla coda agli indirizzi IP del Web Server e del Background Worker. Implementare l'autenticazione sull'endpoint della coda.";
            }
            default: {

                displayId = "Non ci sono asset selezionati";
            }break;
        }
        // Display selected value in comboText element
        document.getElementById("idText").textContent =displayId;
        document.getElementById("tipoText").textContent = displayTipo;
        document.getElementById("mitText").textContent = displayMit;
    })

</script>

<%@include file="footer.jsp"%>
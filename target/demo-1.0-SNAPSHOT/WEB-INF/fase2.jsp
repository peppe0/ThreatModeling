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
        <h3>Dipendenze Esterne</h3>
        <h4>Le dipendenze esterne devono essere documentate come segue:</h4>
        <ul>
            <li>  ID: un ID univoco assegnato alla dipendenza esterna.</li>
            <li> Descrizione: Una descrizione testuale della dipendenza esterna.</li>
        </ul>

        <h4>Esempio: </h4>
        <ol>
            <li>Il sito web della biblioteca universitaria verrà eseguito su un server Linux con Apache.
                Questo server sarà protetto secondo gli standard di hardening dei server dell'università.
                Ciò include l'installazione delle più recenti patch di sicurezza del sistema operativo e delle applicazioni.</li>
            <li>
                Il server del database sarà MySQL e verrà eseguito su un server Linux.
                Questo server sarà protetto secondo gli standard di hardening dei server dell'università.
                Questo include l'installazione delle più recenti patch di sicurezza del sistema operativo e delle applicazioni.
            </li>

            <li>
                La connessione tra il server web e il server del database avverrà su una rete privata.
            </li>

            <li>
                Il server web è dietro un firewall e l'unica comunicazione disponibile è TLS.
            </li>
        </ol>


    </div>
</div>

<div class="content">
<h3><%= "Individuazione Dipendenze Esterne" %></h3>
    <p>Le dipendenze esterne sono elementi esterni al codice dell'applicazione che possono costituire una minaccia per l'applicazione.
        Questi elementi sono in genere ancora sotto il controllo dell'organizzazione, ma probabilmente non del team di sviluppo.
        La prima area da considerare quando si analizzano le dipendenze esterne è l'ambiente di produzione e i requisiti.</p>
</br>
    <p>È utile capire come l'applicazione è o non è destinata a essere eseguita.
        Ad esempio, se si prevede che l'applicazione venga eseguita su un server che è stato eseguito un hardening in base agli standard dell'organizzazione e che si trova dietro un firewall,
        questa informazione deve essere documentata nella sezione delle dipendenze esterne.</p>
    <div class="btn-container">
    <button class="btn-primary" id="showModalBtn">esempio </button>
    </div>
<form method="post" action="">
<div class="p-5">
<table id ="myTable" class="table table-hover ">
    <thead>
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Descrizione</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <th id="1" scope="row">1</th>
        <td contenteditable="true">
            <textarea id="des1" class="form-control" placeholder="Inserisci la descrizione qui.."></textarea>
        </td>
       </tr>
      <tr>
        <th id="2" scope="row">2</th>
          <td contenteditable="true">
              <textarea id="des2" class="form-control" placeholder="Inserisci la descrizione qui.."></textarea>
          </td>

      </tr>
       </tbody>
    </table>
    </div>

    <button type="submit" class="btn btn-primary" value="1" name="stato">Indietro</button>
    <button type="submit" class="btn btn-primary" value="3" name="stato">Avanti</button>
    </form>

    <button class="btn-primary" id="addRowBtn" style="margin: 10px">Aggiungi Riga</button>

    <div class="btn-container">
        <button id="createPdfBtn" class="outlined-gradient-button">Crea PDF</button>
    </div>
</div>
<br/>

<% HttpSession session1 = request.getSession(); %>

<% String descrizione = (String) session1.getAttribute("descrizione"); %>



<script >
    var nome = '<%= (String) session1.getAttribute("nome") %>';
    var versione = '<%= session1.getAttribute("versione") %>';
    var descrizione = '<%= session1.getAttribute("descrizione") %>';
    var proprietario = '<%= session1.getAttribute("proprietario") %>';
    var partecipanti = '<%= session1.getAttribute("partecipanti") %>';
    var reviewer = '<%= session1.getAttribute("reviewer") %>';

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
        doc.text('Nome: ' +nome, 32, 23);
        doc.text('Proprietario: '+proprietario,130,23);
        doc.text('Versione applicazione: ' +versione, 32, 28);
        doc.text('Reviewer: ' +reviewer, 130, 28);
        doc.text('Partecipanti: '+partecipanti,19,35);
        doc.text('Descrizione: '+descrizione,19,40);
        // Save the PDF
        doc.save('Threat Modeling Document.pdf');
    });

    document.getElementById("addRowBtn").addEventListener("click", addRow);


    function addRow() {
        //var textInput = document.getElementById("textInput").value;
        var table = document.getElementById("myTable").getElementsByTagName('tbody')[0];
        var newRow = table.insertRow(table.rows.length);

        var cell1 = newRow.insertCell(0); // Insert the first cell
        var cell2 = newRow.insertCell(1); // Insert the second cell var textarea = document.createElement("textarea");
        var textarea = document.createElement("textarea");
        textarea.rows = "2"; // Set number of rows
        textarea.cols = "50"; // Set number of columns
        textarea.placeholder = "Inserisci la descrizione qui.."; // Set placeholder text

        // Append the textarea to the cell
        cell2.appendChild(textarea);
        textarea.classList.add("form-control");
        cell2.id="des"+table.rows.length;
        cell1.innerHTML = table.rows.length;
        cell1.style.fontWeight = "bold";
        cell1.id=table.rows.length;

        // cell.appendChild(document.createTextNode(textInput));
    }
</script>

<script src="script.js"></script>
<%@include file="footer.jsp"%>
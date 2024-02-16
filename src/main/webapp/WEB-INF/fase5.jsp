<%--
  Created by IntelliJ IDEA.
  User: peppe
  Date: 15/02/2024
  Time: 19:19
  To change this template use File | Settings | File Templates.
--%>

<jsp:include page="header.jsp">
    <jsp:param name="pageTitle" value="Home"/>
</jsp:include>

<div class="riga">
    <h1 class="titolo">
            <%= "GUIDA AL THREAT MODELING" %>
</div>
<div class="content">
    <p>Il sistema deve avere qualcosa a cui l'attaccante &egrave; interessato; questi elementi o aree di interesse sono definiti componenti.

        I Componenti di un sistema sono essenzialmente obiettivi per gli attaccanti, cio&egrave; sono il motivo per cui esistono le minacce.
        Ad esempio, un componenti di un'applicazione potrebbe essere un elenco di clienti e le loro informazioni personali;
    </p>
    <h3>Seleziona dalla lista i componenti che fanno parte del tuo sistema:</h3>
<form id="checkboxForm">

    <label class="checkbox-container">Pagina Login
        <input type="checkbox" value="Login">
        <span class="checkmark"></span>
    </label>
    <br>
    <label class="checkbox-container">
        <input type="checkbox" value="Logout">Pagina Logout
        <span class="checkmark"></span>
    </label>
    <br>
    <label class="checkbox-container">Pagina Registrazione
    <input type="checkbox" value="Registrazione">
        <span class="checkmark"></span>
    </label>
    <br>
    <label class="checkbox-container">
        <input type="checkbox"  value="Pass">Cambio Password
        <span class="checkmark"></span>
    </label>
    <br>

    <label class="checkbox-container">
        <input type="checkbox" value="Homepage">Homepage
        <span class="checkmark"></span>
    </label>
    <br>
    <label class="checkbox-container">Pagina Carrello
    <input type="checkbox" value="Pagina Carrello">
        <span class="checkmark"></span>
    </label><br>


    <label class="checkbox-container">
        <input type="checkbox" value="Database">Database
        <span class="checkmark"></span>
    </label>
    <br>
    </form>

    </br>
    </br>

    <form>
        <h3>Selezionare dalla Threat list le minacce ancora non prese in considerazione: </h3>
        </br>
        <h4>Threat List:</h4>
    <table id="myTable">
        <thead>
        <tr>
            <th scope="col"> </th>
            <th scope="col">Threat</th>
            <th scope="col">Tipo</th>
            <th scope="col">Sorgente</th>
            <th scope="col">Rischio</th>
        </tr>
        </thead>
        <tbody id="tableBody">
        </tbody>
    </table>
        <div class="btn-container">
        <button type="submit" class="btn btn-primary" value="2" name="stato">Visualizza Mitigazioni</button>
        </div>
    </form>
</div>

<%@include file="footer.jsp"%>

<script>
    // Get combobox element
    var checkboxForm = document.getElementById("checkboxForm");
    const tableBody = document.getElementById('tableBody');
    var table = document.getElementById("myTable").getElementsByTagName('tbody')[0];
    var newRow = table.insertRow(table.rows.length);

    checkboxForm.addEventListener('change', function() {
        updateTable();
    });

    function updateTable() {
        tableBody.innerHTML = ''; // Clear the table body
        const checkboxes = checkboxForm.querySelectorAll('input[type="checkbox"]');
        checkboxes.forEach(function(checkbox) {
            if(checkbox.checked){
               var itemName = checkbox.value;
                var newRow = tableBody.insertRow();
                var checkbox = document.createElement("input");
                checkbox.type = "checkbox";

                switch (itemName) {
                    case "Login":{
                        newRow.insertCell(0).appendChild(checkbox);
                        newRow.insertCell(1).innerHTML = "Password Brute Force";
                        newRow.insertCell(2).innerHTML ="Information Disclosure";
                        newRow.insertCell(3).innerHTML = itemName;
                        newRow.insertCell(4).innerHTML = "Basso";

                        newRow = table.insertRow(table.rows.length);
                        checkbox = document.createElement("input");
                        checkbox.type = "checkbox";
                        newRow.insertCell(0).appendChild(checkbox);
                        newRow.insertCell(1).innerHTML = "Attacco Password Dictionary-Based";
                        newRow.insertCell(2).innerHTML ="Information Disclosure";
                        newRow.insertCell(3).innerHTML = itemName;
                        newRow.insertCell(4).innerHTML = "Basso";

                        newRow = table.insertRow(table.rows.length);
                        checkbox = document.createElement("input");
                        checkbox.type = "checkbox";
                        newRow.insertCell(0).appendChild(checkbox);
                        newRow.insertCell(1).innerHTML = "Rainbow Table Password Cracking";
                        newRow.insertCell(2).innerHTML ="Information Disclosure";
                        newRow.insertCell(3).innerHTML = itemName;
                        newRow.insertCell(4).innerHTML = "Basso";

                        newRow = table.insertRow(table.rows.length);
                        checkbox = document.createElement("input");
                        checkbox.type = "checkbox";
                        newRow.insertCell(0).appendChild(checkbox);
                        newRow.insertCell(1).innerHTML = "Rainbow Table Password Cracking";
                        newRow.insertCell(2).innerHTML ="Information Disclosure";
                        newRow.insertCell(3).innerHTML = itemName;
                        newRow.insertCell(4).innerHTML = "Basso";
                    }break;
                    case "Homepage":{
                        newRow = table.insertRow(table.rows.length);
                        newRow.insertCell(0).innerHTML = "Phishing";
                        newRow.insertCell(1).innerHTML ="Information Disclosure";
                        newRow.insertCell(2).innerHTML = itemName;
                        newRow.insertCell(3).innerHTML = "Basso";
                    }break;
                    case "Database":{
                        newRow.insertCell(0).appendChild(checkbox);
                        newRow.insertCell(1).innerHTML = "SQL Injection";
                        newRow.insertCell(2).innerHTML ="Information Disclosure";
                        newRow.insertCell(3).innerHTML = itemName;
                        newRow.insertCell(4).innerHTML = "Basso";
                        newRow = table.insertRow(table.rows.length);
                        checkbox = document.createElement("input");
                        checkbox.type = "checkbox";
                        newRow.insertCell(0).appendChild(checkbox);
                        newRow.insertCell(1).innerHTML = "Blind SQL Injection";
                        newRow.insertCell(2).innerHTML ="Information Disclosure";
                        newRow.insertCell(3).innerHTML = itemName;
                        newRow.insertCell(4).innerHTML = "Basso";
                        newRow = table.insertRow(table.rows.length);
                        checkbox = document.createElement("input");
                        checkbox.type = "checkbox";
                        newRow.insertCell(0).appendChild(checkbox);
                        newRow.insertCell(1).innerHTML = "Data Encrypted for Impact";
                        newRow.insertCell(2).innerHTML ="Information Disclosure";
                        newRow.insertCell(3).innerHTML = itemName;
                        newRow.insertCell(4).innerHTML = "Basso";
                    }break;

                    default:{
                        newRow.insertCell(0).innerHTML = "Lista vuota";
                        newRow.insertCell(1).innerHTML =" ";
                        newRow.insertCell(2).innerHTML = " ";
                        newRow.insertCell(3).innerHTML = " ";
                    }
                }
            }

        });
    }

</script>


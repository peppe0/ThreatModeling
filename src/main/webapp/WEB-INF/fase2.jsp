<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<jsp:include page="header.jsp">
    <jsp:param name="pageTitle" value="Home"/>
</jsp:include>


<h1><%= "Guida per la scomposizione del sistema nel Threat Modeling!" %>
</h1>
<div class="content">
<h2><%= "Individuazione dipendenze esterne" %></h2>
<form class="bg-light p-5" method="get" action="">
<div class="p-5">
<table class="table table-hover ">
    <thead>
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Descrizione</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <th scope="row">1</th>
        <td contenteditable="true">1</td>
       </tr>
      <tr>
        <th scope="row">2</th>
        <td contenteditable="true">2</td>

      </tr>
      <tr>
          <th scope="row">3</th>
         <td contenteditable="true">3</td>
      </tr>
       </tbody>
    </table>
    </div>

    <button type="submit" class="btn btn-primary" value="1" name="stato">Indietro</button>
    <button type="submit" class="btn btn-primary" value="3" name="stato">Avanti</button>
    </form>
</div>
<br/>

<%@include file="footer.jsp"%>

<%@ page import="petadocao.Adocao" %>
<!DOCTYPE html>
<html>
<head>
    <title>Pet Adoção</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="icon" type="image/png" href="../images/pata.png" />
    <link rel="stylesheet" type="text/css" href="../css/style.css"/>
</head>
<body>
<nav class="navbar navbar-fixed-top navbar-inverse">
    <div class="container">
        <div class="navbar-header">
            <g:link controller="Animal" action="Index" class="navbar-brand">
                Pet Adoção
            </g:link>
            <img src="../images/pata.png" style="width: 22px;margin-top: 15px;"/>
        </div>
        <div id="navbar" class="collapse navbar-collapse" >
            <g:if test="${login != ''}">
                <g:if test="${ehAdmin == true}">
                    <ul class="nav navbar-nav" style="margin-left:20px">
                        <li><g:link controller="Animal" action="Index"><g:message code="menu.home"/></g:link></li>
                        <li class="active"><g:link controller="Adocao" action="index"><g:message code="menu.adocao"/></g:link></li>
                        <li><g:link controller="Adocao" action="index"><g:message code="menu.solicitacao"/></g:link></li>
                        <li ><g:link controller="Animal" action="create"><g:message code="menu.CadastrarAnimais"/></g:link></li>
                    </ul>
                </g:if>
                <p class="navbar-text navbar-right"><g:message code="menu.bemvindo"/>, ${login}!
                <g:link controller="Login" action="logout" name="logout" class="navbar-link" style="color:lightgrey;font-weight:bold; margin-left:10px">Logout</g:link>
                </p>
            </g:if>
            <g:else>
                <p class="navbar-text navbar-right">
                    <g:link controller="Login" action="Index" name="login" class="navbar-link">Login</g:link>
                </p>
            </g:else>

        </div><!-- /.nav-collapse -->
    </div><!-- /.container -->
</nav>
<div class="container adocao" style="margin-top:100px">
    <div class="row row-offcanvas row-offcanvas-right">
        <div id="list-adocao" class="content scaffold-list" role="main">
            <h1 id="teste"><g:message code="menu.adocoesRealizadas"/></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table>
                <thead>
                <tr>
                    <g:sortableColumn property="idAnimal" title="${message(code: 'adocao.idAnimal.label', default: 'Id Animal')}" />

                    <g:sortableColumn property="loginCliente" title="${message(code: 'adocao.loginCliente.label', default: 'Login cliente')}" />

                    <g:sortableColumn property="data" title="${message(code: 'adocao.data.label', default: 'Data')}" />

                    <g:sortableColumn property="status" title="${message(code: 'adocao.status.label', default: 'Status')}" />
                </tr>
                </thead>
                <tbody>
                <g:each in="${adocaoInstanceList}" status="i" var="adocaoInstance">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                        <td>
                            <g:link controller="Animal" action="show" id="${adocaoInstance.idAnimal}">${fieldValue(bean: adocaoInstance, field: "idAnimal")}</g:link>
                        </td>

                        <td>${fieldValue(bean: adocaoInstance, field: "loginCliente")}</td>

                        <td><g:formatDate date="${adocaoInstance.data}" /></td>


                        <td>${fieldValue(bean: adocaoInstance, field: "status")}</td>
                    </tr>
                </g:each>
                </tbody>
            </table>
            <div class="pagination">
                <g:paginate total="${adocaoInstanceCount ?: 0}" />
            </div>
        </div>
    </div>
</div>
</body>
</html>

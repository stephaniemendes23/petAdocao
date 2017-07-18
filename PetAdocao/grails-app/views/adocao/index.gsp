
<%@ page import="petadocao.Adocao" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Pet Adoção</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<link rel="icon" type="image/png" href="/PetAdocao/images/pata.png" />
		<link rel="stylesheet" type="text/css" href="/PetAdocao/css/style.css"/>
	</head>
	<body>
	<nav class="navbar navbar-fixed-top navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<g:link controller="Animal" action="Index" class="navbar-brand">
					Pet Adoção
				</g:link>
				<img src="/PetAdocao/images/pata.png" style="width: 22px;margin-top: 15px;"/>
			</div>
			<div id="navbar" class="collapse navbar-collapse" >
				<g:if test="${login != ''}">
					<g:if test="${ehAdmin == true}">
						<ul class="nav navbar-nav" style="margin-left:20px">
							<li><g:link controller="Animal" action="index"><g:message code="menu.home"/></g:link></li>
							<li><g:link controller="Adocao" action="adocoes"><g:message code="menu.adocao"/></g:link></li>
							<li class="active"><g:link controller="Adocao" action="index"><g:message code="menu.solicitacao"/></g:link></li>
							<li ><g:link controller="Animal" action="create"><g:message code="menu.cadastrarAnimais"/></g:link></li>
						</ul>
					</g:if>
					<g:else>
						<ul class="nav navbar-nav" style="margin-left:20px">
							<li class="active"><g:link controller="Animal" action="Index"><g:message code="menu.bemvindo"/></g:link></li>
							<li><g:link controller="Adocao" action="index"><g:message code="menu.minhasSolicitacoes"/></g:link></li>
						</ul>
					</g:else>
					<p class="navbar-text navbar-right"><g:message code="menu.bemvindo"/> ${login}!
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
				<h1 id="teste"><g:message code="menu.solicitacoesAdocao"/>o</h1>
				<g:if test="${flash.message}">
					<div class="message" role="status">${flash.message}</div>
				</g:if>
				<table>
					<thead>
					<tr>
						<g:sortableColumn property="idAnimal" title="${message(code: 'adocao.idAnimal.label', default: 'Id Animal')}" />

						<g:if test="${ehAdmin == true}">
							<g:sortableColumn property="loginCliente" title="${message(code: 'adocao.loginCliente.label', default: 'Login cliente')}" />
						</g:if>

						<g:sortableColumn property="data" title="${message(code: 'adocao.data.label', default: 'Data')}" />

						<g:sortableColumn property="status" title="${message(code: 'adocao.status.label', default: 'Status')}" />

						<g:if test="${ehAdmin == true}">
							<g:sortableColumn property="acao" title="Ação" />
						</g:if>
					</tr>
					</thead>
					<tbody>
					<g:each in="${adocaoInstanceList}" status="i" var="adocaoInstance">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

							<td>
								<g:link controller="Animal" action="show" id="${adocaoInstance.idAnimal}">${fieldValue(bean: adocaoInstance, field: "idAnimal")}</g:link>
							</td>

							<g:if test="${ehAdmin == true}">
								<td>${fieldValue(bean: adocaoInstance, field: "loginCliente")}</td>
							</g:if>

							<td><g:formatDate date="${adocaoInstance.data}" /></td>


							<td>${fieldValue(bean: adocaoInstance, field: "status")}</td>
							<g:if test="${ehAdmin == true}">
								<td>
									<g:form url="[controller:'Adocao', action:'aprovar']" style="display: inline-block" >
										<input style="display:none" name="loginCliente" value="${adocaoInstance.loginCliente}"/>
										<input style="display:none" name="data" value="${adocaoInstance.data}"/>
										<input style="display:none" name="idAnimal" value="${adocaoInstance.idAnimal}"/>
										<input style="display:none" name="status" value="${adocaoInstance.status}"/>
										<button type="submit" class="btn btn-success">
											<span class="glyphicon glyphicon-ok"></span>
										</button>
									</g:form>
									<g:form url="[controller:'Adocao', action:'rejeitar']"   style="display: inline-block">
										<input style="display:none" name="loginCliente" value="${adocaoInstance.loginCliente}"/>
										<input style="display:none" name="data" value="${adocaoInstance.data}"/>
										<input style="display:none" name="idAnimal" value="${adocaoInstance.idAnimal}"/>
										<input style="display:none" name="status" value="${adocaoInstance.status}"/>
										<button type="submit" class="btn btn-danger">
											<span class="glyphicon glyphicon-remove"></span>
										</button>
									</g:form>
								</td>
							</g:if>

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

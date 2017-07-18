
<%@ page import="petadocao.Animal" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Pet Adoção</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<link rel="icon" type="image/png" href="/PetAdocao/images/pata.png" />
		<link rel="stylesheet" type="text/css" href="/PetAdocao/css/style.css"/>
		<style>
			.property-label {
				font-weight:bold;
			}
			.fieldcontain {
				padding:5px;
			}
		</style>
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
								<li><g:link controller="Adocao" action="index"><g:message code="menu.solicitacao"/></g:link></li>
								<li ><g:link controller="Animal" action="create"><g:message code="menu.cadastrarAnimais"/></g:link></li>
							</ul>
						</g:if>
						<g:else>
							<ul class="nav navbar-nav" style="margin-left:20px">
								<li class="active"><g:link controller="Animal" action="Index"><g:message code="menu.home"/></g:link></li>
								<li><g:link controller="Adocao" action="index"><g:message code="menu.minhasSolicitacoes"/></g:link></li>
							</ul>
						</g:else>
						<p class="navbar-text navbar-right">
							<g:message code="menu.bemvindo"/> ${login}!
						<g:link controller="Login" action="logout" name="logout" class="navbar-link" style="color:lightgrey;font-weight:bold; margin-left:10px">Logout</g:link>
						</p>
					</g:if>
					<g:else>
						<p class="navbar-text navbar-right">
							<g:link controller="Login" action="Index" name="login" class="navbar-link">Login</g:link>
						</p>
						<p class="navbar-text navbar-right">
							<g:link controller="Cliente" action="create" name="cadastrar" class="navbar-link"><g:message code="menu.cadastrar"/></g:link>
						</p>
					</g:else>

				</div><!-- /.nav-collapse -->
			</div><!-- /.container -->
		</nav>
		<div class="container" style="margin-top:100px">
			<div class="row row-offcanvas row-offcanvas-right">
					<div class="row" style="width:80%;margin: 0 auto;">
						<div style="display:inline-block;width:45%;float:left">
							<center>
							<img src="/PetAdocao/images/animais/${animalInstance.apelido}.jpg" style="width:350px"/>
							</center>
						</div>
						<div class="show-animal" style="display:inline-block;width:50%;float:right">
							<div class="fieldcontain">
								<span id="apelido-label" class="property-label"><g:message code="menu.apelido"/> </span>
								<span class="property-value" aria-labelledby="apelido-label"><g:fieldValue bean="${animalInstance}" field="apelido"/></span>
							</div>
							<div class="fieldcontain">
								<span id="raca-label" class="property-label"><g:message code="menu.raca"/> </span>
								<span class="property-value" aria-labelledby="raca-label"><g:fieldValue bean="${animalInstance}" field="raca"/></span>
							</div>
							<div class="fieldcontain">
								<span id="sexo-label" class="property-label"><g:message code="menu.sexo"/> </span>
								<span class="property-value" aria-labelledby="sexo-label"><g:fieldValue bean="${animalInstance}" field="sexo"/></span>
							</div>
							<div class="fieldcontain">
								<span id="porte-label" class="property-label"><g:message code="menu.porte"/> </span>
								<span class="property-value" aria-labelledby="porte-label"><g:fieldValue bean="${animalInstance}" field="porte"/></span>
							</div>
							<div class="fieldcontain">
								<span id="vacinacao-label" class="property-label"><g:message code="menu.vacinacao"/> </span>
								<span class="property-value" aria-labelledby="vacinacao-label"><g:fieldValue bean="${animalInstance}" field="vacinacao"/></span>
							</div>

							<div class="fieldcontain">
								<span id="cor-label" class="property-label"><g:message code="menu.cor"/> </span>
								<span class="property-value" aria-labelledby="cor-label"><g:fieldValue bean="${animalInstance}" field="cor"/></span>
							</div>
							<div class="fieldcontain">
								<span id="data_entrada-label" class="property-label"><g:message code="menu.dataentrada"/></span>
								<span class="property-value" aria-labelledby="data_entrada-label"><g:formatDate date="${animalInstance?.data_entrada}" /></span>
							</div>
							<div class="fieldcontain">
								<span id="idade-label" class="property-label"><g:message code="menu.idade"/> </span>
								<span class="property-value" aria-labelledby="idade-label"><g:fieldValue bean="${animalInstance}" field="idade"/></span>
							</div>
							<div class="fieldcontain">
								<g:form url="[controller:'Adocao', action:'save']" >
									<input style="display:none" name="idAnimal" value="${animalInstance.id}"/>
									<g:submitButton name="create" class="btn btn-success" value="Adotar" />
								</g:form>
							</div>
						</div>
				</div>
			</div>
		</div>

	</body>
</html>

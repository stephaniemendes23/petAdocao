
<%@ page import="petadocao.Animal" %>

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
						<li class="active"><g:link controller="Animal" action="Index"><g:message code="menu.home"/></g:link></li>
						<li><g:link controller="Adocao" action="adocoes"><g:message code="menu.adocao"/></g:link></li>
						<li><g:link controller="Adocao" action="index"><g:message code="menu.solicitacao"/></g:link></li>
						<li ><g:link controller="Animal" action="create"><g:message code="menu.CadastrarAnimais"/></g:link></li>
					</ul>
				</g:if>
				<g:else>
					<ul class="nav navbar-nav" style="margin-left:20px">
						<li class="active"><g:link controller="Animal" action="Index"><g:message code="menu.home"/></g:link></li>
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
				<p class="navbar-text navbar-right">
					<g:link controller="Cliente" action="create" name="cadastrar" class="navbar-link"><g:message code="menu.cadastrar"/></g:link>
				</p>
			</g:else>

		</div><!-- /.nav-collapse -->
	</div><!-- /.container -->
</nav>
<div class="container" style="margin-top:100px">
	<div class="row row-offcanvas row-offcanvas-right">
		<div class="col-xs-12 col-sm-12">
			<div class="row">
				<g:each in="${animalInstanceList}" status="i" var="animalInstance">
					<div class="col-sm-6 col-md-3">
							<div class="thumbnail">
								<img src="/PetAdocao/images/animais/${animalInstance.apelido}.jpg" style="width:200px;height:185px">
								<div class="caption" style="text-align:center">
									<g:link controller="Animal" action="show" id="${animalInstance.id}"><span style="font-weight: bold; font-size:18px">${fieldValue(bean: animalInstance, field: "apelido")}</span></g:link>
									<p style="margin-top:10px"><b><g:message code="menu.porte"/></b> ${fieldValue(bean: animalInstance, field: "porte")}<br>
									<b><g:message code="menu.sexo"/></b> ${fieldValue(bean: animalInstance, field: "sexo")}</p>
									<p>
										<g:form url="[controller:'Adocao', action:'save']" >
											<input style="display:none" name="idAnimal" value="${animalInstance.id}"/>
											<g:submitButton name="create" class="btn btn-success" value="Adotar" />
										</g:form>
									</p>
								</div>
							</div>
					</div>
				</g:each>
			</div>
		</div>
	</div>
</div>
</body>
</html>


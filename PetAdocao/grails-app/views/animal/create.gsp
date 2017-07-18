<!DOCTYPE html>
<html>
	<head>
		<title>Pet Adoção</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<link rel="icon" type="image/png" href="../images/pata.png" />
		<link rel="stylesheet" type="text/css" href="../css/style.css"/>

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
				<g:if test="${params.login != ''}">
					<g:if test="${params.ehAdmin == true}">
						<ul class="nav navbar-nav" style="margin-left:20px">
							<li><g:link controller="Animal" action="Index"><g:message code="menu.home"/></g:link></li>
							<li><g:link controller="Adocao" action="adocoes"><g:message code="menu.adocao"/></g:link></li>
							<li><g:link controller="Adocao" action="index"><g:message code="menu.solicitacao"/></g:link></li>
							<li class="active"><g:link controller="Animal" action="create"><g:message code="menu.cadastrarAnimais"/></g:link></li>
						</ul>
					</g:if>
					<p class="navbar-text navbar-right"><g:message code="menu.bemvindo"/> ${params.login}!
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
	<div class="container container-animal" style="margin-top:100px">
		<h1><g:message code="menu.cadastrarAnimais"/></h1>
		<center>
		<g:form url="[resource:animalInstance, action:'save']" >
			<fieldset class="form create-animal" style="text-align:left">
				<g:render template="form"/>
			</fieldset>
			<fieldset class="buttons">
				<g:submitButton name="create" class="btn btn-success" value="Cadastrar" />
			</fieldset>
		</g:form>
		</center>
	</div>
	</body>
</html>

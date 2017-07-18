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
				<p class="navbar-text navbar-right">
					<g:link controller="Login" action="Index" name="login" class="navbar-link">Login</g:link>
				</p>
				<p class="navbar-text navbar-right">
					<g:link controller="Cliente" action="create" name="cadastrar" class="navbar-link"><g:message code="menu.cadastrar"/></g:link>
				</p>
			</div><!-- /.nav-collapse -->
		</div><!-- /.container -->
	</nav>
	<div class="container container-animal" style="margin-top:100px">
		<h1><g:message code="menu.cadastrar"/></h1>
		<center>
			<g:form url="[resource:clienteInstance, action:'save']" >
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

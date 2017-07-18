
<%@ page import="petadocao.Cliente" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-cliente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-cliente" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list cliente">
			
				<g:if test="${clienteInstance?.sexo}">
				<li class="fieldcontain">
					<span id="sexo-label" class="property-label"><g:message code="cliente.sexo.label" default="Sexo" /></span>
					
						<span class="property-value" aria-labelledby="sexo-label"><g:fieldValue bean="${clienteInstance}" field="sexo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.estado}">
				<li class="fieldcontain">
					<span id="estado-label" class="property-label"><g:message code="cliente.estado.label" default="Estado" /></span>
					
						<span class="property-value" aria-labelledby="estado-label"><g:fieldValue bean="${clienteInstance}" field="estado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="cliente.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${clienteInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.sobrenome}">
				<li class="fieldcontain">
					<span id="sobrenome-label" class="property-label"><g:message code="cliente.sobrenome.label" default="Sobrenome" /></span>
					
						<span class="property-value" aria-labelledby="sobrenome-label"><g:fieldValue bean="${clienteInstance}" field="sobrenome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.rua}">
				<li class="fieldcontain">
					<span id="rua-label" class="property-label"><g:message code="cliente.rua.label" default="Rua" /></span>
					
						<span class="property-value" aria-labelledby="rua-label"><g:fieldValue bean="${clienteInstance}" field="rua"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.bairro}">
				<li class="fieldcontain">
					<span id="bairro-label" class="property-label"><g:message code="cliente.bairro.label" default="Bairro" /></span>
					
						<span class="property-value" aria-labelledby="bairro-label"><g:fieldValue bean="${clienteInstance}" field="bairro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.cidade}">
				<li class="fieldcontain">
					<span id="cidade-label" class="property-label"><g:message code="cliente.cidade.label" default="Cidade" /></span>
					
						<span class="property-value" aria-labelledby="cidade-label"><g:fieldValue bean="${clienteInstance}" field="cidade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="cliente.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${clienteInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.senha}">
				<li class="fieldcontain">
					<span id="senha-label" class="property-label"><g:message code="cliente.senha.label" default="Senha" /></span>
					
						<span class="property-value" aria-labelledby="senha-label"><g:fieldValue bean="${clienteInstance}" field="senha"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.numero}">
				<li class="fieldcontain">
					<span id="numero-label" class="property-label"><g:message code="cliente.numero.label" default="Numero" /></span>
					
						<span class="property-value" aria-labelledby="numero-label"><g:fieldValue bean="${clienteInstance}" field="numero"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.idade}">
				<li class="fieldcontain">
					<span id="idade-label" class="property-label"><g:message code="cliente.idade.label" default="Idade" /></span>
					
						<span class="property-value" aria-labelledby="idade-label"><g:fieldValue bean="${clienteInstance}" field="idade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.CPF}">
				<li class="fieldcontain">
					<span id="CPF-label" class="property-label"><g:message code="cliente.CPF.label" default="CPF" /></span>
					
						<span class="property-value" aria-labelledby="CPF-label"><g:fieldValue bean="${clienteInstance}" field="CPF"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.celular}">
				<li class="fieldcontain">
					<span id="celular-label" class="property-label"><g:message code="cliente.celular.label" default="Celular" /></span>
					
						<span class="property-value" aria-labelledby="celular-label"><g:fieldValue bean="${clienteInstance}" field="celular"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.login}">
				<li class="fieldcontain">
					<span id="login-label" class="property-label"><g:message code="cliente.login.label" default="Login" /></span>
					
						<span class="property-value" aria-labelledby="login-label"><g:fieldValue bean="${clienteInstance}" field="login"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:clienteInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${clienteInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

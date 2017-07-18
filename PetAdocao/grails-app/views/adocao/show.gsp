
<%@ page import="petadocao.Adocao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'adocao.label', default: 'Adocao')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-adocao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-adocao" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list adocao">
			
				<g:if test="${adocaoInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="adocao.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${adocaoInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${adocaoInstance?.CPFCliente}">
				<li class="fieldcontain">
					<span id="CPFCliente-label" class="property-label"><g:message code="adocao.CPFCliente.label" default="CPFC liente" /></span>
					
						<span class="property-value" aria-labelledby="CPFCliente-label"><g:fieldValue bean="${adocaoInstance}" field="CPFCliente"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${adocaoInstance?.data}">
				<li class="fieldcontain">
					<span id="data-label" class="property-label"><g:message code="adocao.data.label" default="Data" /></span>
					
						<span class="property-value" aria-labelledby="data-label"><g:formatDate date="${adocaoInstance?.data}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${adocaoInstance?.idAnimal}">
				<li class="fieldcontain">
					<span id="idAnimal-label" class="property-label"><g:message code="adocao.idAnimal.label" default="Id Animal" /></span>
					
						<span class="property-value" aria-labelledby="idAnimal-label"><g:fieldValue bean="${adocaoInstance}" field="idAnimal"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:adocaoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${adocaoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

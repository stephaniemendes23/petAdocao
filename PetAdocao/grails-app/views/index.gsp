
<%@ page import="petadocao.Animal" %>
<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main">
	<g:set var="entityName" value="${message(code: 'animal.label', default: 'Animal')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<a href="#list-animal" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
	<ul>
		<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
		<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
	</ul>
</div>
<div id="list-animal" class="content scaffold-list" role="main">
	<h1><g:message code="default.list.label" args="[entityName]" /></h1>
	<g:if test="${flash.message}">
		<div class="message" role="status">${flash.message}</div>
	</g:if>
	<table>
		<thead>
		<tr>

			<g:sortableColumn property="porte" title="${message(code: 'animal.porte.label', default: 'Porte')}" />

			<g:sortableColumn property="vacinacao" title="${message(code: 'animal.vacinacao.label', default: 'Vacinacao')}" />

			<g:sortableColumn property="sexo" title="${message(code: 'animal.sexo.label', default: 'Sexo')}" />

			<g:sortableColumn property="apelido" title="${message(code: 'animal.apelido.label', default: 'Apelido')}" />

			<g:sortableColumn property="cor" title="${message(code: 'animal.cor.label', default: 'Cor')}" />

			<g:sortableColumn property="data_entrada" title="${message(code: 'animal.data_entrada.label', default: 'Dataentrada')}" />

		</tr>
		</thead>
		<tbody>
		<g:each in="${animalInstanceList}" status="i" var="animalInstance">
			<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

				<td><g:link action="show" id="${animalInstance.id}">${fieldValue(bean: animalInstance, field: "porte")}</g:link></td>

				<td>${fieldValue(bean: animalInstance, field: "vacinacao")}</td>

				<td>${fieldValue(bean: animalInstance, field: "sexo")}</td>

				<td>${fieldValue(bean: animalInstance, field: "apelido")}</td>

				<td>${fieldValue(bean: animalInstance, field: "cor")}</td>

				<td><g:formatDate date="${animalInstance.data_entrada}" /></td>

			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<g:paginate total="${animalInstanceCount ?: 0}" />
	</div>
</div>
</body>
</html>
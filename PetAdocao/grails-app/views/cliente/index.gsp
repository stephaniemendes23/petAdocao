
<%@ page import="petadocao.Cliente" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-cliente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-cliente" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="sexo" title="${message(code: 'cliente.sexo.label', default: 'Sexo')}" />
					
						<g:sortableColumn property="estado" title="${message(code: 'cliente.estado.label', default: 'Estado')}" />
					
						<g:sortableColumn property="nome" title="${message(code: 'cliente.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="sobrenome" title="${message(code: 'cliente.sobrenome.label', default: 'Sobrenome')}" />
					
						<g:sortableColumn property="rua" title="${message(code: 'cliente.rua.label', default: 'Rua')}" />
					
						<g:sortableColumn property="bairro" title="${message(code: 'cliente.bairro.label', default: 'Bairro')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${clienteInstanceList}" status="i" var="clienteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${clienteInstance.id}">${fieldValue(bean: clienteInstance, field: "sexo")}</g:link></td>
					
						<td>${fieldValue(bean: clienteInstance, field: "estado")}</td>
					
						<td>${fieldValue(bean: clienteInstance, field: "nome")}</td>
					
						<td>${fieldValue(bean: clienteInstance, field: "sobrenome")}</td>
					
						<td>${fieldValue(bean: clienteInstance, field: "rua")}</td>
					
						<td>${fieldValue(bean: clienteInstance, field: "bairro")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${clienteInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>

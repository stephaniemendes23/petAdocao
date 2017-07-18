<%@ page import="petadocao.Cliente" %>



<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'sexo', 'error')} required">
	<label for="sexo">
		<g:message code="cliente.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sexo" from="${clienteInstance.constraints.sexo.inList}" required="" value="${clienteInstance?.sexo}" valueMessagePrefix="cliente.sexo"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'estado', 'error')} required">
	<label for="estado">
		<g:message code="cliente.estado.label" default="Estado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="estado" from="${clienteInstance.constraints.estado.inList}" required="" value="${clienteInstance?.estado}" valueMessagePrefix="cliente.estado"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="cliente.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${clienteInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'sobrenome', 'error')} required">
	<label for="sobrenome">
		<g:message code="cliente.sobrenome.label" default="Sobrenome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="sobrenome" required="" value="${clienteInstance?.sobrenome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'rua', 'error')} required">
	<label for="rua">
		<g:message code="cliente.rua.label" default="Rua" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="rua" required="" value="${clienteInstance?.rua}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'bairro', 'error')} required">
	<label for="bairro">
		<g:message code="cliente.bairro.label" default="Bairro" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="bairro" required="" value="${clienteInstance?.bairro}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'cidade', 'error')} required">
	<label for="cidade">
		<g:message code="cliente.cidade.label" default="Cidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cidade" required="" value="${clienteInstance?.cidade}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="cliente.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${clienteInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'senha', 'error')} required">
	<label for="senha">
		<g:message code="cliente.senha.label" default="Senha" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="senha" maxlength="10" required="" value="${clienteInstance?.senha}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'numero', 'error')} required">
	<label for="numero">
		<g:message code="cliente.numero.label" default="Numero" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numero" type="number" min="1" value="${clienteInstance.numero}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'idade', 'error')} required">
	<label for="idade">
		<g:message code="cliente.idade.label" default="Idade" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idade" type="number" min="18" value="${clienteInstance.idade}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'CPF', 'error')} required">
	<label for="CPF">
		<g:message code="cliente.CPF.label" default="CPF" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="CPF" required="" value="${clienteInstance?.CPF}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'celular', 'error')} required">
	<label for="celular">
		<g:message code="cliente.celular.label" default="Celular" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="celular" required="" value="${clienteInstance?.celular}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'login', 'error')} required">
	<label for="login">
		<g:message code="cliente.login.label" default="Login" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="login" required="" value="${clienteInstance?.login}"/>

</div>


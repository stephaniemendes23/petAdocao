<%@ page import="petadocao.Admin" %>



<div class="fieldcontain ${hasErrors(bean: adminInstance, field: 'login', 'error')} required">
	<label for="login">
		<g:message code="admin.login.label" default="Login" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="login" required="" value="${adminInstance?.login}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: adminInstance, field: 'senha', 'error')} required">
	<label for="senha">
		<g:message code="admin.senha.label" default="Senha" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="senha" maxlength="10" required="" value="${adminInstance?.senha}"/>

</div>


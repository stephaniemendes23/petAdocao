<%@ page import="petadocao.Adocao" %>



<div class="fieldcontain ${hasErrors(bean: adocaoInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="adocao.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="status" from="${adocaoInstance.constraints.status.inList}" required="" value="${adocaoInstance?.status}" valueMessagePrefix="adocao.status"/>

</div>

<div class="fieldcontain ${hasErrors(bean: adocaoInstance, field: 'CPFCliente', 'error')} required">
	<label for="CPFCliente">
		<g:message code="adocao.CPFCliente.label" default="CPFC liente" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="CPFCliente" required="" value="${adocaoInstance?.CPFCliente}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: adocaoInstance, field: 'data', 'error')} required">
	<label for="data">
		<g:message code="adocao.data.label" default="Data" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data" precision="day"  value="${adocaoInstance?.data}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: adocaoInstance, field: 'idAnimal', 'error')} required">
	<label for="idAnimal">
		<g:message code="adocao.idAnimal.label" default="Id Animal" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idAnimal" type="number" value="${adocaoInstance.idAnimal}" required=""/>

</div>


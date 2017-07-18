<%@ page import="petadocao.Animal" %>



<div class="fieldcontain ${hasErrors(bean: animalInstance, field: 'porte', 'error')} required">
	<label for="porte">
		<g:message code="animal.porte.label" default="Porte" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="porte" from="${animalInstance.constraints.porte.inList}" required="" value="${animalInstance?.porte}" valueMessagePrefix="animal.porte"/>

</div>

<div class="fieldcontain ${hasErrors(bean: animalInstance, field: 'vacinacao', 'error')} required">
	<label for="vacinacao">
		<g:message code="animal.vacinacao.label" default="Vacinação" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="vacinacao" from="${animalInstance.constraints.vacinacao.inList}" required="" value="${animalInstance?.vacinacao}" valueMessagePrefix="animal.vacinacao"/>

</div>

<div class="fieldcontain ${hasErrors(bean: animalInstance, field: 'sexo', 'error')} required">
	<label for="sexo">
		<g:message code="animal.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sexo" from="${animalInstance.constraints.sexo.inList}" required="" value="${animalInstance?.sexo}" valueMessagePrefix="animal.sexo"/>

</div>

<div class="fieldcontain ${hasErrors(bean: animalInstance, field: 'apelido', 'error')} required">
	<label for="apelido">
		<g:message code="animal.apelido.label" default="Apelido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apelido" required="" value="${animalInstance?.apelido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: animalInstance, field: 'cor', 'error')} required">
	<label for="cor">
		<g:message code="animal.cor.label" default="Cor" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cor" required="" value="${animalInstance?.cor}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: animalInstance, field: 'data_entrada', 'error')} required">
	<label for="data_entrada">
		<g:message code="animal.data_entrada.label" default="Data de entrada" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data_entrada" precision="day"  value="${animalInstance?.data_entrada}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: animalInstance, field: 'idade', 'error')} required">
	<label for="idade">
		<g:message code="animal.idade.label" default="Idade" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="idade" required="" value="${animalInstance?.idade}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: animalInstance, field: 'raca', 'error')} required">
	<label for="raca">
		<g:message code="animal.raca.label" default="Raça" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="raca" required="" value="${animalInstance?.raca}"/>

</div>


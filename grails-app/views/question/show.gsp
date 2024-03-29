
<%@ page import="survey.Question" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'question.label', default: 'Question')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-question" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-question" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list question">
			
				<g:if test="${questionInstance?.questionName}">
				<li class="fieldcontain">
					<span id="questionName-label" class="property-label"><g:message code="question.questionName.label" default="Question Name" /></span>
					
						<span class="property-value" aria-labelledby="questionName-label"><g:fieldValue bean="${questionInstance}" field="questionName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionInstance?.questionType}">
				<li class="fieldcontain">
					<span id="questionType-label" class="property-label"><g:message code="question.questionType.label" default="Question Type" /></span>
					
						<span class="property-value" aria-labelledby="questionType-label"><g:fieldValue bean="${questionInstance}" field="questionType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionInstance?.answer}">
				<li class="fieldcontain">
					<span id="answer-label" class="property-label"><g:message code="question.answer.label" default="Answer" /></span>
					
						<g:each in="${questionInstance.answer}" var="a">
						<span class="property-value" aria-labelledby="answer-label"><g:link controller="answer" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${questionInstance?.id}" />
					<g:link class="edit" action="edit" id="${questionInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

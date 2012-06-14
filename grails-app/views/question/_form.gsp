<%@ page import="survey.Question" %>



<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'questionName', 'error')} ">
	<label for="questionName">
		<g:message code="question.questionName.label" default="Question Name" />
		
	</label>
	<g:textField name="questionName" value="${questionInstance?.questionName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'questionType', 'error')} ">
	<label for="questionType">
		<g:message code="question.questionType.label" default="Question Type" />
		
	</label>
	<g:select name="questionType" from="${questionInstance.constraints.questionType.inList}" value="${questionInstance?.questionType}" valueMessagePrefix="question.questionType" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'answer', 'error')} ">
	<label for="answer">
		<g:message code="question.answer.label" default="Answer" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${questionInstance?.answer?}" var="a">
    <li><g:link controller="answer" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="answer" action="create" params="['question.id': questionInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'answer.label', default: 'Answer')])}</g:link>
</li>
</ul>

</div>


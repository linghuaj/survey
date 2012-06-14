
<%@ page import="survey.Question" %>
<g:each in="${questionInstanceList}"  var="questionInstance"> 
<!-- loop in questionInstanceList, iterator is questionInstance-->			
	${questionInstance.questionName}
	</br>

	<g:each in ="${questionInstance.answer}" var="a">
		${a} </br>
	</g:each>
	
	</br>
	
</g:each>
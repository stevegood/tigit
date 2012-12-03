<%--
  Created by IntelliJ IDEA.
  User: steve
  Date: 12/3/12
  Time: 4:03 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title><g:message code="create.project.title" default="Create a Project" /></title>
    <meta name="layout" content="main" />
</head>

<body>

    <g:if test="${projectInstance.hasErrors()}">
        <ul>
            <g:eachError bean="${projectInstance}" var="error">
                <li><g:message error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:if>

    <g:form name="createForm" action="create" controller="project">
        <div>
            <label for="name"><g:message code="name.label" default="Name" /></label><br />
            <g:textField name="name" value="${projectInstance?.name}" />
        </div>

        <div>
            <label for="description"><g:message code="description.label" default="Description" /></label><br />
            <g:textArea name="description" rows="5" cols="10">${projectInstance?.description}</g:textArea>
        </div>

        <div>
            <label for="url"><g:message code="url.label" default="URL" /> (<g:message code="optional.label" default="optional" />)</label><br/>
            <g:textField name="url" placeholder="http://" value="${projectInstance?.url}" />
        </div>

        <div>
            <button type="submit"><g:message code="submit.label" default="Submit" /></button>
        </div>
    </g:form>

</body>
</html>
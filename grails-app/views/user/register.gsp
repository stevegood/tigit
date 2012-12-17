<%--
  Created by IntelliJ IDEA.
  User: steve
  Date: 12/16/12
  Time: 4:52 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title><g:message code="register.header" default="Register"/></title>
    <meta name="layout" content="main"/>
</head>

<body>

<div class="row">

    <div class="span6">
        <h1><g:message code="register.header" default="Register"/></h1>

        <p>We will never share your information with anyone without your permission.  That's a promise.</p>
    </div>

    <div class="span6">

        <form action="register" method="POST" class="form">

            <fieldset>
                <legend>Tell us about yourself</legend>

                <g:if test="${userInstance.hasErrors()}">
                    <div class="alert alert-block alert-error">
                        <ul>
                            <g:eachError bean="${userInstance}" var="error">
                                <li><g:message error="${error}"/></li>
                            </g:eachError>
                        </ul>
                    </div>
                </g:if>

                <div class="row">
                    <div class="span3 control-group ${ hasErrors( bean: userInstance, field: 'firstName','error')}">
                        <label class="control-label" for="firstName">
                            <g:message code="user.first.name" default="First Name"/>:
                        </label>
                        <div class="controls">
                            <g:textField name="firstName" required="required" class="span3" value="${ userInstance?.firstName }" />
                        </div>
                    </div>

                    <div class="span3 control-group ${ hasErrors( bean: userInstance, field: 'lastName','error')}">
                        <label class="control-label" for="lastName">
                            <g:message code="user.last.name" default="Last Name"/>:
                        </label>
                        <div class="controls">
                            <g:textField name="lastName" required="required" class="span3" value="${ userInstance?.lastName }"/>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="span3 control-group ${ hasErrors( bean: userInstance, field: 'email','error')}">
                        <label class="control-label" for="email">
                            <g:message code="user.email" default="Email" />
                        </label>
                        <div class="controls">
                            <input type="email" id="email" name="email" required="required" class="span3" value="${ userInstance?.email }" />
                        </div>
                    </div>

                    <div class="span3 control-group ${ hasErrors( bean: userInstance, field: 'username','error')}">
                        <label class="control-label" for="username">
                            <g:message code="user.username" default="Username" />
                        </label>
                        <div class="controls">
                            <input type="text" id="username" name="username" required="required" class="span3" value="${ userInstance?.username }" />
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="span3 control-group ${ passwordsDontMatch ? 'error' : ''}">
                        <label class="control-label" for="password">
                            <g:message code="user.password" default="Password"/>:
                        </label>
                        <div class="controls">
                            <input type="password" id="password" name="password" required="required" class="span3"/>
                        </div>
                    </div>

                    <div class="span3 control-group ${ passwordsDontMatch ? 'error' : ''}">
                        <label class="control-label" for="password2">
                            <g:message code="user.password" default="Password"/> <g:message code="again.label" default="again" />:
                        </label>
                        <div class="controls">
                            <input type="password" id="password2" name="password2" required="required" class="span3"/>
                        </div>
                    </div>
                </div>

            </fieldset>

            <div class="form-actions">
                <button class="btn btn-primary"><g:message code="register.button" default="Register"/></button>
            </div>
        </form>
    </div>
</div>

</body>
</html>

<html>
<head>
	<meta name='layout' content='main'/>
	<title><g:message code="springSecurity.login.title"/></title>
</head>

<body>

<form action='${postUrl}' method='POST' class="form-signin" autocomplete='off'>
    <h2 class="form-signin-heading">Please sign in</h2>
    <input type="text" name='j_username' class="input-block-level" placeholder="${message( code: 'springSecurity.login.username.label' )}">
    <input type="password" name='j_password' class="input-block-level" placeholder="${message( code: 'springSecurity.login.password.label' )}">
    <label class="checkbox">
        <input type="checkbox" name='${rememberMeParameter}' ${ hasCookie ? 'checked="checked"' : '' } /> <g:message code="springSecurity.login.remember.me.label"/>
    </label>
    <button class="btn btn-large btn-primary" type="submit">${message(code: "springSecurity.login.button")}</button>
</form>

</body>
</html>

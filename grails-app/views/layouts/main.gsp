<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="Grails"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <r:require modules="bootstrap,bootstrap_collapse"/>
    <g:layoutHead/>
    <r:layoutResources/>
</head>

<body>

<div id="wrap" class="container">

    <div class="navbar navbar-fixed-top navbar-inverse">
        <div class="navbar-inner">
            <div class="container">

                <!-- .btn-navbar is used as the toggle for collapsed navbar content -->
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>

                <a href="/" class="brand" style="position: absolute; top: -15px;">
                    <g:img dir="/images" file="logo_80x80.png" height="80px" width="80px" />
                </a>

                <a href="/" class="brand" style="margin-left: 70px;">
                    Tigit
                </a>

                <div class="nav-collapse">

                    <ul class="nav">
                        <!-- TODO: navigation -->
                    </ul>

                    <ul class="nav pull-right">
                        <sec:ifNotLoggedIn>
                            <li>
                                <g:link action="auth" controller="login">
                                    <g:message code="auth.sign.in" default="Sign In"/>
                                </g:link>
                            </li>
                            <li>
                                <g:link action="register" controller="user">
                                    <g:message code="user.register" default="Register"/>
                                </g:link>
                            </li>
                        </sec:ifNotLoggedIn>
                        <sec:ifLoggedIn>
                            <li>
                                <g:link controller="logout">
                                    <g:message code="auth.sign.out" default="Sign Out"/>
                                </g:link>
                            </li>
                        </sec:ifLoggedIn>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div id="content" class="span12">

            <g:if test='${flash.message}'>
                <div class="row">
                    <div class="span12">
                        <div class='alert alert-block alert-${ flash.alertType ?: 'info' }'>${flash.message}</div>
                    </div>
                </div>
            </g:if>

            <g:layoutBody/>
        </div>
    </div>

</div>

<div id="footer">
    <div class="container">
        <p class="pull-right">Powered by <a href="http://github.com/stevegood/tigit" target="_blank">Tigit</a></p>
    </div>
</div>

<r:layoutResources/>

</body>
</html>

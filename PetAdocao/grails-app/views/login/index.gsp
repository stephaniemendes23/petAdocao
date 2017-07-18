
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Pet Adoção</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="icon" type="image/png" href="../images/pata.png" />
    <link rel="stylesheet" type="text/css" href="../css/style.css"/>
</head>

<body>
<nav class="navbar navbar-fixed-top navbar-inverse">
    <div class="container">
        <div class="navbar-header">
            <g:link controller="Animal" action="Index" class="navbar-brand">
                Pet Adoção
            </g:link>
            <img src="../images/pata.png" style="width: 22px;margin-top: 15px;"/>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <p class="navbar-text navbar-right">
                <g:link controller="Login" action="Index" name="login" class="navbar-link">Login</g:link>
            </p>
            <p class="navbar-text navbar-right">
                <g:link controller="Cliente" action="create" name="cadastrar" class="navbar-link"><g:message code="menu.cadastrar"/></g:link>
            </p>
        </div><!-- /.nav-collapse -->
    </div><!-- /.container -->
</nav>
<div class="container" style="margin-top:100px">
    <div class="row row-offcanvas row-offcanvas-right">
        <div id="login" class="content scaffold-create" role="main" style="text-align:center">
            <g:form url="[controller:'Login', action:'login']" >
                <fieldset class="form">
                    <div class="fieldcontain required" >
                        <label for="login" style="font-weight:normal">
                            Login:
                        </label>
                        <g:textField name="login" required="" size="25px"/>
                    </div>

                    <div class="fieldcontain required" style="margin:10px">
                        <label for="senha" style="font-weight:normal">
                            Senha:
                        </label>
                        <g:passwordField name="senha" maxlength="10" required="" size="25px"/>
                    </div>
                </fieldset>
                <fieldset class="buttons" style="margin-top:10px">
                    <g:submitButton name="btnLogin" class="btn btn-success" value="Login" />
                </fieldset>
            </g:form>
        </div>
    </div>
</div>

</body>
</html>
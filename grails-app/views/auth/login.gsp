<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="login"/>
    <title>Login</title>
</head>

<body>
    <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
    </g:if>
    <g:form action="signIn">
        <br/>
        <hr/>
        <b>Access Disclaimer</b>: As a public service, the <i>Nicotiana benthamiana</i> Sequencing Consortium (NbSC) is making the completed <i>N. benthamiana</i> (LAB strain) genome sequence available before scientific publication. This balances the imperative that the genome sequence be made available as soon and as completely as possible with the desire of contributing scientists to reserve a reasonable period of time to publish on the genome sequencing and analysis without concerns about preemption by other groups. By accessing these data, you agree not to publish any articles containing analyses of genes or genomic data on a whole genome or chromosome scale prior to publication by the Consortium and/or its collaborators of a comprehensive genome analysis.
        <br>
        For Public access, please use <b>username:</b> anonymous@apollo.au  and  <b>password</b>: anonymous
        <br/>
        <br/>
        <input type="hidden" name="targetUri" value="${targetUri}" class="col-md-4"/>
        <div class="col-md-5 col-lg-offset-1" style="margin-top: 10px;">
            <input name="username" value="${username}" type="username" class="form-control col-md-4"
                   style="margin:10px;"
                   placeholder="Username (email)"
                   required autofocus/>
            <input type="password" name="password" value="" class="form-control" placeholder="Password" required
                   style="margin:10px;"/>
                <input class="col-md-4 col-md-offset-1 btn btn-lg btn-primary" type="submit"
                       value="Login">

                <label class="checkbox col-md-4" style="margin:10px;">
                    <g:checkBox name="rememberMe" value="${rememberMe}"/>
                    <input class="checkbox" type="checkbox" name="rememberMe" value="${rememberMe}"/>
                    Remember me
                </label>
        </div>
    </g:form>
</body>
</html>

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
        <p>
        As a public service, we are making the chromosome-level N. benthamiana (LAB and QLD strain) genome sequences and related information available to all without restriction. However, if you use them in a publication, we ask that you cite our paper:
        </p>
        <p>
        Ranawaka, B., An, J., Lorenc, M.T. et al. A multi-omic Nicotiana benthamiana resource for fundamental research and biotechnology. Nat. Plants (2023). <a href="https://doi.org/10.1038/s41477-023-01489-8">https://doi.org/10.1038/s41477-023-01489-8</a>
        </p>
        <p>
        To access:
        <br />
        Please use username: anonymous@apollo.au and password: anonymous
        </p>
        <p>
        Or contact us <a href="mailto:peter.waterhouse@qut.edu.au;m.lorenc@qut.edu.au;j.an@qut.edu.au">peter.waterhouse@qut.edu.au;m.lorenc@qut.edu.au;j.an@qut.edu.au</a> for a specific account.
        </p>
        <p>
        We strongly encourage anyone who believes that any gene model is missing, or incorrectly called, to make corrections using the WebApollo Browser by dragging the model up into (or creating a new model in) the top yellow band and editing it. A youtube video on the basics of doing this can be found <a href="https://www.youtube.com/watch?v=KZP2x-BQu4k">here</a>. We will regularly inspect new annotations and incorporate them into the annotation track. Please note there are a number of annotation tracks that can be made visible by clicking on the Tracks tab then boxes in the submenu.  We have chosen the “best” one (v103) to be visible by default, but some genes are currently better annotated in different annotation tracks.
        </p>
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

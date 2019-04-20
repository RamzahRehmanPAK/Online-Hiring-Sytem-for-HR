<%@ page import="classes.Person" %>
<%@ page import="classes.Applicant" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Untitled</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Bitter:400,700">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/Article-List.css">
    <link rel="stylesheet" href="assets/css/File-Input---Beautiful-Input--Button-Approach-Jasny-Bootstrap1.css">
    <link rel="stylesheet" href="assets/css/Footer-Basic.css">
    <link rel="stylesheet" href="assets/css/Header-Dark.css">
    <link rel="stylesheet" href="assets/css/login-vertical-horizontal.css">
    <link rel="stylesheet" href="assets/css/login-vertical-horizontal1.css">
    <link rel="stylesheet" href="assets/css/Navigation-with-Search1.css">
    <link rel="stylesheet" href="assets/css/Pretty-Registration-Form.css">
    <link rel="stylesheet" href="assets/css/styles.css">

</head>

<body>
    <div>
        <div class="header-dark">
            <nav class="navbar navbar-default navigation-clean-search" style="background-color: black;">
                <div class="container" style="background-color: grey">
                    <div class="navbar-header" style="background-color: grey;">
                        <a class="navbar-brand navbar-link" href="#"> </a>
                        <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                    </div>
                    <div class="collapse navbar-collapse" id="navcol-1">
                        <ul class="nav navbar-nav">
                            <li role="presentation"><a href="home.jsp" style="width:100px;color:black;">Home </a></li>
                        </ul>
                        <ul class="nav navbar-nav" style="background-color:transparent;">
                            <li class="active" role="presentation" style="background-color:transparent;"><a href="#" style="color:black;background-color:transparent;">About US</a></li>
                            <li role="presentation"><a href="#" style="color:black;">FAQ </a></li>
                        </ul>
                           </div>
                </div>
            </nav>
            <div class="container hero">
                <div class="row" style="background-color:rgb(182,207,185);opacity:.8;">
                    <div class="col-md-8 col-md-offset-2">
                        <h1 class="text-center" style="color:#9f0358;font-weight:200;">RED BRICK HOTEL </h1></div>
                </div>
            </div>
        </div>
    </div>
    <div style="margin-top:50px;">
        <div>
            <label style="width:400px;height:20px;font-size:medium;"><strong>Name:</strong> </label>
            <label style="width:400px;height:20px;font-size:medium;" id="name"></label>
        </div>

        <div>
            <label style="width:400px;height:20px;font-size:medium;"><strong>Phone No:</strong></label>
            <label style="width:400px;height:20px;font-size:medium;" id="phoneNo"></label>
        </div>
        <div>
            <label style="width:400px;height:20px;font-size:medium;"><strong>Email:</strong> </label>
            <label style="width:400px;height:20px;font-size:medium;" id="email"></label>
        </div>
        <div>
            <label style="width:400px;height:20px;font-size:medium;"><strong>Address:</strong></label>
            <label style="width:400px;height:20px;font-size:medium;" id="address"></label>
        </div>
        <div>
            <label style="width:400px;height:20px;font-size:medium;"><strong>Application Status:</strong> </label>
            <label style="width:400px;height:20px;font-size:medium;" id="ApplicationStatus"></label>
        </div>
        <div>
            <label style="width:400px;height:20px;font-size:medium;"><strong> Ranked by SME:</strong></label>
            <label style="width:400px;height:20px;font-size:medium;" id="SMERank"></label>
        </div>
        <div>
            <label style="width:400px;height:20px;font-size:medium;"><strong>Ranked by Manager:</strong></label>
            <label style="width:400px;height:20px;font-size:medium;" id="ManagerRank"></label>
        </div>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/File-Input---Beautiful-Input--Button-Approach-Jasny-Bootstrap.js"></script>
</body>

</html>


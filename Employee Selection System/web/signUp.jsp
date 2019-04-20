<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WebUI</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Bitter:400,700">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Titillium+Web:400,600,700">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/Article-List.css">
    <link rel="stylesheet" href="assets/css/File-Input---Beautiful-Input--Button-Approach-Jasny-Bootstrap1.css">
    <link rel="stylesheet" href="assets/css/Footer-Basic.css">
    <link rel="stylesheet" href="assets/css/Header-Dark.css">
    <link rel="stylesheet" href="assets/css/Navigation-with-Search1.css">
    <link rel="stylesheet" href="assets/css/popup.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/Button-Change-Text-on-Hover-1.css">
    <link rel="stylesheet" href="assets/css/Button-Change-Text-on-Hover.css">

    <link rel="stylesheet" href="assets/css/Pretty-Registration-Form.css">
    <link rel="stylesheet" href="assets/css/Pretty-Search-Form.css">
    <link rel="stylesheet" href="assets/css/login-vertical-horizontal.css">
    <link rel="stylesheet" href="assets/css/login-vertical-horizontal1.css">
    <link rel="stylesheet" href="assets/js/navigation.js">


</head>

<body>
    <div style="height:250px;">
        <div class="header-dark" style="height:250px;">
            <nav class="navbar navbar-default navigation-clean-search" style="background-color:black;">
    <div class="container" style="background-color:rgb(210,205,205);opacity:.7;">
        <div class="navbar-header" style="color:pink;background-color:transparent;">
            <a href="#" class="navbar-brand navbar-link"> </a>
            <button data-toggle="collapse" data-target="#navcol-1" class="navbar-toggle collapsed"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
        </div>
        <div class="collapse navbar-collapse" id="navcol-1">
            <ul class="nav navbar-nav">
                <li role="presentation"><a href="index.jsp" onclick="showHome();"style="width:100px;color:rgb(98,5,44);font-size:larger;"><strong>Home</strong> </a></li>
            </ul>
            <ul class="nav navbar-nav" style="background-color:transparent;">
                 </ul>
            <p class="navbar-text navbar-right" style="color:rgb(98,5,44);">
               
                <a class="btn btn-default action-button" href="login.jsp" style="  color:rgb(98,5,44);
">Log In</a></p>
        </div>
    </div>
</nav>
            <div class="container hero">
                <div class="row" style="background-color:rgb(182,207,185);opacity:.8;margin-top:-20px;height:100px;">
                    <div class="col-md-8 col-md-offset-2">
                        <h1 class="text-center" style="color:#9f0358;font-weight:200;">RED BRICK HOTEL </h1></div>
                </div>
            </div>
        </div>
    </div>
    <div class="row register-form">
        <div class="col-md-8 col-md-offset-2">

            <form class="form-horizontal custom-form" id="signupform" method='post' action='/controller'>

                <% String p="signUp.jsp"; session.setAttribute("referredFrom",p); %>
                <h1>Sign Up</h1>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="name-input-field">Full Name </label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <input class="form-control" type="text" maxlength="50" id="name-input-field" pattern="[A-Z][a-z]+([ -][A-Z][a-z]+)*" placeholder="Razi-Ur-Rehman" required name="name-input-field">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="email-input-field">Email </label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <input class="form-control" type="email" maxlength="50" required placeholder="foo@bar.com" id="email-input-field" name="email-input-field">
                    </div>

                    <div class="col-sm-4 label-column">
                            <label style="visibility: hidden;color: red;width:100px;" id="emailMsg" ></label>
                    </div>


                </div>


                <% if(request.getAttribute("msg")!=null){%>
                <script>
                    document.getElementById("emailMsg").style.visibility="visible";
                    document.getElementById("emailMsg").innerHTML="${requestScope.msg}";

                </script>
                <%}else{%>
                <script>
                    document.getElementById("emailMsg").style.visibility="hidden";
                </script>
                <%}%>

                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="pawssword-input-field">Password </label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <input class="form-control" type="password" minlength="6" maxlength="50" required onchange = "validatePassword()" id="pawssword-input-field" name="pawssword-input-field">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="repeat-pawssword-input-field">Repeat Password </label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <input class="form-control" type="password"  required onkeyup = "validatePassword()" id="repeat-pawssword-input-field">
                    </div>
                </div>





                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" >Phone No</label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <input class="form-control" type="text"  name="phoneno-input-field" id="phoneno-input-field" pattern="[+][9][2]\s[3][0-6]([0-9]{8})"  placeholder="+92 3058710121" required>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" >Address</label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <input class="form-control" type="text"  name="a" id="address-input-field" maxlength=100"  required>
                    </div>
                </div>



                <div class="form-group">


                <div class="checkbox">
                    <label>
                        <input type="checkbox"  required>I've read and accept the terms and conditions</label>
                </div>
                <button class="btn btn-default submit-button" type="submit" >Sign Up</button>
                    </div>
            </form>


        </div>
    </div>
    <div class="footer-basic">
        <footer>
            <div class="social"><a href="#"><i class="icon ion-social-googleplus"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-facebook"></i></a></div>
            <ul class="list-inline">
                <li><a href="#">Home</a></li>
                <li><a href="#">About us</a></li>
                <li><a href="#">FAQ </a></li>
            </ul>
            <p class="copyright"> Red Brick Hotel © 2016</p>
        </footer>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/File-Input---Beautiful-Input--Button-Approach-Jasny-Bootstrap.js"></script>
    <script src="assets/js/navigation.js"></script>
</body>

</html>


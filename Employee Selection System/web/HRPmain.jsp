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
    <link rel="stylesheet" href="assets/css/untitled.css">
    <link rel="stylesheet" href="assets/css/Pretty-Registration-Form.css">
    <link rel="stylesheet" href="assets/css/Pretty-Search-Form.css">
    <link rel="stylesheet" href="assets/css/login-vertical-horizontal.css">
    <link rel="stylesheet" href="assets/css/login-vertical-horizontal1.css">
</head>

<body style="height:7000px;">
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
                <li role="presentation"><a onclick="showHome();"style="width:100px;color:rgb(98,5,44);font-size:larger;"><strong>Home</strong> </a></li>
            </ul>
            <ul class="nav navbar-nav" style="background-color:transparent;">
                <li role="presentation"><a  onclick="aboutUs();"style="color:rgb(98,5,44);font-size:larger;"><strong>About Us</strong></a></li>
         </ul>
            <ul class="nav navbar-nav" style="background-color:transparent;">
                <!--  <li role="presentation"><a style="visibility:visible" id="profileTab" onclick="showProfile();" href="index.html" style="font-size:larger;"><strong>Profile</strong></a></li>
         -->
            </ul>
            <p class="navbar-text navbar-right" style="color:rgb(98,5,44);">
             
                 <a class="btn btn-default action-button" href="index.html" style="  color:rgb(98,5,44);
">Log out</a>
                
        </p>
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
    <div>
        <div>
            <ul class="nav nav-tabs" style="margin-top:20px;">
                <li class="active"><a href="#tab-1" role="tab" data-toggle="tab">View Applicants</a></li>
                <li><a href="#tab-2" role="tab" data-toggle="tab">Add Job advertisment </a></li>
                <li><a href="#tab-3" role="tab" data-toggle="tab">Arrange Interview</a></li>
                <li><a href="#tab-4" role="tab" data-toggle="tab">View SME</a></li>
                <li><a href="#tab-5" role="tab" data-toggle="tab">View Manager</a></li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane active" role="tabpanel" id="tab-1">
                    <div id="appicantsSearch" style="position:relative;visibility:visible;">
                        <div style="position:absolute;">
                            <div class="dropdown" style="position:absolute;margin-left:100px;width:50px;">
                                <button class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false" type="button" style="position:absolute;width:150px;">Job <span class="caret"></span></button>
                                <ul class="dropdown-menu" role="menu">
                                    <li role="presentation"><a href="#">First Item</a></li>
                                    <li role="presentation"><a href="#">Second Item</a></li>
                                    <li role="presentation"><a href="#">Third Item</a></li>
                                </ul>
                            </div>
                            <div class="dropdown" style="position:absolute;margin-left:300px;">
                                <button class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false" type="button" style="position:absolute;width:150px;">Status <span class="caret"></span></button>
                                <ul class="dropdown-menu" role="menu">
                                    <li role="presentation"><a href="#">First Item</a></li>
                                    <li role="presentation"><a href="#">Second Item</a></li>
                                    <li role="presentation"><a href="#">Third Item</a></li>
                                </ul>
                            </div>
                            <div class="dropdown">
                                <button class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false" type="button" style="position:absolute;margin-left:500px;width:150px;">Location <span class="caret"></span></button>
                                <ul class="dropdown-menu" role="menu">
                                    <li role="presentation"><a href="#">First Item</a></li>
                                    <li role="presentation"><a href="#">Second Item</a></li>
                                    <li role="presentation"><a href="#">Third Item</a></li>
                                </ul>
                            </div>
                            <button class="btn btn-default" type="button" style="position:absolute;margin-left:800px;width:150px;margin-top:50px;">Search </button>
                        </div>
                        <input type="search" style="margin-top:50px;margin-left:150px;width:500px;height:50px;" placeholder="Search applicants by Job or ID">
                        <div style="margin-top:100px;margin-left:200px;background-color:white;width:500px;border:groove;">
    <img src="assets/img/applicant.jpg" onclick="showApplicantProfile();" style="width:100px;" />
    <label style="margin-left:20px;position:absolute;margin-top:50px;">Location </label>
   <label style="position:absolute;margin-left:20px;margin-top:0px;width:400px;">Job description</label>

    <label style="position:absolute;margin-left:20px;margin-top:25px;width:400px;">Name</label>
</div>
                    </div>
                    <div id="profile" style="margin-top:-220px;margin-left:200px;visibility:hidden;position:absolute;">
                        <button class="btn btn-default" type="button" id="backToSearchButton" style="margin-left:700px;width:80px;height:40px;" onclick="backToSearch();">Back </button>
                        <div style="width:600px;background-color:rgb(249,248,249);border:groove;border-bottom-style:groove;border-color:Black;"><img src="applicant.jpg" style="margin-left:10px;width:100px;height:100px;margin-bottom:30px;margin-top:10px;">
                            <div style="margin-left:140px;margin-top:-120px;">
                                <label style="width:100px;height:50px;font-size:medium;">Name: </label>
                                <label style="width:200px;height:50px;font-size:medium;">Label</label>
                            </div>
                            <div style="margin-left:140px;">
                                <label style="width:100px;height:50px;font-size:medium;"><strong>Phone No:</strong></label>
                                <label style="width:200px;height:50px;font-size:medium;">Label</label>
                            </div>
                            <div style="margin-left:140px;">
                                <label style="width:100px;height:50px;font-size:medium;"><strong>Email:</strong> </label>
                                <label style="width:200px;height:50px;font-size:medium;">Label</label>
                            </div>
                            <div style="margin-left:140px;">
                                <label style="width:100px;height:50px;font-size:medium;"><strong>Address, City:</strong></label>
                                <label style="width:200px;height:50px;font-size:medium;">Label</label>
                            </div>
                            <div style="margin-left:140px;">
                                <label style="width:100px;height:50px;font-size:medium;"><strong>CNIC:</strong></label>
                                <label style="width:200px;height:50px;font-size:medium;">Label</label>
                            </div><a href="#" style="margin-left:135px;font-size:large;">view CV </a></div>
                        <h1 style="margin-left:-150px;font-family:Kristen ITC;">Job Status</h1>
                        <div style="margin-left:5px;border:groove;border-color:pink;width:650px;"><img src="hotelpic.jpg" style="margin-left:10px;width:100px;height:100px;margin-bottom:30px;margin-top:10px;">
                            <label style="width:400px;height:50px;margin-top:20px;position:absolute;margin-left:40px;"><strong>Job Description</strong></label>
                            <button class="btn btn-default" type="button" id="RejectApplicationButton" style="margin-left:400px;position:absolute;margin-top:20px;">Reject </button>
                            <div style="margin-left:30px;" src="cleaning.jpg">
                                <label style="width:400px;height:30px;font-size:medium;"><strong> Rank By Manager</strong></label>
                                <label style="width:200px;height:30px;font-size:medium;">Label</label>
                            </div>
                            <div style="margin-left:30px;">
                                <label style="width:400px;height:30px;font-size:medium;"><strong> Rank By SME</strong></label>
                                <label style="width:200px;height:30px;font-size:medium;">Label</label>
                            </div>
                            <div style="margin-left:30px;">
                                <label style="width:400px;height:30px;font-size:medium;"><strong>Application Status:</strong> </label>
                                <label style="width:200px;height:30px;font-size:medium;">Label</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane" role="tabpanel" id="tab-2">
                    <div style="position:relative;">
                        <button class="btn btn-danger" type="button" style="position:absolute;margin-left:600px;">Add Job Advertisment</button>
                        <div class="container" style="margin-top:40px;">
                            <div style="width:400px;">
                                <label style="width:200px;height:40px;color:#040103;">Job Titile</label>
                                <textarea style="width:200px;height:40px;position:absolute;"></textarea>
                            </div>
                            <div style="width:400px;">
                                <label style="width:200px;height:40px;color:#040103;">Category </label>
                                <textarea style="width:200px;height:40px;position:absolute;"></textarea>
                            </div>
                            <div style="width:400px;">
                                <label style="width:200px;height:40px;color:#040103;">Pay Rate</label>
                                <textarea style="width:200px;height:40px;position:absolute;"></textarea>
                            </div>
                            <div>
                                <label style="width:200px;height:40px;color:#040103;">Department </label>
                                <textarea style="width:200px;height:40px;position:absolute;"></textarea>
                            </div>
                            <div style="width:600px;">
                                <label style="width:200px;height:40px;color:#040103;">Job Starts on</label>
                                <textarea style="width:200px;height:40px;position:absolute;"></textarea>
                            </div>
                            <div>
                                <label style="width:200px;height:40px;color:#040103;">Application sbumission deadline</label>
                                <textarea style="width:200px;height:40px;position:absolute;"></textarea>
                            </div>
                            <div>
                                <label style="width:200px;height:40px;color:#040103;">About this job</label>
                                <textarea style="width:200px;height:40px;position:absolute;"></textarea>
                            </div>
                            <div>
                                <label style="width:200px;height:40px;color:#040103;">Essential Responsibilies and Duties</label>
                                <textarea style="width:200px;height:40px;position:absolute;"></textarea>
                            </div>
                            <div>
                                <label style="width:200px;height:40px;color:#040103;">Special Knowledge, skills and abilities</label>
                                <textarea style="position:absolute;width:200px;height:40px;"></textarea>
                            </div>
                            <div>
                                <label style="width:200px;height:40px;color:#040103;">Educational Experience</label>
                                <textarea style="width:200px;height:40px;position:absolute;"></textarea>
                            </div>
                            <div>
                                <label style="width:200px;height:40px;color:#040103;">Position Status</label>
                                <textarea style="width:200px;height:40px;position:absolute;"></textarea>
                            </div>
                            <div>
                                <label style="width:200px;height:40px;color:#040103;">City </label>
                                <textarea style="width:200px;height:40px;position:absolute;"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane" role="tabpanel" id="tab-3">
                    <div>
                        <div>
                            <div style="position:relative;margin-top:50px;">
                                <input type="text" style="position:absolute;margin-left:400px;width:200px;height:50px;" value="Select Location"/>
                                <input type="text" style="position:absolute;margin-left:400px;width:200px;height:50px;margin-top:60px;" value="Select Job">
                                <input type="text" style="position:absolute;margin-left:400px;width:200px;height:50px;margin-top:120px;" value="Add SME or Manager">
                                <ul style="position:absolute;margin-top:180px;margin-left:320px;background-color:rgb(251,247,248);width:400px;border-color:black;border:groove;">
                                    <li>Item 1</li>
                                    <li>Item 2</li>
                                    <li>Item 3</li>
                                    <li>Item 4</li>
                                </ul>
                                <input type="text" style="width:200px;height:50px;margin-left:30px;position:absolute;margin-left:400px;margin-top:310px;" value="Add Applicant">
                                <ul style="position:absolute;margin-top:380px;margin-left:320px;background-color:rgb(245,240,241);width:400px;">
                                    <li>Item 1</li>
                                    <li>Item 2</li>
                                    <li>Item 3</li>
                                    <li>Item 4</li>
                                </ul>
                                <div style="position:absolute;margin-top:550px;margin-left:150px;">
                                    <label style="margin-left:200px;width:200px;">Time: </label>
                                    <label style="margin-left:100px;">Label</label>
                                </div>
                                <div style="position:absolute;margin-top:600px;margin-left:150px;">
                                    <label style="margin-left:200px;width:200px;">Duration: </label>
                                    <label style="margin-left:100px;">Label</label>
                                </div>
                                <div style="position:absolute;margin-top:650px;margin-left:150px;">
                                    <label style="margin-left:200px;width:200px;">Venue: </label>
                                    <label style="margin-left:100px;">Label</label>
                                </div>
                            </div>
                        </div>
                        <button class="btn btn-default" type="button" style="font-family:KristenITC;position:relative;margin-left:800px;"><strong>Arrange</strong> </button>
                    </div>
                </div>
                <div class="tab-pane" role="tabpanel" id="tab-4">
                    <div style="width:550px;background-color:rgb(249,248,249);border-bottom:groove;border-bottom-style:groove;height:320px;"><img src="applicant.jpg" style="margin-left:10px;width:100px;height:100px;margin-bottom:30px;margin-top:10px;">
                        <div style="margin-left:140px;margin-top:-120px;">
                            <label style="width:100px;height:50px;font-size:medium;">Name: </label>
                            <label style="width:200px;height:50px;font-size:medium;">Label</label>
                        </div>
                        <div style="margin-left:140px;">
                            <label style="width:100px;height:50px;font-size:medium;"><strong>Phone No:</strong></label>
                            <label style="width:200px;height:50px;font-size:medium;">Label</label>
                        </div>
                        <div style="margin-left:140px;">
                            <label style="width:100px;height:50px;font-size:medium;"><strong>Email:</strong> </label>
                            <label style="width:200px;height:50px;font-size:medium;">Label</label>
                        </div>
                        <div style="margin-left:140px;">
                            <label style="width:100px;height:50px;font-size:medium;"><strong>Address, City:</strong></label>
                            <label style="width:200px;height:50px;font-size:medium;">Label</label>
                        </div>
                        <div style="margin-left:140px;">
    <label style="width:100px;height:50px;font-size:medium;"><strong>Subject:</strong></label>
    <label style="width:200px;height:50px;font-size:medium;">Label</label>
</div>
                    </div>
                </div>
                <div class="tab-pane" role="tabpanel" id="tab-5">
                    <div style="width:550px;background-color:rgb(249,248,249);border-bottom:groove;border-bottom-style:groove;height:320px;"><img src="applicant.jpg" style="margin-left:10px;width:100px;height:100px;margin-bottom:30px;margin-top:10px;">
                        <div style="margin-left:140px;margin-top:-120px;">
                            <label style="width:100px;height:50px;font-size:medium;">Name: </label>
                            <label style="width:200px;height:50px;font-size:medium;">Label</label>
                        </div>
                        <div style="margin-left:140px;">
                            <label style="width:100px;height:50px;font-size:medium;"><strong>Phone No:</strong></label>
                            <label style="width:200px;height:50px;font-size:medium;">Label</label>
                        </div>
                        <div style="margin-left:140px;">
                            <label style="width:100px;height:50px;font-size:medium;"><strong>Email:</strong> </label>
                            <label style="width:200px;height:50px;font-size:medium;">Label</label>
                        </div>
                        <div style="margin-left:140px;">
                            <label style="width:100px;height:50px;font-size:medium;"><strong>Address, City:</strong></label>
                            <label style="width:200px;height:50px;font-size:medium;">Label</label>
                        </div>
                        <div style="margin-left:140px;">
    <label style="width:100px;height:50px;font-size:medium;"><strong>Depart
        ment:</strong></label>
    <label style="width:200px;height:50px;font-size:medium;">Label</label>
</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-basic" style="margin-top:700px;">
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
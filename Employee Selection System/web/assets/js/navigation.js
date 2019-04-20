
function aboutUs() {
 
document.getElementById("about").style.visibility = "visible";            // The function returns the product of p1 and p2

document.getElementById("mainJobSearch").style.visibility = "hidden";            // The function returns the product of p1 and p2
document.getElementById("profile").style.visibility = "hidden";            // The function returns the product of p1 and p2

}
function showHome() {
document.getElementById("mainJobSearch").style.visibility = "visible";            // The function returns the product of p1 and p2

document.getElementById("foo").style.visibility = "hidden";            // The function returns the product of p1 and p2
document.getElementById("profile").style.visibility = "hidden";            // The function returns the product of p1 and p2

}
function myFunction() {
    var popup = document.getElementById("myPopup");
    popup.classList.toggle("show");
}
function showProfileTab(){
    document.getElementById("profileTab").style.visibility="visible";
}
function showProfile(){
    
document.getElementById("profile").style.visibility = "visible";            // The function returns the product of p1 and p2
document.getElementById("mainJobSearch").style.visibility = "hidden";            // The function returns the product of p1 and p2

document.getElementById("about").style.visibility = "hidden";            // The function returns the product of p1 and p2

}
function showApplicantProfile(){
    
    document.getElementById("appicantsSearch").style.visibility = "hidden";            // The function returns the product of p1 and p2

document.getElementById("profile2").style.visibility = "visible";
    
    
}
function backToSearch(){
     document.getElementById("appicantsSearch").style.visibility = "visible";            // The function returns the product of p1 and p2
document.getElementById("profile2").style.visibility = "hidden";
    
   
}
function signupvalidation(){
    //var x = document.forms["myForm"]["fname"].value;
    var x=document.getElementById("signupform")["foo"].value;
    alert(x);
    alert("k");
    goog.format.EmailAddress();
    return true;
}


function validatePassword(){
    var password = document.getElementById("pawssword-input-field")
        , confirm_password = document.getElementById("repeat-pawssword-input-field");

    if(password.value != confirm_password.value) {
        confirm_password.setCustomValidity("Passwords Don't Match");
    } else {
        confirm_password.setCustomValidity('');
    }
}

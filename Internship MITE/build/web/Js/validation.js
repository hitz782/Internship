function loginvalidation(){
    var username=document.getElementById("user").value;
    var password=document.getElementById("pass").value;
    
    if(username == "")
    {
        alert("Please Enter username");
        return false;
    }
    if(password == "")
    {
        alert("Please Enter password");
        return false;
    }
    
    return true;
    
}




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign in page</title>

    <style>
    body,html{
        height: 100%;
        margin: 0;
    }

 .bg {
  /* The image used */
  background-image:url(bgimage.jpg);
  /* Full height */
  height:100%;
  width: 100%;
  

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position:fixed;
}

.box{
    /* background-color: transparent; */
    background-color: transparent;
    width: 800px;
    margin:150px 350px 10px 360px;

}

form{
    padding: 45px;
    text-align: center;
}
#inputbox:hover{
    box-shadow: 2px 2px 10px aqua;
}
#inputbox{
    height:40px;
    width: 300px;
    margin: 10px;
    padding-left: 25px;
    border-radius: 25px;
    font-size:medium;
   
}
#popup{
color: red ;


}
#btn{
    height: 40px;
    border-radius: 20px;
    margin-top: 10px;
    width:100px;
    font-size: 20px;
    
}
#btn:hover{
    background-color:aqua;
    box-shadow: 2px 2px 10px aqua;
}
a{
    text-decoration: none;
    font-size: 25px;
    float: left;
    color:black;
    margin-top: 40px;
    margin-left: 50px;
}
.main-heading{
    font-size:45px;
}



    </style>
</head>
<body>
<div class="bg">
    <div>
        <a href="home.jsp">Home</a>
    </div>
    <div>
        <a href="teacher.html">Teacher Login</a>
    </div>
    <div class="box">      
             <form method="post" action="login">
            <form class="register-form">

                <center><h1 class="main-heading">Student Report</h1></center>
                <center><p id=para>Enter Valid Information</p></center>
                <div id="inputdiv">
                  <input id="inputbox" type="text" placeholder="User name" name="name" required/>
                </div>
                <div id="inputdiv">
                  <input id="inputbox" type="text" placeholder="PRN no" name="PRN_No" required/>
                </div>
                <div id="inputdiv">
                    <input id="inputbox" type="password" placeholder="Password" name="password" required/>
                </div> 
                 <center id="popup"><span >${error}</span><br> </center>
                <button id="btn">Submit</button>

        </form>
        
    </div>

</div>   
</body>


</html>
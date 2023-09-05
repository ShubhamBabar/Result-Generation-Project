 <% 

if( session.getAttribute("name")==null){
    response.sendRedirect("home.jsp");
    } 
    %>
     
  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>box</title>
    <style>
        .box{
            background-color: rgb(209, 214, 219);
            height: 300px;
            width: 400px;
            text-align: center;
            border-radius: 10px;
            display: none;
            margin: auto;
            padding: auto;
        }
        .box h2{
            padding-top: 50px;
            font-size:30px;
        }
        .box a{
            text-decoration: none;
        }
        .box button{
            background-color:skyblue;
            border: none;
            font-size: 20px;
            color: white;
            height: 40px;
            width: 80px;
            margin-top: 100px ;
        }
        .top{
        
        padding-top: 15px;
        text-align: center;
        background-color: skyblue;
        height: 120px;
        width: 100%;
        border: 0px;
        }
        .top img{
        float: left;
        padding-top:25px ;
        padding-left: 20px;
    }
   .top h1{
        padding-left: 50px;
        padding-right: 50px;
    }

        body {
          font-family: "Lato", sans-serif;
        }
        
        .sidenav {
    
          height: 100%;
          width: 200px;
          position: fixed;
          z-index: 1;
          top: 0;
          left: 0;
          background-color: #a8eaef;
          overflow-x: hidden;
          margin-top: 170px;
        }
        
        .sidenav a {
          padding: 25px 0px 12px 42px;
          text-decoration: none;
          font-size: 18px;
          color:black;
          display: block;
         
        }
        
        .sidenav a:hover {
          color: #f1f1f1;
        }
        
        .main {
          margin-left: 200px; /* Same as the width of the sidenav */
        }
        
        @media screen and (max-height: 450px) {
          .sidenav {padding-top: 15px;}
          .sidenav a {font-size: 18px;}
        }

        /* //dropdown */

        ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  /* background-color: #333; */
}

li {
  float: left;
}

li a, .dropbtn {
  display: inline-block;
  color: black;
  text-align: center;
  text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
    color: black;
}

li.dropdown {
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color:white;
  min-width: 160px;
  /* box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2); */
  z-index: 1;
}

.dropdown-content a {
  color: black;
  /* padding: 12px 16px; */
  text-decoration: none;
  display: block;
  text-align: left;
}
#image{
   padding-left: 22%;
}


.dropdown-content a:hover {background-color: skyblue}

.dropdown:hover .dropdown-content {
  display: block;
}
.top a{
        text-decoration: none;
        color: black ; 
        padding-top:20px; 
        float: right;
        padding-right: 40px;
        font-size: 25px;
}
#name{
  margin: 0px;
color:white;
 background-color: rgb(177, 165, 165);

}
#logout:hover{
  color: white;
}
#img{
  padding-left: 25%;
}
p{
  padding-left: 25%; 
   font-weight: bold;
   font-size: larger;
}
        </style>
        </head>
    <body>
        <div class="box">
            <h2>Valid Credential !!</h2>
            <button><a href="report.html">Next</a></button>
        </div>
        <div class="top">
             <a id="logout" href="Logout">Logout</a>
            <img src="" alt="system logo">
            
            <h1>
                Student Management System
            </h1>
            
            </div>
         <div>
            
           <center> <h2 id="name"><strong style="color: black;">Student Name :</strong> <%=session.getAttribute("name") %></h2> </center>
      
          </div>        
        <div class="sidenav">
          <a href="#">About</a>
          <ul>
          <li class="dropdown">
            <a href="javascript:void(0)" class="dropbtn">Result</a>
            <div class="dropdown-content">
              <a href="Result.jsp">Sem 1</a>
              <a href="#">sem 2</a>
              <a href="#">sem 3</a>
            </div>
          </li>
        </ul>
          <a href="#">help</a>
          <a href="#">Contact</a>
        </div>
        <div id="img">
          <img src="2840523.jpg" alt="Maintaenance image" height="550" width="800">
          <p>Still working on it .....</p>
        </div>
        
        
    
</body>
</html>
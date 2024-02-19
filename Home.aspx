<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="css/ui-lightness/bootstrap.min.css" rel="stylesheet" />
    <link href="js/font-awesome.css" rel="stylesheet" />
    <link href="js/jquery.dataTables.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>

    <style>
        body{
            font-family:Arial, Helvetica, sans-serif;
            background-image:url(images/20120903065532_Royal%20Green%20Developer%20Property%20Green%20parC%20Gurgaon%20sector%2092%20specification.jpg);
        }
        .navbar{
            background-color:#001e44;
        }
        h3{
            font-family:Arial;
            font-stretch: 1% 500%;
            font-size:40px;
            margin-left:50px;
            color:chocolate;
        }
        .cad{
            color:white;
        }
       .pad{
           margin:0 20px;
           
           border-radius:6px;
           height:35px;
           width:100px;
           color:black;
       }
       .pad:hover{
           color:black;
       }
       
       section{
           margin-top:50px;
       }
       section .auto h1{
           margin-left:150px;
           color:chocolate;
       }
       section .auto p{
           margin:50px 50px 50px 200px;
           color:chocolate;
       }
       footer{
           color:white;
       }
          a{
           color:#001e44;
           text-decoration:none;
       }
          footer p{
              color:#000000;
          }
       .setsize{
           height:620px;
           width:300px;
       }
    </style>
</head>
<body >
    <form id="form1" runat="server">
    <div>
               <nav class="navbar">
                <h3>Real-Estate</h3>
                <nav class="navbar navbar-expand-lg navbar-light">        
                 <div class="collapse navbar-collapse" id="navbarSupportedContent">
                     <ul class="navbar-nav mr-auto">
                           <li class="nav-item pad">
                              <asp:LinkButton class="nav-item cad" href="userlogin.aspx" ID="Linkbutton3" runat="server">Login</asp:LinkButton>
                           </li>
                         <li class="nav-item pad">
                              <asp:LinkButton class="nav-item cad" href="Register.aspx" ID="Linkbutton4" runat="server">Sign In</asp:LinkButton>
                           </li>
                 </ul>  
               </div>
             </nav>
            </nav>
        </div>
 <section id="main-content">
	<div class="main">
        <div class="col">
            <div class="auto">
                 <h1>Best Data Analysis<br /> Real-Estate Help Online<br /> from Experts</h1>
                 <p>Need any type of data analysis help online now? Chat <br />with experts to get instant data analysis Real-Estate<br /> help, project & find to help.</p>
            </div>
        </div>
	</div>
</section>
         <footer>
                <blockquote class="blockquote text-center link">
                    <p>&copy All right Reversed <a class="link" href="#" >Developed by Hemanshu</a></p>
                </blockquote>
         </footer> 
    </form>
</body>
</html>

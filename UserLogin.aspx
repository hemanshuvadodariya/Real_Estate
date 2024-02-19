<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserLogin.aspx.cs" Inherits="UserLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/ui-lightness/bootstrap.min.css" rel="stylesheet" />
    <link href="js/font-awesome.css" rel="stylesheet" />
    <link href="js/jquery.dataTables.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>

</head>
<body style="background-image: url('images/20120903065532_Royal Green Developer Property Green parC Gurgaon sector 92 specification.jpg')">
    <form id="form1" runat="server">
      <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card box">
                     <div class="card-body">
                         <div class="row">
                             <div class="col">
                                    <center>
                                        <img src="images/graduated.png" width="150px" />
                                    </center>
                             </div>
                         </div>
                         <div class="row">
                             <div class="col">
                                    <center>
                                        <h3>Userlogin Login </h3>              
                                    </center>
                             </div>
                         </div>
                          <div class="row">
                             <div class="col">
                                 <hr />
                             </div>
                         </div>
                          <div class="row">
                             <div class="col">
                                  <label>Username:</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="Txtstudent" CssClass="form-control" runat="server" placeholder="Username"></asp:TextBox>
                                 </div>
                                 <label>Password</label>
                                 &nbsp;<div class="form-group">
                                     <asp:TextBox ID="Txtpass" CssClass="form-control" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txtpass" ErrorMessage="Please enter the valid password">enter a password</asp:RequiredFieldValidator>
                                </div>
                                 <div class="form-group">
                                     <asp:Button ID="Button1" class="btn btn-primary btn-block btn-lg" runat="server" Text="Login" OnClick="Button1_Click"  />
                                 </div>
                                 <div class="form-group">
                                        <center>
                                            <asp:Label ID="Label1" runat="server" Text="Label"><a href="Register.aspx">If Don't have Account to sing up </a></asp:Label>
                                 </div>
                             </div>
                         </div>
                     </div>
                     <a href="Home.aspx"><< back to home</a>
                </div> 
            </div>
        </div>
    </div>
    </form>
</body>
</html>

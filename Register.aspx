<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link href="css/ui-lightness/bootstrap.min.css" rel="stylesheet" />
    <link href="js/font-awesome.css" rel="stylesheet" />
    <link href="js/jquery.dataTables.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
</head>
<body style="background-image: url('images/20120903065532_Royal Green Developer Property Green parC Gurgaon sector 92 specification.jpg')" >
     <form id="form1" runat="server">
        <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card box">
                     <div class="card-body">
                         <div class="row">
                             <div class="col">
                                    <center>
                                        <img src="images/user.png" width="150px"/>
                                    </center>
                             </div>
                         </div>
                         <div class="row">
                             <div class="col">
                                    <center>
                                        <h3>Sign In</h3>    
                                        <a href="userlogin.aspx"><h6>Already have Account to Login</h6></a>
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
                                  <label>Username</label>
                                 <div class="form-group">
                                 <asp:TextBox ID="txtuser" CssClass="form-control" runat="server" placeholder="Username"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter the valid username" ControlToValidate="txtuser"></asp:RequiredFieldValidator>
                                 </div>

                                 <label>Email</label><div class="form-group">
                                 <asp:TextBox ID="txtemail" CssClass="form-control" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                               <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Please enter the valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                 </div>

                                  <label>Mobile No</label>
                                 <div class="form-group">
                                 <asp:TextBox ID="txtmob" CssClass="form-control" runat="server" MaxLength="10" placeholder="Mobile no"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter a No" ControlToValidate="txtmob"></asp:RequiredFieldValidator>
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtmob" ErrorMessage="Please enter the valid no" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                                 </div>

                                 <label>Password</label>&nbsp;<div class="form-group">
                                 <asp:TextBox ID="txtpass" CssClass="form-control" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="txtpass" ForeColor="Red"></asp:RequiredFieldValidator>
                                 <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Not Same" ControlToCompare="txtpass" ControlToValidate="txtrepass"></asp:CompareValidator>
                                 </div>

                                 <label>Re-Password</label>&nbsp;<div class="form-group">
                                 <asp:TextBox ID="txtrepass" CssClass="form-control" runat="server" TextMode="Password" placeholder="RE-Password"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ControlToValidate="txtrepass" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>
                                 <div class="form-group">
                                     
                                     <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-block btn-lg"  Text="Sign Up" OnClick="Button1_Click1"/>
                                     </div>  
                             </div>
                         </div>
                     </div>
                      <a href="Home.aspx"><< back to home</a>
                </div>     
            </div>
        </div>
      </div>
         <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PostAdd.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/ui-lightness/bootstrap.min.css" rel="stylesheet" />
    <link href="js/font-awesome.css" rel="stylesheet" />
    <link href="js/jquery.dataTables.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <style type="text/css">
        .style1 {
            width: 100%;
            height: 459px;
        }

        .style2 {
            width: 58px;
        }

        .style3 {
            width: 1022px;
        }

        .style4 {
            width: 58px;
            height: 49px;
        }

        .style5 {
            width: 1022px;
            height: 49px;
            background-color: #E8E8E8;
        }

        .style6 {
            height: 49px;
        }

        .style7 {
            width: 58px;
            height: 243px;
        }

        .style8 {
            width: 1022px;
        }

        .style9 {
            height: 243px;
        }

        .style10 {
            text-align: right;
            width: 363px;
        }

        .style11 {
            text-align: right;
            width: 363px;
            font-size: x-large;
        }

        .style12 {
            width: 58px;
            height: 227px;
        }

        .style13 {
            height: 227px;
        }

        .style14 {
            font-size: x-large;
        }
    </style>
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
                                        <h3>Post Your Ad for Free</h3>
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
                                    <label>Station</label>
                                    <div class="form-group">
                                        <asp:DropDownList ID="dstation" runat="server">
                                            <asp:ListItem>Rajkot</asp:ListItem>
                                            <asp:ListItem>Jamnagar</asp:ListItem>
                                            <asp:ListItem>Sapar</asp:ListItem>
                                            <asp:ListItem>Metoda</asp:ListItem>
                                            <asp:ListItem>Ahmedabad</asp:ListItem>
                                            <asp:ListItem>Surat</asp:ListItem>
                                            <asp:ListItem>Madhapar</asp:ListItem>
                                            <asp:ListItem>Gondal</asp:ListItem>
                                            <asp:ListItem>Veralav</asp:ListItem>
                                            <asp:ListItem>Somnath</asp:ListItem>
                                            <asp:ListItem>Junagadh</asp:ListItem>
                                            <asp:ListItem>Vadodra</asp:ListItem>
                                            <asp:ListItem>Bharuch</asp:ListItem>
                                            <asp:ListItem>Gondal Road</asp:ListItem>
                                            <asp:ListItem>Varacha</asp:ListItem>
                                            <asp:ListItem>Madhapar baypass</asp:ListItem>
                                            <asp:ListItem>SG highway</asp:ListItem>
                                            <asp:ListItem>Daman</asp:ListItem>
                                            <asp:ListItem>Diu</asp:ListItem>
                                            <asp:ListItem>Dadar</asp:ListItem>
                                            <asp:ListItem>Navsari</asp:ListItem>
                                            <asp:ListItem>Bhuj</asp:ListItem>
                                            <asp:ListItem>Mahalakshmi palas Jamnagar</asp:ListItem>
                                            <asp:ListItem>Morbi</asp:ListItem>
                                            <asp:ListItem>jasdan</asp:ListItem>
                                            <asp:ListItem>Amreli</asp:ListItem>
                                            <asp:ListItem>vajdi</asp:ListItem>
                                            <asp:ListItem>kalavad Highway</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>

                                    <label>Add Title</label>
                                    <div class="form-group">
                                        <asp:TextBox ID="txtad" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                            ControlToValidate="txtad" ErrorMessage="Please enter the title"></asp:RequiredFieldValidator>
                                    </div>

                                    <label>Property Photo</label>
                                    <div class="form-group">
                                        <asp:FileUpload ID="FileUpload1" runat="server" />
                                    </div>

                                    <label>Bedrooms</label>&nbsp;
                                 <div class="form-group">
                                     <asp:DropDownList ID="dbed" runat="server">
                                         <asp:ListItem>1</asp:ListItem>
                                         <asp:ListItem>2</asp:ListItem>
                                         <asp:ListItem>3</asp:ListItem>
                                         <asp:ListItem>4</asp:ListItem>
                                     </asp:DropDownList>
                                 </div>

                                    <label>Bathrooms</label>&nbsp;
                                 <div class="form-group">
                                     <asp:DropDownList ID="dbath" runat="server">
                                         <asp:ListItem>1</asp:ListItem>
                                         <asp:ListItem>2</asp:ListItem>
                                         <asp:ListItem>3</asp:ListItem>
                                         <asp:ListItem>4</asp:ListItem>
                                     </asp:DropDownList>
                                    </div>

                                    <label>Broker</label>&nbsp;
                                 <div class="form-group">
                                     <asp:DropDownList ID="dbrok" runat="server">
                                         <asp:ListItem>no</asp:ListItem>
                                         <asp:ListItem>yes</asp:ListItem>
                                     </asp:DropDownList>
                                 </div>

                                    <label>Square Meters</label>
                                    <div class="form-group">
                                        <asp:TextBox ID="txtsqmt" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                            ControlToValidate="txtsqmt" ErrorMessage="Please enter the area"></asp:RequiredFieldValidator>
                                    </div>

                                    <label>Description</label>
                                    <div class="form-group">
                                        <asp:TextBox ID="txtdesc" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>

                                    <label>Price</label>
                                    <div class="form-group">
                                        <asp:TextBox ID="txtprice" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                            ControlToValidate="txtprice" ErrorMessage="Please enter the  price"></asp:RequiredFieldValidator>
                                    </div>

                                    <label>Contact No</label>
                                    <div class="form-group">
                                        <asp:TextBox ID="txtconnum" runat="server" CssClass="form-control" MaxLength="10" TextMode="Number"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ValidationExpression="[0-9]{10}"
                                            ErrorMessage="Please enter the proper name" ControlToValidate="txtconnum"></asp:RequiredFieldValidator>
                                    </div>

                                    <label>Email Id</label>
                                    <div class="form-group">
                                        <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                            ControlToValidate="txtemail" ErrorMessage="Please enter the valid email"
                                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    </div>
                                    <label>Phone Number</label>
                                    <div class="form-group">
                                        <asp:TextBox ID="txtphon" runat="server" CssClass="form-control" MaxLength="10" TextMode="Number"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                            ControlToValidate="txtphon" ErrorMessage="Please enter valid no"
                                            ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                                    </div>


                                    <div class="form-group">

                                        <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-block btn-lg" Text="Post Add" OnClick="Button1_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <td class="style3">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
            </div>
        </div>
    </form>
</body>
</html>

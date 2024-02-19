<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="container">      
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card box">
                     <div class="card-body">u
                          <div class="row">
                             <div class="col">
                                  <label>Name</label>
                                 <div class="form-group">
                                 <asp:TextBox ID="txtname" CssClass="form-control" runat="server"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Please enter the name"></asp:RequiredFieldValidator>
                                 </div>

                                 <label>Email</label><div class="form-group">
                                <asp:TextBox ID="txtemail" CssClass="form-control" runat="server"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></div>

                                  <label>Subject</label>
                                 <div class="form-group">
                                  <asp:TextBox ID="txtsubject"  CssClass="form-control" runat="server"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtsubject" ErrorMessage="Please enter the subject"></asp:RequiredFieldValidator></div>

                                 <label>Message</label>&nbsp;<div class="form-group">
                                 <asp:TextBox ID="txtmessage" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtmessage" ErrorMessage="Please enter the proper message"></asp:RequiredFieldValidator>
                                 </div>
                                 <div class="form-group">
                                     <asp:Button ID="button2" runat="server" class="btn btn-primary btn-block btn-lg" Text="Submit" OnClick="button2_Click"/>
                                     </div>  
                             </div>
                         </div>
                     </div>
                </div>     
            </div>
        </div>
      </div>
    <td>
                    <asp:Label ID="Label1" runat="server" Text="FeedBack"></asp:Label>
                </td>
</asp:Content>
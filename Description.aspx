<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Description.aspx.cs" Inherits="Description" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style10
    {
            width: 66px;
        }
    .style11
    {
        width: 405px;
    }
    .style12
    {
        width: 66px;
        height: 73px;
    }
    .style13
    {
        width: 405px;
        height: 73px;
        text-align: left;
    }
    .style14
    {
        height: 73px;
    }
        .style15
        {
            font-weight: bold;
            font-size: large;
        }
        .style16
        {
            width: 379px;
            font-size: x-large;
        }
        .style17
        {
            height: 244px;
            font-size: x-small;
            width: 987px;
            text-align: left;
        }
    .style18
    {
        width: 379px;
        font-size: small;
    }
    .style19
    {
        width: 379px;
        height: 244px;
        text-align: right;
        font-size: x-small;
    }
        .style20
        {
            width: 66px;
            font-size: x-small;
            height: 244px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<table class="style1">--%>

        <%--<td class="style20" valign="top">
            <br />
            <br />
        </td>--%>
        <%-- <td class="style19" valign="top">
            <br />
            <asp:Image ID="Image2" runat="server" Height="301px" Width="365px" 
                style="text-align: left" />
        </td>--%>
        <%--    <asp:Label ID="name" runat="server" CssClass="style15">Name:</asp:Label><br />
            <asp:Label ID="price" runat="server" CssClass="style15">Price:</asp:Label>
            <br />
            <asp:Label ID="contact" runat="server" CssClass="style15">Contact:</asp:Label>
            <br />
            <asp:Label ID="email" runat="server" CssClass="style15">Email:</asp:Label> --%>
        
  
   <%-- <tr>
        <%--<td class="style10">
            &nbsp;</td>--%>
        <%--<td class="style16" 
            style="font-size: 24px; font-family: 'Times New Roman', Times, serif">
            Description</td>
        <td style="font-size: 14px; font-weight: bold; font-style: italic; color: #000099">
            Before clicking on interested property button fill your information<br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Name:
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Please enter the valid name"></asp:RequiredFieldValidator>
            <br />
            <br />
            Contact No.: 
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="enter valid no" 
                ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Please enter the contact no"></asp:RequiredFieldValidator>
            <br />
            <br />
&nbsp;&nbsp;&nbsp; Email ID:
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="Please enter the valid email" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Message:
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBox4" 
                ErrorMessage="Please enter the appropriate message"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                style="font-size: large" Text="I am Intrested in this property" 
                Width="313px" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Height="30px" onclick="Button2_Click" 
                Text="Back" Width="69px" CausesValidation="False" />
        </td>
    </tr>
    <tr>
      <td class="style10">
            &nbsp;</td>
        <td class="style18">
            <asp:Label ID="desc" runat="server"></asp:Label>
        </td>

    </tr>
</table>--%>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Real-etsateConnectionString %>" SelectCommand="SELECT [station], [adtitle], [photo], [sqmt], [phone], [email], [price] FROM [AdPostTbl]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField Datafield="station" HeaderText="station" SortExpression="station"/>
         
        <asp:BoundField DataField="adtitle" HeaderText="adtitle" SortExpression="adtitle" />
        <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" />
        <asp:BoundField DataField="sqmt" HeaderText="sqmt" SortExpression="sqmt" />
        <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />

        </Columns>

        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

    </asp:GridView>
</asp:Content>


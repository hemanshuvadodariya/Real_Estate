<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="SalePage.aspx.cs" Inherits="SalePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style10 {
            width: 17px;
        }

        .style11 {
            width: 17px;
            height: 5px;
        }

        .style12 {
            height: 5px;
        }

        .style13 {
            width: 177px;
        }

        .style15 {
            width: 987px;
            height: 24px;
            font-size: medium;
            text-align: left;
            color: burlywood;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="style1">
        <tr>
            <td class="style11"></td>
            <td class="style12" valign="top">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                    DataSourceID="SqlDataSource1" Width="866px"
                    OnRowCommand="GridView1_RowCommand1"
                    OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
                    BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px"
                    CellPadding="3" GridLines="Horizontal">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:BoundField DataField="station" HeaderText="station" SortExpression="station" />
                        <asp:BoundField DataField="adtitle" HeaderText="adtitle" SortExpression="adtitle" />
                        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                        <%--<asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />--%>
                        <%--<asp:ImageField DataImageUrlField="photo" HeaderText="Image"> </asp:ImageField>--%>
                        <%--<asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" />--%>
                        <asp:ImageField HeaderText="Photo" DataImageUrlField="photo" ControlStyle-Width="100" ControlStyle-Height="100"></asp:ImageField>
                        <%--<asp:TemplateField HeaderText="photo">
                            <ItemTemplate>
                                       <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("photo") %>' Height="203px" Width="242px" />
                            </ItemTemplate>
                        </asp:TemplateField>--%>
                        <asp:BoundField DataField="sqmt" HeaderText="sqmt" SortExpression="sqmt" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                    </Columns>
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <PagerStyle ForeColor="#4A3C8C" HorizontalAlign="Right" BackColor="#E7E7FF" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                    ConnectionString="<%$ ConnectionStrings:Real-etsateConnectionString %>"
                    SelectCommand="SELECT [adtitle], [price], [photo], [sqmt], [email], [phone], [station] FROM [AdPostTbl]"></asp:SqlDataSource>
                <br />
            </td>
        </tr>
                              <%--  <asp:Image ID="Image1" runat="server" Height="203px" Width="242px" />--%>

        <tr>
            <td class="style10">&nbsp;</td>
            <td>
                <asp:GridView ID="GridView2" runat="server" Width="860px"
                    OnSelectedIndexChanged="GridView2_SelectedIndexChanged"
                    OnRowCommand="GridView2_RowCommand" OnPreRender="GridView2_PreRender"
                    CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <%--<asp:Image ID="image1" runat="server"
                                    Height="203px" Width="242px" />--%>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" CommandName="Show" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"
                                    Text="Show Details" BackColor="#3C3336" ForeColor="White" Width="137px" />

                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#284775" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>


<asp:Content ID="Content3" runat="server"
    ContentPlaceHolderID="ContentPlaceHolder2">
    <table class="style1">
        <tr>
            <td class="style15">
                <%--<%--<asp:CheckBox ID="CheckBox1" runat="server" Text="Rajkot" />
                <br />
                <asp:CheckBox ID="CheckBox2" runat="server" Text="Jamnagar" />
                <br />
                <asp:CheckBox ID="CheckBox3" runat="server" Text="Sapar" />
                <br />
                <asp:CheckBox ID="CheckBox4" runat="server" Text="Metoda" />
                <br />
                <asp:CheckBox ID="CheckBox5" runat="server" Text="Ahmedabad" />
                <br />
                <asp:CheckBox ID="CheckBox6" runat="server" Text="Surat" />
                <br />
                <asp:CheckBox ID="CheckBox7" runat="server" Text="Madhapar" />
                <br />
                <asp:CheckBox ID="CheckBox8" runat="server" Text="Gondal" />
                <br />
                <asp:CheckBox ID="CheckBox9" runat="server" Text="Veralav" />
                <br />
                <asp:CheckBox ID="CheckBox10" runat="server" Text="Somnath" />
                <br />
                <asp:CheckBox ID="CheckBox11" runat="server" Text="Junagadh" />
                <br />
                <asp:CheckBox ID="CheckBox12" runat="server" Text="Vadodra" />
                <br />
                <asp:CheckBox ID="CheckBox13" runat="server" Text="Bharuch" />
                <br />
                <asp:CheckBox ID="CheckBox14" runat="server" Text="Gondal Road" />
                <br />--%>
                <%--<asp:Button ID="Button2" runat="server" OnClick="Button2_Click1"
                    Text="Go" Width="100px" />--%>
               <%-- <br />
                <br />
                Starting Range of Price:<br />
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <br />
                Last Range of Price:<br />
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Go" Width="102px" />
                <br />--%>
            </td>
        </tr>
    </table>
</asp:Content>



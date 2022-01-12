<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="AdminBloodDonationRequest.aspx.cs" Inherits="AdminBloodDonationRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">Blood Donation Request
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .gv1 td
        {
            padding: 2px;
            text-align: center;
            width: 150px;
            border : solid 1px #c1c1c1;
        }
        .gv1 th
        {
            padding : 2px;
            text-align : center;
            width : 150px;
            border : solid 1px #c1c1c1;
            color : red;
        }
        .gv1
        {
            background-color : orangered;
            margin-left : 20%;
            padding : 5px;

        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">

    <a href="Admin.aspx"><h3>Admin Home</h3></a>

    <h2>Blood Donation Request : </h2>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" CssClass="gv1"
        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1">

        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
            <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
            <asp:BoundField DataField="bg" HeaderText="bg" SortExpression="bg" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
        </Columns>    
            
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="true" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="true" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1DA" />
        <SortedAscendingHeaderStyle BackColor="#b95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
        
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT [Name], [Email], [Mobile], [image], [bg], [address] FROM [DonorRegistration]"></asp:SqlDataSource>
    
        
   
</asp:Content>


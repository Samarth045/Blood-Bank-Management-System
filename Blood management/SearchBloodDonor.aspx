<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="SearchBloodDonor.aspx.cs" Inherits="SearchBloodDonor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">Blood Donors
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .sb
        {
            margin-top:50px;
            margin-left:300px;
        }

        .gv1 td
        {
            padding: 2px;
            text-align:center;
            width: 150px;
            border: solid 1px #c1c1c1;
        }
        .gv1
        {
            background-color: orange;
        }

        .gv1 th
        {
            padding: 2px;
            text-align: center;
            width: 150px;
            border: solid 1px #c1c1c1;
            background-color: yellow;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">

    <div class="sb">

        <h2> Blood Donors List : </h2>

        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="16px" Width="16px">
            <asp:ListItem>(Blood Donors List)</asp:ListItem>
            <asp:ListItem>A+</asp:ListItem>
            <asp:ListItem>A-</asp:ListItem>
            <asp:ListItem>B+</asp:ListItem>
            <asp:ListItem>B-</asp:ListItem>
            <asp:ListItem>O+</asp:ListItem>
            <asp:ListItem>O-</asp:ListItem>
            <asp:ListItem>AB+</asp:ListItem>
            <asp:ListItem>AB-</asp:ListItem>

        </asp:DropDownList>

    </div>

    <div class="sb">
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" CssClass="gv1" AlternatingRowStyle-CssClass="alt" PagerStyle-CssClass="pgr">

<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>

            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                <asp:BoundField DataField="bg" HeaderText="bg" SortExpression="bg" />
                <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            </Columns>

<PagerStyle CssClass="pgr"></PagerStyle>

        </asp:GridView>

        <br />

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT [Name], [Email], [Mobile], [bg], [image], [address] FROM [DonorRegistration]">


        </asp:SqlDataSource>
    </div>

</asp:Content>


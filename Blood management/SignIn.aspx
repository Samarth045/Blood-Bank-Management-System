<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignIn" %>


<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">Sign In
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .container2 {
            border : outset;
            width : 400px;
            height : 380px;
            padding : 7px;
            margin-left : 35%;
            margin-top : 15%;
            background-color : coral;
            margin-top : 40px;
        }

        input[type=text], input[type=password]
        {
            width : 100%;
            padding : 12px 20px;
            margin : 8px 0;
            display : inline-block;
            border : 1px solid #ccc;
            box-sizing : border-box;
        }

        .btn1
        {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            float : left;
            width : 20%;
            background-color : #4CAF50;
            color : white;
            margin-top : 10px;
            cursor : pointer;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <div class="container2">
        Email :
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        Password :
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
        <a href="SignUp.aspx">
            <h4 style="color: royalblue;">New User?</h4>

            
        </a>

        <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn1" OnClick="Button1_Click" Height="49px" Width="195px" />
        </div>
</asp:Content>


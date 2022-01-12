<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">Admin Home Page
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        #box
        {
            padding :20px;
        }

        .box2
        {
            float : left;
            width : 220px;
            height : 200px;
            border : outset;
            padding : 10px;
            margin-left : 170px;
            margin-top : 130px;
            margin-bottom : 130px;
            font-size : 35px;
            font-family : 'Lucida Handwriting';
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">

    <div id="box">
        <a href="AdminBloodDonationRequest.aspx">
            <div class ="box2">
                See<br /><br />Donation <br /><br />Request<br /><br />
    </div>
   </a>



        <a href="AdminBloodStockUpdate.aspx">
            <div class ="box2">
                Update<br /><br />Blood Bank <br /><br />Stock<br /><br />
    </div>
   </a>


   <a href="AdminBloodRequest.aspx">
            <div class ="box2">
                See<br /><br />Blood <br /><br />Request<br /><br />
    </div>
   </a>
        </div>
</asp:Content>


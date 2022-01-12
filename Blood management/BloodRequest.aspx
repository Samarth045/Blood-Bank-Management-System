<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="BloodRequest.aspx.cs" Inherits="BloodRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">Blood Donation Request
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
 
        input[type=text], input[type=password], input[type=number] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        .container1
        {
            padding : 20px;
            border : outset;
            width : 35%;
            height : 100%;
            margin-left : 1%;

        }

        #btnSubmit
        {
            float:left;
            width: 20%;
            color: white;
            padding : 14px 20px;
            margin : 8px 0;
            border : none;
            cursor : pointer;
        }

        .a1
        {
            float : left;
        }

        .l1
        {
            width : 390px;
            height: 1350px;
            margin : 7px;
        }

    </style>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">

    <div class="a1">
        <img class="l1" src="assets/img/leftImg.jpg" />
    </div>

    <div class ="container1 a1">

        Name : 

        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>

        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

        <br />
         <br />
       

        Email : 
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email should have proper format(abc@xyz.com)" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
          <br />
        

        Mobile : 
        
        <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>

        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMobile" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

        <br /><br />

        Blood_Group : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


        <asp:DropDownList ID="ddBg" runat="server" AutoPostBack="true">

            <asp:ListItem>(select Blood Group)</asp:ListItem>
            <asp:ListItem>A+</asp:ListItem>
            <asp:ListItem>A-</asp:ListItem>
            <asp:ListItem>B+</asp:ListItem>
            <asp:ListItem>B-</asp:ListItem>
            <asp:ListItem>O+</asp:ListItem>
            <asp:ListItem>O-</asp:ListItem>
            <asp:ListItem>AB+</asp:ListItem>
            <asp:ListItem>AB-</asp:ListItem>
        </asp:DropDownList>


        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddBg" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>


        <br />

        &nbsp;<br />

        <br />

        

      



       

      

        Address : <asp:TextBox ID="txtAddress" TextMode="MultiLine" runat="server"></asp:TextBox>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtAddress" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

        <br /><br />

        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click1" />


    </div>

    <div class="a1">
        <img class="l1" src="assets/img/rImg.jpg" />
    </div>

</asp:Content>

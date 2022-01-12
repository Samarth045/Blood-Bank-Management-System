<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">Sign Up
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
            border-style: none;
            border-color: inherit;
            border-width: medium;
            float:left;
            color: white;
            padding : 14px 20px;
            margin : 8px 0;
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
        <br /><br />

        Mobile : 
        
        <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>

        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMobile" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

        <br /><br />

        Gender : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="rbMale" runat="server" GroupName="gen" Text="Male" Checked="true" />

        &nbsp;&nbsp;
        <asp:RadioButton ID="rbFemale" runat="server" GroupName="gen" Text="Female" />

        <br />
        <br />
        <br />

        Age : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:DropDownList ID="ddAge" runat="server" AutoPostBack="true">

            <asp:ListItem>(select age)</asp:ListItem>
            <asp:ListItem>above 18</asp:ListItem>
            <asp:ListItem>below 18</asp:ListItem>
        </asp:DropDownList>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddAge" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

        <br />
        <br />
        <br />

        Blood Group : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


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


        <br /><br /><br />

        Weight(in KG) : <asp:TextBox ID="txtWeight" TextMode="Number" runat="server"></asp:TextBox>

        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtWeight" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

        <br /><br />

        Height(in CM) : <asp:TextBox ID="txtHeight" TextMode="Number" runat="server"></asp:TextBox>

        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtHeight" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

        <br /><br />

        Select Image : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:FileUpload ID="FileUpload1" runat="server" />


        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="FileUpload1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>


        <br />
        <br />
        <br />


        Password : <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>

        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password length must  be between  7-10 characters or numbers" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9'@&amp;#.\s]{7,10}$"></asp:RegularExpressionValidator>

        <br /><br /><br />

        Address : <asp:TextBox ID="txtAddress" TextMode="MultiLine" runat="server"></asp:TextBox>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtAddress" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

        <br /><br />

        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click1" Height="43px" Width="120px" />


    </div>

    <div class="a1">
        <img class="l1" src="assets/img/rImg.jpg" />
    </div>

</asp:Content>

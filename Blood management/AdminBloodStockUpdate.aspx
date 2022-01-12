<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="AdminBloodStockUpdate.aspx.cs" Inherits="AdminBloodStockUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">Update Blood Stock
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        table
        {
            font-family: Arial, sans-serif;
            border-collapse: collapse;
            width: 40%;
            margin-left: 40%;
            margin-top: -18%;
        }

        td,th
        {
            border : 1px solid #dddddd;
            text-align : center;
            padding : 8px;
        }

        tr:nth-child(even)
        {
            background-color : #dddddd;
        }
        
        #bug
        {
            margin-left :7%;
        }


            
        
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <div id="bgu1">
        <a href="Admin.aspx"><h3>Admin Home</h3></a>

        <h2>Select Blood Group to Update</h2>
        <br /><br />

        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" Height="29px" Width="188px">

            <asp:ListItem>(Select Blood Group)</asp:ListItem>
            <asp:ListItem>A+</asp:ListItem>
            <asp:ListItem>A-</asp:ListItem>
            <asp:ListItem>B+</asp:ListItem>
            <asp:ListItem>B-</asp:ListItem>
            <asp:ListItem>O+</asp:ListItem>
            <asp:ListItem>O-</asp:ListItem>
             <asp:ListItem>AB+</asp:ListItem>
             <asp:ListItem>Ab-</asp:ListItem>

        </asp:DropDownList><br /><br />

        &nbsp;Enter Quntity : <br />
        <asp:TextBox ID="Textbox1" runat="server" TextMode="Number" Width="174px"></asp:TextBox>
        <br /><br />

        <asp:Button ID="Button1" runat="server" Text="Update" Width="78px" OnClick="Button1_Click" />
        <br /><br />

        <table>
            <tr>
                <th>Blood Group</th>
                <th>Available Blood Stock(in ML)</th>
            </tr>
            

            
            <tr>
                <th>A+</th>
                <th>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </th>
            </tr>

            
            <tr>
                <th>A-</th>
                <th>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </th>
            </tr>

            
            <tr>
                <th>B+</th>
                <th>
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </th>
            </tr>

            
            <tr>
                <th>B-</th>
                <th>
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </th>
            </tr>

            
            <tr>
                <th>O+</th>
                <th>
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                </th>
            </tr>

            
            <tr>
                <th>O-</th>
                <th>
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                </th>
            </tr>

            
            <tr>
                <th>AB+</th>
                <th>
                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                </th>
            </tr>

            
            <tr>
                <th>AB-</th>
                <th>
                    <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                </th>
            </tr>
        </table>
    </div>
</asp:Content>


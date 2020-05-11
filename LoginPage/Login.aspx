<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LoginPage.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tamrin 1</title>
    <style>
        body {
            background-color:lightcyan;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table style="margin:auto;border:2px solid black">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label></td>
            <td>
                <asp:TextBox ID="UserTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>
            <td>
                <asp:TextBox ID="PassTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="LoginBtn" runat="server" Text="Login" OnClick="LoginBtn_Click" />
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Incorrect password or username" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>

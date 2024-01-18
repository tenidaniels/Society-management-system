<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Admin_Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            height: 13px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="head">
    
        <asp:Image ID="Image1" runat="server" ImageUrl="~/img/ehuse700.png" />
    
    </div>
    <div id="login">
        <table class="tbl" dir="bl">
            <tr>
                <td class="tblhead" colspan="2" style="text-align: center">
                    ADMIN LOGIN PANEL</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="lbl">
                    UserName :</td>
                <td>
                    <asp:TextBox ID="txtuname" runat="server" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="lbl">
                    Password :</td>
                <td>
                    <asp:TextBox ID="txtupass" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                </td>
                <td class="style1">
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Login" 
                        Width="80px" onclick="Button1_Click" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>

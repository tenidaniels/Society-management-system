<%@ Page Title="" Language="C#" MasterPageFile="~/Login.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        
    }
    .style2
    {
        }
    .style3
    {
        text-align: right;
        color: #333;
        
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            CHANGE PASSWORD</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <table align="center" style="border: thin solid #009900">
                <tr>
                    <td class="tbllhead" colspan="2">
                        Change Password</td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        Enter Current Password&nbsp; :
                    </td>
                    <td>
                        <asp:TextBox ID="txtcurrentpass" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtcurrentpass" ErrorMessage="!!" ForeColor="Red" 
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        Enter New Password :
                    </td>
                    <td>
                        <asp:TextBox ID="txtnewpass" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtnewpass" ErrorMessage="!!" ForeColor="Red" 
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        Confirm - Pass :
                    </td>
                    <td>
                        <asp:TextBox ID="txtconpaas" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtconpaas" ErrorMessage="!!" ForeColor="Red" 
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="txtnewpass" ControlToValidate="txtconpaas" 
                            ErrorMessage="password not same" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="btnchangepass" runat="server" CssClass="btn" 
                            onclick="btnchangepass_Click" Text="Change Password" />
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lblpass" runat="server" Font-Size="11pt"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>


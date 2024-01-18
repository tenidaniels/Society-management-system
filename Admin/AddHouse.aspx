<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddHouse.aspx.cs" Inherits="Admin_AddHouse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            width: 571px;
        }
        .style2
        {
            width: 163px;
        }
    .style3
    {
    }
    .style4
    {
        width: 152px;
    }
    .style5
    {
        text-align: right;
        color: #333;
        width: 152px;
    }
    .style6
    {
        width: 166px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbll">
        <tr>
            <td class="tblhead">
                ADD NEW HOUSE TO SOCIETY</td>
        </tr>
        <tr>
            <td style="text-align: center">
                <table align="center" class="style1">
                    <tr>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style6">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style5">
                            Society :</td>
                        <td class="style6">
                            <asp:DropDownList ID="drpsociety" runat="server" CssClass="txt1" 
                                AutoPostBack="True" onselectedindexchanged="drpsociety_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                        <td align="left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="drpsociety" ErrorMessage="!!" ForeColor="Red" 
                                SetFocusOnError="True" InitialValue="SELECT"></asp:RequiredFieldValidator>
                            <asp:Label ID="lblhome" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5">
                            &nbsp;</td>
                        <td class="style6">
                            &nbsp;</td>
                        <td align="left">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style5">
                            &nbsp;</td>
                        <td align="left" class="style6">
                            <asp:Label ID="lblallocate" runat="server"></asp:Label>
                        </td>
                        <td align="left">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style5">
                            &nbsp;</td>
                        <td align="left" class="style6">
                            <asp:Label ID="lblrem" runat="server"></asp:Label>
                        </td>
                        <td align="left">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style5">
                            &nbsp;</td>
                        <td class="style6">
                            &nbsp;</td>
                        <td align="left">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style5">
                            Block No :</td>
                        <td class="style6">
                            <asp:TextBox ID="txtblockname" runat="server" CssClass="txt1"></asp:TextBox>
                        </td>
                        <td align="left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtblockname" ErrorMessage="!!" ForeColor="Red" 
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5">
                            House Type : 
                        </td>
                        <td class="style6">
                            <asp:DropDownList ID="drptype" runat="server" CssClass="txt1">
                                <asp:ListItem>SELECT</asp:ListItem>
                                <asp:ListItem>1 BHK</asp:ListItem>
                                <asp:ListItem>2 BHK</asp:ListItem>
                                <asp:ListItem>3 BHK</asp:ListItem>
                                <asp:ListItem>4 BHK</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td align="left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="drptype" ErrorMessage="!!" ForeColor="Red" 
                                SetFocusOnError="True" InitialValue="SELECT"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5">
                            Detail :</td>
                        <td class="style6">
                            <asp:TextBox ID="txtdetai" runat="server" CssClass="txt1"></asp:TextBox>
                        </td>
                        <td align="left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtdetai" ErrorMessage="!!" ForeColor="Red" 
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5">
                            &nbsp;</td>
                        <td class="style6">
                            &nbsp;</td>
                        <td align="left">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4">
                            &nbsp;</td>
                        <td style="text-align: left" class="style6">
                            <asp:Button ID="btnadd" runat="server" CssClass="btn" Text="ADD House" 
                                onclick="btnadd_Click" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4">
                            &nbsp;</td>
                        <td align="left" class="style3" colspan="2">
                            <asp:Label ID="lblmsg" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table class="tbl">
                    <tr>
                        <td class="style2">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>


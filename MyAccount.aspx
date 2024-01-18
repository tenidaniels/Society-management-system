<%@ Page Title="" Language="C#" MasterPageFile="~/Login.master" AutoEventWireup="true" CodeFile="MyAccount.aspx.cs" Inherits="MyAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 682px;
        }
        .style2
        {
            width: 189px;
        }
        .style3
        {
            width: 414px;
        }
        .style4
        {
            text-align: right;
            color: #333;
            width: 178px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                MY ACCOUNT</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td class="style2">
                            &nbsp;</td>
                        <td>
                            <asp:MultiView ID="MultiView1" runat="server">
                                <asp:View ID="View1" runat="server">
                                    <table align="center" class="tbll">
                                        <tr>
                                            <td class="tbllhead" colspan="2" style="text-align: center">
                                                Account Detail</td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                First Name :
                                            </td>
                                            <td>
                                                <asp:Label ID="lblfname" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                Last Name :
                                            </td>
                                            <td>
                                                <asp:Label ID="lbllname" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                Email :
                                            </td>
                                            <td>
                                                <asp:Label ID="lblemail" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                Mobile :
                                            </td>
                                            <td>
                                                <asp:Label ID="lblmobile" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                Society Name :
                                            </td>
                                            <td>
                                                <asp:Label ID="lblsname" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                Member :
                                            </td>
                                            <td>
                                                <asp:Label ID="lblmember" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style4">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style4">
                                                &nbsp;</td>
                                            <td>
                                                <asp:Button ID="btnedit" runat="server" CssClass="btn" onclick="btnedit_Click" 
                                                    Text="Edit Account" Width="130px" />
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                                <asp:View ID="View2" runat="server">
                                    <table align="center" class="tbll">
                                        <tr>
                                            <td class="tbllhead" colspan="2" style="text-align: center">
                                                Account Detail</td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                First Name :
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtfname" runat="server" CssClass="txt"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                Last Name :
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtlname" runat="server" CssClass="txt"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                Email :
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtemail" runat="server" CssClass="txt"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                Mobile :
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtmobile" runat="server" CssClass="txt"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style4">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style4">
                                                &nbsp;</td>
                                            <td>
                                                <asp:Button ID="btnupdate" runat="server" CssClass="btn" 
                                                    onclick="btnupdate_Click" Text="Update" Width="130px" />
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                            </asp:MultiView>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>


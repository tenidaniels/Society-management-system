<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="View.aspx.cs" Inherits="View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 402px;
        }
        .style3
        {
            width: 720px;
        }
        .style4
        {
            width: 142px;
        }
        .style5
        {
            width: 141px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                VIEW DETAIL</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <table align="center" class="style3">
                    <tr>
                        <td>
                            <table align="center" class="style1" style="border: thin solid #009900">
                                <tr>
                                    <td class="tbllhead" colspan="2">
                                        :: House Detail ::</td>
                                </tr>
                                <tr>
                                    <td class="style4">
                                        <asp:Image ID="Image2" runat="server" BorderColor="Silver" BorderStyle="Dashed" 
                                            BorderWidth="1px" Height="150px" Width="138px" />
                                    </td>
                                    <td valign="top">
                                        <table class="tbl">
                                            <tr>
                                                <td>
                                                    Block No :
                                                    <asp:Label ID="lblblock" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Type :
                                                    <asp:Label ID="lbltype" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Detail :
                                                    <asp:Label ID="lbldetail" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Society Name :
                                                    <asp:Label ID="lblsociety" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Address :
                                                    <asp:Label ID="lbladd" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    City :
                                                    <asp:Label ID="lblcity" runat="server"></asp:Label>
&nbsp;,
                                                    <asp:Label ID="lblpin" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <table align="center" class="style1" style="border: thin solid #009900">
                                <tr>
                                    <td class="tbllhead" colspan="2">
                                        :: House Owner Detail ::</td>
                                </tr>
                                <tr>
                                    <td class="style5">
                                        <asp:Image ID="Image3" runat="server" BorderColor="Silver" BorderStyle="Dashed" 
                                            BorderWidth="1px" Height="150px" Width="138px" />
                                    </td>
                                    <td valign="top">
                                        <table class="tbl">
                                            <tr>
                                                <td>
                                                    Name :
                                                    <asp:Label ID="lblname" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Email :
                                                    <asp:Label ID="lblemail" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Mobile :
                                                    <asp:Label ID="lblmobile" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <table class="style3">
                    <tr>
                        <td class="lbl">
                            Your Name :
                        </td>
                        <td>
                            <asp:TextBox ID="txtname" runat="server" CssClass="txt" Width="250px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtname" ErrorMessage="!!" ForeColor="Red" 
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Subject :
                        </td>
                        <td>
                            <asp:TextBox ID="txtsub" runat="server" CssClass="txt" Width="250px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtsub" ErrorMessage="!!" ForeColor="Red" 
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Message :
                        </td>
                        <td>
                            <asp:TextBox ID="txtmsg" runat="server" CssClass="txt" Height="60px" 
                                TextMode="MultiLine" Width="250px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtmsg" ErrorMessage="!!" ForeColor="Red" 
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="btnsend" runat="server" CssClass="btn" onclick="btnsend_Click" 
                                Text="Send Message" Width="140px" />
                            <asp:Label ID="Label1" runat="server" Font-Size="11pt" ForeColor="#006600" 
                                Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>


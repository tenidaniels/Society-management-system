<%@ Page Title="" Language="C#" MasterPageFile="~/Login.master" AutoEventWireup="true" CodeFile="LHome.aspx.cs" Inherits="LHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 823px;
        height: 68px;
    }
    .style2
    {
        width: 23px;
    }
    .style3
    {
        width: 213px;
    }
    .style4
    {
        width: 15px;
    }
    .style5
    {
        width: 551px;
    }
    .style6
    {
        width: 153px;
    }
    .style7
    {
        text-align: right;
        color: #333;
        width: 153px;
    }
    .style8
    {
        width: 729px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                Welcome to E-Housing Helpinng Society</td>
        </tr>
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td class="style2" style="text-align: center">
                            &nbsp;</td>
                        <td class="style3" style="text-align: center">
                            My Home</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2">
                            &nbsp;</td>
                        <td class="style3">
                            <asp:Image ID="Image3" runat="server" BorderColor="#CCCCCC" 
                                BorderStyle="Double" BorderWidth="1px" Height="227px" Width="212px" />
                        </td>
                        <td class="style4">
                            &nbsp;</td>
                        <td valign="top">
                            <table class="style5">
                                <tr>
                                    <td class="style7" style="color: #ff6600; font-size: 16px; font-weight: bold;">
                                        Society Name :
                                    </td>
                                    <td>
                                        <asp:Label ID="lblsname" runat="server" Font-Bold="True" Font-Size="16px" 
                                            ForeColor="#FF6600"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style7">
                                        Block No :
                                    </td>
                                    <td>
                                        <asp:Label ID="lblbno" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style7">
                                        Type :
                                    </td>
                                    <td>
                                        <asp:Label ID="lbltype" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style6">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style6">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style6">
                                        &nbsp;</td>
                                    <td>
                                        <asp:Label ID="lblsell" runat="server" ForeColor="#006600"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style6">
                                        <asp:Button ID="btnrent" runat="server" CssClass="btn" onclick="btnrent_Click" 
                                            Text="RENT NOW" Width="150px" CausesValidation="False" />
                                    </td>
                                    <td>
                                        <asp:Button ID="btnsell" runat="server" CssClass="btn" Text="SELL NOW" 
                                            Width="150px" CausesValidation="False" onclick="btnsell_Click" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style6">
                                        <asp:TextBox ID="txtrent" runat="server" CssClass="txt" MaxLength="10" 
                                            Visible="False" Width="90px"></asp:TextBox>
                                        <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                            ControlToValidate="txtrent" ErrorMessage="!!" ForeColor="Red" 
                                            MaximumValue="9999999999" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtsell" runat="server" Columns="10" CssClass="txt" 
                                            Visible="False" Width="90px"></asp:TextBox>
                                        <asp:RangeValidator ID="RangeValidator2" runat="server" 
                                            ControlToValidate="txtsell" ErrorMessage="!!" ForeColor="Red" 
                                            MaximumValue="9999999999" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style6">
                                        <asp:Button ID="btnrentnow" runat="server" CssClass="btn" 
                                            onclick="btnrentnow_Click" Text="RENT" Visible="False" Width="90px" />
                                    </td>
                                    <td>
                                        <asp:Button ID="btnsellnow" runat="server" CssClass="btn" 
                                            onclick="btnsellnow_Click" Text="SELL" Visible="False" Width="90px" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="border-top-style: solid; border-top-width: thin; border-top-color: #ff6600">
                <table align="center" class="style8">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <table class="tbll">
                                <tr>
                                    <td class="tbllhead" style="text-align: center">
                                        Change Home Picture :
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: center">
                                        <asp:FileUpload ID="FileUpload1" runat="server" Width="217px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: center">
                                        <asp:Button ID="btnhupload" runat="server" CssClass="btn" 
                                            onclick="btnhupload_Click" Text="UPLOAD.." Width="150px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: center">
                                        <asp:Label ID="lblhupload" runat="server" Font-Size="11pt"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <table class="tbll">
                                <tr>
                                    <td class="tbllhead" style="text-align: center">
                                        Change Profile Picture :
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: center">
                                        <asp:FileUpload ID="FileUpload2" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: center">
                                        <asp:Button ID="btnpupload" runat="server" CssClass="btn" 
                                            onclick="btnpupload_Click" Text="UPLOAD.." Width="150px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: center">
                                        <asp:Label ID="lblpupload" runat="server" Font-Size="11pt"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>


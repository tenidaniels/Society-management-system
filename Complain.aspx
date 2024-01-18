<%@ Page Title="" Language="C#" MasterPageFile="~/Login.master" AutoEventWireup="true" CodeFile="Complain.aspx.cs" Inherits="Complain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
           
        }
    .style7
    {
        text-align: right;
        color: #333;
        width: 275px;
    }
    .style8
    {
        width: 275px;
    }
    .style9
    {
        width: 34px;
    }
        .style12
        {
            width: 422px;
        }
        .style13
        {
            text-align: right;
            color: #333;
            width: 191px;
        }
        .style14
        {
            width: 191px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                COMPALIN</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <table align="center" class="style2">
                    <tr>
                        <td align="right">
                            <asp:Button ID="Button8" runat="server" CssClass="btn" Text="Make Complain" 
                                onclick="Button8_Click" CausesValidation="False" Width="170px" />
                        </td>
                        <td>
&nbsp;
                            <asp:Button ID="Button9" runat="server" CssClass="btn" Text="My Compalin" 
                                onclick="Button9_Click" CausesValidation="False" Width="170px" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:MultiView ID="MultiView1" runat="server">
                                <asp:View ID="View1" runat="server">
                                    <table align="center" class="tbll">
                                        <tr>
                                            <td class="tbllhead" colspan="2" style="text-align: center">
                                                Make New Complain</td>
                                        </tr>
                                        <tr>
                                            <td class="style13">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style13">
                                                Subject&nbsp; :
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtsubject" runat="server" CssClass="txt" Width="200px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                    ControlToValidate="txtsubject" ErrorMessage="!!" ForeColor="Red" 
                                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style13">
                                                Complain :
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtcomplain" runat="server" CssClass="txt" Height="60px" 
                                                    TextMode="MultiLine" Width="200px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                    ControlToValidate="txtcomplain" ErrorMessage="!!" ForeColor="Red" 
                                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style14">
                                                &nbsp;</td>
                                            <td>
                                                <asp:Button ID="btnmakecomplin" runat="server" CssClass="btn" 
                                                    onclick="btnmakecomplin_Click" Text="SUBMIT" Width="80px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style14">
                                                &nbsp;</td>
                                            <td>
                                                <asp:Label ID="lblmcomplain" runat="server" Font-Size="11pt"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                                <asp:View ID="View2" runat="server">
                                    <table class="tbll">
                                        <tr>
                                            <td class="tbllhead" style="text-align: center" colspan="2">
                                                My Complain Report -
                                                <asp:Label ID="Label1" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style9">
                                                &nbsp;</td>
                                            <td>
                                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                                    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                                                    CellPadding="2" ForeColor="Black" GridLines="None" Width="306px" 
                                                    onrowcommand="GridView2_RowCommand">
                                                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                                    <Columns>
                                                        <asp:BoundField DataField="subject" HeaderText="Subject" />
                                                        <asp:BoundField DataField="Status" HeaderText="Status" />
                                                        <asp:TemplateField HeaderText="View">
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="lnkview" runat="server" CommandArgument='<%#Eval("cid") %>' 
                                                                    ForeColor="Green" Text="View"></asp:LinkButton>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                    <FooterStyle BackColor="Tan" />
                                                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                                        HorizontalAlign="Center" />
                                                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                                                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                                                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                                                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                            </asp:MultiView>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Panel ID="Panel1" runat="server" Visible="False">
                                <table class="style12">
                                    <tr>
                                        <td class="lbl">
                                            Subject :</td>
                                        <td>
                                            <asp:Label ID="lblsub" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="lbl">
                                            Complain :
                                        </td>
                                        <td>
                                            <asp:Label ID="lblcom" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="lbl">
                                            Reply :
                                        </td>
                                        <td>
                                            <asp:Label ID="lblreply" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            <asp:Button ID="btnreply0" runat="server" CssClass="btn" 
                                                                    onclick="btnreply0_Click" Text="BACK" Width="90px" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
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
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


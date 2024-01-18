<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Complain.aspx.cs" Inherits="Admin_Complain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style2
        {
            width: 668px;
        }
        .tbllhead
    {
       background:#ff6600;
       height:25px;
       font-weight:normal;
       text-align:center;
       color:#fff;
        }
    
    .style7
    {
        text-align: right;
        color: #333;
        width: 28px;
    }
        .style10
        {
            width: 28px;
        }
        .style11
        {
            width: 89px;
        }
        .style12
        {
            width: 422px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            COMPLAIN LIST</td>
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
                            <asp:Button ID="btnnew" runat="server" CssClass="btn" Text="New Complain" 
                                onclick="btnnew_Click" CausesValidation="False" Width="170px" />
                        </td>
                        <td>
&nbsp;
                            <asp:Button ID="btnsolvd" runat="server" CssClass="btn" Text="Solved Compalin" 
                                onclick="btnsolvd_Click" CausesValidation="False" Width="170px" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:MultiView ID="MultiView1" runat="server">
                                <asp:View ID="View1" runat="server">
                                    <table align="center" class="tbll">
                                        <tr>
                                            <td class="tbllhead" colspan="2" style="text-align: center">
                                                New Complain List -
                                                <asp:Label ID="lblnewc" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style7">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style10">
                                                &nbsp;</td>
                                            <td>
                                                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                                                    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                                                    CellPadding="2" ForeColor="Black" GridLines="None" Width="500px" 
                                                    onrowcommand="GridView3_RowCommand">
                                                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                                    <Columns>
                                                        <asp:BoundField DataField="username" HeaderText="UserName" />
                                                        <asp:BoundField DataField="societyname" HeaderText="SocietyName" />
                                                        <asp:BoundField DataField="subject" HeaderText="Subject" />
                                                        <asp:TemplateField HeaderText="Reply">
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="lnkview0" runat="server" 
                                                                    CommandArgument='<%#Eval("cid") %>' ForeColor="Green" Text="Reply" ></asp:LinkButton>
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
                                        <tr>
                                            <td class="style10">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style10">
                                                &nbsp;</td>
                                            <td>
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
                                                                <asp:TextBox ID="txtreplyyy" runat="server" CssClass="txt" Height="70px" 
                                                                    TextMode="MultiLine" Width="200px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:Button ID="btnreply" runat="server" CssClass="btn" 
                                                                    onclick="btnreply_Click" Text="REPLY" Width="90px" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                                <asp:View ID="View2" runat="server">
                                    <table class="tbll">
                                        <tr>
                                            <td class="tbllhead" style="text-align: center" colspan="2">
                                                Solved Complain Report -
                                                <asp:Label ID="lblsol" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style11">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style11">
                                                &nbsp;</td>
                                            <td>
                                                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
                                                    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                                                    CellPadding="2" ForeColor="Black" GridLines="None" Width="500px" 
                                                    onrowcommand="GridView4_RowCommand">
                                                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                                    <Columns>
                                                        <asp:BoundField DataField="username" HeaderText="UserName" />
                                                        <asp:BoundField DataField="societyname" HeaderText="SocietyName" />
                                                        <asp:BoundField DataField="subject" HeaderText="Subject" />
                                                        <asp:TemplateField HeaderText="View">
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="lnkview1" runat="server" 
                                                                    CommandArgument='<%#Eval("cid") %>' ForeColor="Green" Text="View"></asp:LinkButton>
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
                                        <tr>
                                            <td class="style11">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style11">
                                                &nbsp;</td>
                                            <td>
                                                <asp:Panel ID="Panel2" runat="server" Visible="False">
                                                    <table class="style12">
                                                        <tr>
                                                            <td class="lbl">
                                                                Subject :</td>
                                                            <td>
                                                                <asp:Label ID="lblsub0" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="lbl">
                                                                Complain :
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="lblcom0" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="lbl">
                                                                Reply :
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtreplyyy0" runat="server" CssClass="txt" Height="70px" 
                                                                    TextMode="MultiLine" Width="200px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:Button ID="btnreply0" runat="server" CssClass="btn" 
                                                                    onclick="btnreply0_Click" Text="UPDATE" Width="90px" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
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
                </table>
            </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>


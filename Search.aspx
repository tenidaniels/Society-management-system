<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 603px;
    }
    .style2
    {
        text-align: right;
        color: #333;
        width: 140px;
    }
    .style3
    {
    }
    .style4
    {
        width: 656px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            SEARCH PAGE</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <table align="center" class="style1">
                <tr>
                    <td class="style2">
                        Select Society :
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="txt">
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td class="lbl">
                        Select Type :
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="txt">
                            <asp:ListItem>SELECT</asp:ListItem>
                            <asp:ListItem>Rent</asp:ListItem>
                            <asp:ListItem>Sell</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="btnsearch" runat="server" CssClass="btn" Text="Search" 
                            Width="110px" onclick="btnsearch_Click" />
                    </td>
                </tr>
                <tr>
                    <td align="center" class="style3" colspan="4">
                        <asp:Label ID="lblsearch" runat="server"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td style="border-top-style: solid; border-top-width: thin; border-top-color: #FF9933">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <table align="center" class="style4">
                <tr>
                    <td>
                        <asp:MultiView ID="MultiView1" runat="server">
                            <asp:View ID="View1" runat="server">
                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                    AutoGenerateColumns="False" BackColor="White" BorderColor="#FF6600" 
                                    BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Hid" 
                                    ForeColor="Black" GridLines="Horizontal" style="text-align: center" 
                                    Width="629px" onrowcommand="GridView1_RowCommand">
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <HeaderStyle BackColor="#FF9000" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                    <SortedDescendingHeaderStyle BackColor="#242121" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="Image">
                                            <ItemTemplate>
                                                <asp:Image ID="img" runat="server" Height="50px" ImageUrl='<%#Eval("image")%>' 
                                                    Width="50px" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="blockno" HeaderText="Block" />
                                        <asp:BoundField DataField="sname" HeaderText="SocietyName" />
                                        <asp:BoundField DataField="rent" HeaderText="Rent Price" />
                                        <asp:TemplateField HeaderText="View">
                                            <ItemTemplate>
                                                <asp:LinkButton runat="server" CommandArgument='<%#Eval("uid") %>' 
                                                    CssClass="lnk" Text="View"></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                            </asp:View>
                            <asp:View ID="View2" runat="server">
                                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                                    AutoGenerateColumns="False" BackColor="White" BorderColor="#FF6600" 
                                    BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Hid" 
                                    ForeColor="Black" GridLines="Horizontal" style="text-align: center" 
                                    Width="629px">
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <HeaderStyle BackColor="#FF9000" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                    <SortedDescendingHeaderStyle BackColor="#242121" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="Image">
                                            <ItemTemplate>
                                                <asp:Image ID="img0" runat="server" Height="50px" ImageUrl='<%#Eval("image")%>' 
                                                    Width="50px" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="blockno" HeaderText="Block" />
                                        <asp:BoundField DataField="sname" HeaderText="SocietyName" />
                                        <asp:BoundField DataField="sell" HeaderText="Sell Price" />
                                        <asp:TemplateField HeaderText="View">
                                            <ItemTemplate>
                                                <asp:LinkButton runat="server" CommandArgument='<%#Eval("hid") %>' 
                                                    CssClass="lnk" Text="View"></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                            </asp:View>
                        </asp:MultiView>
                    </td>
                </tr>
                <tr>
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


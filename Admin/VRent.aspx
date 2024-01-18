<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="VRent.aspx.cs" Inherits="Admin_VRent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 811px;
        }
        .style2
        {
            width: 157px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            VIEW RENT HOUSE</td>
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
                        <asp:Label ID="lbl" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                            CellPadding="2" ForeColor="Black" GridLines="None" Width="728px">
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            <Columns>
                                <asp:BoundField DataField="username" HeaderText="User Name" />
                                <asp:BoundField DataField="Mobile" HeaderText="Mobile" />
                                <asp:BoundField DataField="sname" HeaderText="SocietyName" />
                                <asp:BoundField DataField="hid" HeaderText="BlockNo" />
                                <asp:BoundField DataField="sell" HeaderText="RentPrice" />
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
                    <td class="style2">
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


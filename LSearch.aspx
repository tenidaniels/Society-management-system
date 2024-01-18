﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Login.master" AutoEventWireup="true" CodeFile="LSearch.aspx.cs" Inherits="LSearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
     
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            SEARCH PAGE of
                <asp:Label ID="lblsname" runat="server"></asp:Label>
            </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center">
                            <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                                BorderColor="#FF6600" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                ForeColor="Black" GridLines="Horizontal" AllowPaging="True" DataKeyNames="Hid" 
                                AutoGenerateColumns="False" style="text-align: center" Width="762px" 
                                onrowcommand="GridView1_RowCommand">
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
                                <asp:Image runat="server" ID="img" ImageUrl='<%#Eval("image")%>' Height="50px" Width="50px" />
                                </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField HeaderText="Block" DataField="blockno" />
                                 <asp:BoundField HeaderText="Type" DataField="type" />
                                  <asp:BoundField HeaderText="SocietyName" DataField="sname" />
 <asp:TemplateField HeaderText="View">
                                <ItemTemplate>
                              <asp:LinkButton runat="server" Text="View" CommandArgument='<%#Eval("hid") %>' CssClass="lnk" ></asp:LinkButton>
                                </ItemTemplate>
                                </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </td>
    </tr>
</table>
</asp:Content>


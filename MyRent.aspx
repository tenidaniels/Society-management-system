﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Login.master" AutoEventWireup="true" CodeFile="MyRent.aspx.cs" Inherits="MyRent" %>

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
    }
    .style9
    {
        width: 168px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                MY RENT PAGE</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
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
                        <td class="style3" valign="top">
                            <asp:Image ID="Image3" runat="server" BorderColor="#FF6600" 
                                BorderStyle="Double" BorderWidth="1px" Height="227px" Width="212px" />
                        </td>
                        <td class="style4">
                            &nbsp;</td>
                        <td valign="top">
                            <table class="style5">
                                <tr>
                                    <td class="lbl" style="color: #ff6600; font-size: 16px; font-weight: bold;">
                                        Society Name :
                                    </td>
                                    <td>
                                        <asp:Label ID="lblsname" runat="server" Font-Bold="True" Font-Size="16px" 
                                            ForeColor="#FF6600"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="lbl">
                                        Block No :
                                    </td>
                                    <td>
                                        <asp:Label ID="lblbno" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="lbl">
                                        Type :
                                    </td>
                                    <td>
                                        <asp:Label ID="lbltype" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="lbl">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="lbl">
                                        Rent Price : </td>
                                    <td>
                                        <asp:Label ID="lblrent" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style9">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style9">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style6" colspan="2">
                                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                            BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                                            CellPadding="2" ForeColor="Black" GridLines="None" 
                                            AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" 
                                            DataKeyNames="RID" onrowcancelingedit="GridView2_RowCancelingEdit" 
                                            onrowdeleting="GridView2_RowDeleting" onrowediting="GridView2_RowEditing" 
                                            onrowupdating="GridView2_RowUpdating">
                                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                            <Columns>
                                               
                                                <asp:TemplateField HeaderText="BlockNo">
                                                <ItemTemplate>
                                                <asp:Label ID="lblbnoo" Text='<%#Eval("hid") %>' runat="server"></asp:Label>
                                                </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="SocietyName">
                                                <ItemTemplate>
                                                <asp:Label ID="lblsn" Text='<%#Eval("sname") %>' runat="server"></asp:Label>
                                                </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Rent Price">
                                                <ItemTemplate>
                                                <asp:Label ID="lblrentprice" Text='<%#Eval("rent") %>' runat="server"></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                <asp:TextBox ID="txtr" runat="server" Text='<%#Eval("rent") %>' Width="100px"></asp:TextBox>
                                                </EditItemTemplate>
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
                                    <td class="style9">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
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
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


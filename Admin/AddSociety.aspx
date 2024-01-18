<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddSociety.aspx.cs" Inherits="Admin_AddSociety" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 466px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbll">
        <tr>
            <td class="tblhead">
                ADD NEW SOCIETY</td>
        </tr>
        <tr>
            <td style="text-align: center">
                <table align="center" class="style1">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Society Name :</td>
                        <td align="left">
                            <asp:TextBox ID="txtsname" runat="server" CssClass="txt1"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtsname" ErrorMessage="!!" ForeColor="Red" 
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            No of Houses :
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtnohouse" runat="server" CssClass="txt1"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtnohouse" ErrorMessage="!!" ForeColor="Red" 
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Address :</td>
                        <td align="left">
                            <asp:TextBox ID="txtadd" runat="server" CssClass="txt1"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtadd" ErrorMessage="!!" ForeColor="Red" 
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            City :</td>
                        <td align="left">
                            <asp:TextBox ID="txtcity" runat="server" CssClass="txt1"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="txtcity" ErrorMessage="!!" ForeColor="Red" 
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Pincode :</td>
                        <td align="left">
                            <asp:TextBox ID="txtpincode" runat="server" CssClass="txt1"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="txtpincode" ErrorMessage="!!" ForeColor="Red" 
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Image :</td>
                        <td style="text-align: left">
                            <asp:FileUpload ID="FileUpload1" runat="server" Width="160px" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td style="text-align: left">
                            <asp:Button ID="btnadd" runat="server" CssClass="btn" Text="ADD Society" 
                                onclick="btnadd_Click" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td align="left">
                            <asp:Label ID="lblmg" runat="server"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table class="tbl">
                    <tr>
                        <td align="center">
                            <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                                BorderColor="#FF6600" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                ForeColor="Black" GridLines="Horizontal" AllowPaging="True" 
                                AutoGenerateDeleteButton="True" DataKeyNames="sid" 
                                onrowdeleting="GridView1_RowDeleting" 
                                onselectedindexchanging="GridView1_SelectedIndexChanging" PageSize="5" 
                                AutoGenerateColumns="False" style="text-align: center">
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
                                <asp:BoundField HeaderText="SocietyName" DataField="sname" />
                                <asp:BoundField HeaderText="Address" DataField="address" />
                                <asp:BoundField HeaderText="city" DataField="city" />
                                <asp:BoundField HeaderText="Picode" DataField="pincode" />
                                <asp:BoundField HeaderText="House" DataField="nohouse" />
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>


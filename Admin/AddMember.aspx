<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddMember.aspx.cs" Inherits="Admin_AddMember" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            width: 338px;
        }
        .style2
        {
            width: 347px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbll">
        <tr>
            <td class="tblhead">
                &nbsp;ALLOCATE HOUSE TO MEMBER</td>
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
                            First Name :</td>
                        <td>
                            <asp:TextBox ID="txtfname" runat="server" CssClass="txt1"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtfname" ErrorMessage="!!" ForeColor="Red" 
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Last Name : 
                        </td>
                        <td>
                            <asp:TextBox ID="txtlname" runat="server" CssClass="txt1"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtlname" ErrorMessage="!!" ForeColor="Red" 
                                SetFocusOnError="True" InitialValue="SELECT"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Email :</td>
                        <td>
                            <asp:TextBox ID="txtemail" runat="server" CssClass="txt1"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtemail" ErrorMessage="!!" ForeColor="Red" 
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Mobile :</td>
                        <td>
                            <asp:TextBox ID="txtmobile" runat="server" CssClass="txt1"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="txtmobile" ErrorMessage="!!" ForeColor="Red" 
                                SetFocusOnError="True" InitialValue="SELECT"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                           BirthDate :</td>
                        <td>
                            <asp:DropDownList ID="drpdd" runat="server">
                                <asp:ListItem>DD</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                 <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                 <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                                <asp:ListItem>13</asp:ListItem>
                                <asp:ListItem>14</asp:ListItem>
                                <asp:ListItem>15</asp:ListItem>
                                 <asp:ListItem>16</asp:ListItem>
                                <asp:ListItem>17</asp:ListItem>
                                <asp:ListItem>18</asp:ListItem>
                                <asp:ListItem>19</asp:ListItem>
                                <asp:ListItem>20</asp:ListItem>
                                 <asp:ListItem>21</asp:ListItem>
                                <asp:ListItem>22</asp:ListItem>
                                <asp:ListItem>23</asp:ListItem>
                                <asp:ListItem>24</asp:ListItem>
                                <asp:ListItem>25</asp:ListItem>
                                 <asp:ListItem>26</asp:ListItem>
                                <asp:ListItem>27</asp:ListItem>
                                <asp:ListItem>28</asp:ListItem>
                                <asp:ListItem>29</asp:ListItem>
                                <asp:ListItem>30</asp:ListItem>
                                 <asp:ListItem>31</asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="drpmm" runat="server">
                              <asp:ListItem>MM</asp:ListItem>
                                <asp:ListItem>jan</asp:ListItem>
                                <asp:ListItem>feb</asp:ListItem>
                                <asp:ListItem>mar</asp:ListItem>
                                 <asp:ListItem>apr</asp:ListItem>
                                <asp:ListItem>may</asp:ListItem>
                                <asp:ListItem>jun</asp:ListItem>
                                <asp:ListItem>july</asp:ListItem>
                                <asp:ListItem>aug</asp:ListItem>
                                 <asp:ListItem>sep</asp:ListItem>
                                <asp:ListItem>oct</asp:ListItem>
                                <asp:ListItem>nov</asp:ListItem>
                                <asp:ListItem>dec</asp:ListItem>
                               
                            </asp:DropDownList>
                            <asp:DropDownList ID="drpyyyy" runat="server">
                             <asp:ListItem>YYYY</asp:ListItem>
                                <asp:ListItem>1980</asp:ListItem>
                                <asp:ListItem>1981</asp:ListItem>
                                <asp:ListItem>1982</asp:ListItem>
                                 <asp:ListItem>1983</asp:ListItem>
                                <asp:ListItem>1984</asp:ListItem>
                                <asp:ListItem>1985</asp:ListItem>
                                <asp:ListItem>1986</asp:ListItem>
                                <asp:ListItem>1987</asp:ListItem>
                                 <asp:ListItem>1988</asp:ListItem>
                                <asp:ListItem>1989</asp:ListItem>
                                <asp:ListItem>1990</asp:ListItem>
                              
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Total Member :</td>
                        <td>
                            <asp:TextBox ID="txtmember" runat="server" CssClass="txt1" 
                                ontextchanged="txtdetai1_TextChanged"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Society Name :</td>
                        <td>
                            <asp:DropDownList ID="drpsociety" runat="server" CssClass="txt1" 
                                AutoPostBack="True" onselectedindexchanged="drpsociety_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            House No :</td>
                        <td>
                            <asp:DropDownList ID="drpno" runat="server" CssClass="txt1">
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Photo : </td>
                        <td>
                            <asp:FileUpload ID="FileUpload1" runat="server" Width="160px" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            UserName&nbsp; :</td>
                        <td>
                            <asp:TextBox ID="txtuname" runat="server" CssClass="txt1"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Password :</td>
                        <td>
                            <asp:TextBox ID="txtupass" runat="server" CssClass="txt1" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td style="text-align: left">
                            <asp:Button ID="btnadd" runat="server" CssClass="btn" Text="ADD Member" 
                                onclick="btnadd_Click" />
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
                        <td class="style2">
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="lblmsg" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>


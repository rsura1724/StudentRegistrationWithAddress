<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="StudentRegistration.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
            text-align: left;
        }
        .auto-style3 {
            text-align: right;
            width: 257px;
        }
        .auto-style4 {
            height: 23px;
            text-align: right;
            width: 257px;
        }
        .auto-style5 {
            width: 190px;
        }
        .auto-style6 {
            height: 23px;
            width: 190px;
        }
        .auto-style7 {
            text-align: left;
        }
        .auto-style8 {
            text-align: right;
            width: 257px;
            height: 42px;
        }
        .auto-style9 {
            width: 190px;
            height: 42px;
        }
        .auto-style10 {
            text-align: left;
            height: 42px;
        }
        .auto-style11 {
            text-align: right;
            width: 257px;
            height: 60px;
        }
        .auto-style12 {
            width: 190px;
            height: 60px;
        }
        .auto-style13 {
            text-align: left;
            height: 60px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style11">
                        <asp:Label ID="Label7" runat="server" Text="Student Registration Page"></asp:Label>
                    </td>
                    <td class="auto-style12">
                    </td>
                    <td class="auto-style13" style="color: #FF0000">
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">First Name</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBoxFirstName" runat="server" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style7" style="color: #FF0000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxFirstName" ErrorMessage="First Name Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Last Name</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBoxLastName" runat="server" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style7" style="color: #FF0000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxLastName" ErrorMessage="Last Name Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Email</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBoxEmail" runat="server" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style7" style="color: #FF0000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Email Required"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Not a valid Email"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">DOB(mm/dd/yyyy)</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBoxDOB" runat="server" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style7" style="color: #FF0000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxDOB" ErrorMessage="DOB required"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ValidationExpression="^(0?[1-9]|[12][0-9]|3[01])[\/](0?[1-9]|1[012])[\/]\d{4}$" runat="server" ControlToValidate="TextBoxDOB" ErrorMessage="Please Use mm/dd/yyyy format"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Phone Number</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBoxPhone" runat="server" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style2" style="color: #FF0000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxPhone" ErrorMessage="Phone Number Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label5" runat="server" Text="Country"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="DropDownListCountry" runat="server" Width="180px">
                            <asp:ListItem Value="Select Country">Select Country</asp:ListItem>
                            <asp:ListItem Value="Germany">Germany</asp:ListItem>
                            <asp:ListItem>United Kingdom</asp:ListItem>
                            <asp:ListItem>India</asp:ListItem>
                            <asp:ListItem>USA</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style2" style="color: #FF0000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownListCountry" ErrorMessage="Please Select Country" InitialValue="Select Country"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label1" runat="server" Text="Street Address Line 1"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBoxAdd1" runat="server" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style2" style="color: #FF0000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBoxAdd1" ErrorMessage="Please Enter Street Address"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label2" runat="server" Text="Street Address Line2"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBoxAdd2" runat="server" Width="179px"></asp:TextBox>
                    </td>
                    <td class="auto-style2" style="color: #FF0000">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label3" runat="server" Text="City"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBoxCity" runat="server" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style2" style="color: #FF0000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBoxCity" ErrorMessage="Please Enter The City"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label4" runat="server" Text="State"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="DropDownListState" runat="server" Width="180px">
                            <asp:ListItem Value="Select State">Select State</asp:ListItem>
                            <asp:ListItem>Texas</asp:ListItem>
                            <asp:ListItem>Virginia</asp:ListItem>
                            <asp:ListItem>Indianapolis</asp:ListItem>
                            <asp:ListItem>Iowa</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style2" style="color: #FF0000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="DropDownListState" ErrorMessage="Select a State" InitialValue="Select State"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label6" runat="server" Text="Zip Code"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBoxZip" runat="server" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style2" style="color: #FF0000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBoxZip" ErrorMessage="Please Enter your Zipcode"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Password</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBoxPasswd" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style7" style="color: #FF0000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxPasswd" ErrorMessage="Password Required"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,12}$" runat="server" ControlToValidate="TextBoxPasswd" ErrorMessage="Password must be 8-12 length and must contain atleast 1 uppercase, 1 lowercase and a number"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Confirm Password</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBoxConfPasswd" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style10" style="color: #FF0000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxConfPasswd" ErrorMessage="Confirm Password"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPasswd" ControlToValidate="TextBoxConfPasswd" ErrorMessage="Password not matched"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style9">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="138px" />
                    </td>
                    <td class="auto-style10" style="color: #FF0000">&nbsp;</td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
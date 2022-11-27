<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddImahe.aspx.cs" Inherits="ShortCourseReg.AddImahe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td style="vertical-align:top;">
                        <table>
                            <tr>
                                <td>
                                   Name:
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Name" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="Name" runat="server" Width="235px"></asp:TextBox></td>
                            </tr>
                             <tr>
                                <td>
                                   Description:<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Description" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="Description" runat="server" Height="115px" Width="235px" TextMode="MultiLine"></asp:TextBox></td>
                            </tr>
                             <tr>
                                <td>
                                   Category:
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Category" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="Category" runat="server" Width="235px"></asp:TextBox></td>
                            </tr>
                             <tr>
                                <td>
                                   Creator:
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Creator" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="Creator" runat="server" Width="235px"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Button ID="Save" runat="server" Text="Save" Width="326px" OnClick="B_Click" Height="44px" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Button ID="Edit" runat="server" Text="Edit" Width="326px" OnClick="B_Click" Height="44px" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Button ID="View" runat="server" Text="View" Width="326px" OnClick="B_Click" Height="44px" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Button ID="Delete" runat="server" Text="Delete" Width="326px" OnClick="B_Click" Height="44px" />
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td style="vertical-align:top;">
                        <asp:Image ID="Image1" runat="server" Height="263px" Width="270px" />  
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" />
                &nbsp;<br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Show image" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="FileUpload1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="saved" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

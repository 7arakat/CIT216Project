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
                    <td>
                        <table>
                            <tr>
                                <td>
                                    <asp:TextBox ID="tb2" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    alkdhakusdgh
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="263px" Width="270px" />  
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" />
                &nbsp;<br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Show image" />
                <br />
                <asp:Button ID="Butt" runat="server" Text="Save" Width="268px" OnClick="B_Click" />

                <br />
                <asp:Label ID="saved" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

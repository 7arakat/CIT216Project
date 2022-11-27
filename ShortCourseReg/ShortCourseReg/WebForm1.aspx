<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ShortCourseReg.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server">
                
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" CellPadding="3">
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td>Name: <%# Eval("Item_Name") %></td>
                            </tr>
                            <tr>
                                <td><asp:Image ID="Image1" runat="server" ImageUrl='<%# mm((int)Eval("Item_ID")) %>'/></td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>

            </asp:Panel>
        </div>
    </form>
</body>
</html>

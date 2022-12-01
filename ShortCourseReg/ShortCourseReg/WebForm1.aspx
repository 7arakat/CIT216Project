<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ShortCourseReg.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 200px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server">
                
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" CellPadding="3">
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td class="auto-style1" style="vertical-align: middle; text-align: center">Name: <%# Eval("ItemName") %></td>
                            </tr>
                            <tr>
                                <td class="auto-style1"><asp:Image ID="Image1" runat="server" ImageUrl='<%# mm((int)Eval("ItemID")) %>' Height="200px" Width="300px"/></td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>

            </asp:Panel>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>

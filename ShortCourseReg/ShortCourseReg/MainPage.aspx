<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="ShortCourseReg.MainPage" %>

<%@ Register Src="~/Items.ascx" TagPrefix="uc1" TagName="Items" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%--<asp:Panel ID="Panel1" runat="server" Width="2000px">
                <%--<uc1:Items ID="Items1" runat="server" />
                <uc1:Items runat="server" ID="Items" />
                <uc1:Items runat="server" ID="Items1" />
            </asp:Panel>--%>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="ItemID" DataSourceID="SqlDataSource1">
               <ItemTemplate>
                   ItemID:
                   <asp:Label ID="ItemIDLabel" runat="server" Text='<%# Eval("ItemID") %>' />
                   <br />
                   ItemName:
                   <asp:Label ID="ItemNameLabel" runat="server" Text='<%# Eval("ItemName") %>' />
                   <br />
                   ItemDescription:
                   <asp:Label ID="ItemDescriptionLabel" runat="server" Text='<%# Eval("ItemDescription") %>' />
                   <br />
                   ItemCategory:
                   <asp:Label ID="ItemCategoryLabel" runat="server" Text='<%# Eval("ItemCategory") %>' />
                   <br />
                   ItemCreator:
                   <asp:Label ID="ItemCreatorLabel" runat="server" Text='<%# Eval("ItemCreator") %>' />
                   <br />
                   <br />

               </ItemTemplate>
            </asp:DataList>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ItemID], [ItemName], [ItemDescription], [ItemCategory], [ItemCreator] FROM [Items]"></asp:SqlDataSource>

        </div>
    </form>
</body>
</html>

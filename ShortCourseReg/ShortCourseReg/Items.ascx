<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Items.ascx.cs" Inherits="ShortCourseReg.Items" %>
<div style="width:100px;">
<div><asp:Image ID="Item_Image" runat="server" Height="269px" Width="283px" ImageAlign="Middle" ImageUrl="~/images/20140209_225039.jpg" /></div>
<br />
<div>
    <asp:Label ID="Name" runat="server" Text="Titel: "></asp:Label>
    <asp:Label ID="Name_Text" runat="server" Text=""></asp:Label>
    <br />
    <asp:Label ID="Short_Des" runat="server" Text="Bref Descreption: "></asp:Label>
    <asp:Label ID="Short_Des_Text" runat="server" Text=""></asp:Label>
    <br />
    <asp:Button ID="More" runat="server" Text="More" Width="283px" />
</div>
</div>


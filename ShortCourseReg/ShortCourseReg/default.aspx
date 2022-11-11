<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ShortCourseReg._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Login ID="Login1" runat="server" BackColor="#E3EAEB" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" Height="187px" TextLayout="TextOnTop" Width="372px" OnAuthenticate="Login1_Authenticate">
                <InstructionTextStyle Font-Italic="True" ForeColor="Black" Font-Size="2em"/>
                <LoginButtonStyle BackColor="White" BorderColor="#C5BBAF" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="1.5em" ForeColor="#1C5E55" />
                <TextBoxStyle Font-Size="0.8em" Width="200px"/>
                <TitleTextStyle BackColor="#1C5E55" Font-Bold="True" Font-Size="2em" ForeColor="White" />
            </asp:Login>
        </div>
    </form>
</body>
</html>

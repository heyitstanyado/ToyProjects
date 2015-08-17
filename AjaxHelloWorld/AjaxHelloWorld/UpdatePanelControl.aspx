<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdatePanelControl.aspx.cs" Inherits="AjaxHelloWorld.UpdatePanelControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Panel</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <asp:UpdatePanel runat="server" ID="UpdatePanel" UpdateMode="Conditional">
            <Triggers>
                <asp:AsyncPostBackTrigger runat="server" ControlID="UpdateButton2" EventName="Click" />
            </Triggers>
            <ContentTemplate>
                <asp:Label runat="server" ID="DateTimeLabel1" />
                <asp:Button runat="server" ID="UpdateButton1" OnClick="UpdateButton_Click" Text="Update 1" />
            </ContentTemplate>
       </asp:UpdatePanel>

        <asp:UpdatePanel runat="server" ID="UpdatePanel1" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:Label runat="server" ID="DateTimeLabel2" />
                <asp:Button runat="server" ID="UpdateButton2" OnClick="UpdateButton_Click" Text="Update 2" />

            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>

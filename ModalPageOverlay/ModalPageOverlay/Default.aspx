<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ModalPageOverlay._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="Stylesheet" type="text/css" />

    <script src="Scripts/jquery-1.7.1.js" type="text/javascript"></script>

</head>
<body>

    <script type="text/javascript">
        $(document).ready(function () {


            //$("#test").click(function () {
            //    $("div").removeClass("invisible");
            //});

            function showOverlay() {
                $("div").removeClass("invisible");
            }

            //$("#test").click(showOverlay);

        });

        function showOverlay() {
            $("div").removeClass("invisible");
        };
    </script>


    <div id="overlayDIV" runat="server" class="overlay invisible"></div>

    <div id="modalDIV" runat="server" class="modal invisible">
        <br />
        <br />
        <img src="Images/loading_circle.gif" />
        <br />
        <br />
        Loading please wait
    </div>

    <div>
        I'm a page, hear me roar.
        <br />
        <%--         <asp:Button ID="btnGetReport" runat="server" ToolTip="Click to run report" Text="Get Report" OnClick="btnGetReport_Click" />--%>
        <form runat="server">
            <asp:Button ID="btnGetReport" runat="server" Text="Turn on modal overlay" OnClientClick="showOverlay()" OnClick="Unnamed_Click" />
        </form>
        <br />

     <%--   <button id="test" onclick="showOverlay()">Toggle Modal On</button>--%>
    </div>

</body>
</html>

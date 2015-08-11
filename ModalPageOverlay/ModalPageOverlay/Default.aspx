<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ModalPageOverlay._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="Stylesheet" type="text/css"/>
    <script src="Scripts/jquery-1.7.1.intellisense.js" type="text/javascript"></script>
    <script src ="Scripts/jquery-1.7.1.js" type="text/javascript"></script>
   
</head>
<body>

    <script type="text/javascript">
        $(document).ready(function () {
            $("button").click(function () {
                $("div").removeClass("invisible");
            });
        });
    </script>


        <div class="overlay invisible"></div>
        <div class="modal invisible">I'm the modal window!</div>
        <div>
            I'm a page, hear me roar. <br />

           <%-- <asp:Button runat="server" Text="Turn on modal overlay" OnClick="Unnamed_Click" />--%>
            <br />

            <button onclick ="">Toggle Modal On</button>
        </div>

</body>
</html>

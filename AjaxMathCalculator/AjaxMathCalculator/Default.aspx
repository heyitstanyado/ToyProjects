<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AjaxMathCalculator._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script src="Scripts/jquery-1.7.1.min.js" type="text/javascript">
       
        var xmlhttp = new XMLHttpRequest(); 

        xmlhttp.onreadystatechange = function(){
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
            {
                document.getElementById("myDiv").innerHTML = xmlhttp.responseText;
            }   
       }

        xmlhttp.open("GET", "default.aspx", true);
        xmlhttp.send();



    </script>
</head>
<body>


    <form id="form1" runat="server">
        <asp:ScriptManager ID="MainScriptManager" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="pn1HelloWorld" runat="server">
            <ContentTemplate>
                <asp:Label runat="server" ID="lblHelloWorld" Text="Click the button!"></asp:Label>
                <br /><br />
                <asp:Button runat="server" ID="btnHelloWorld" OnClick="btnHelloWorld_Click" Text="Update label!" />
            </ContentTemplate>
        </asp:UpdatePanel>




      <%-- Pure HTML--%>
<%--        <div>
            <input type="text" id="num1" onblur="addThis()" />
            +
            <input type="text" id="num2" onblur="addThis()" />
            =
            <label type="text" id="sum"></label>

        </div>--%>


        <%-- ASP elements--%>
        <%--        <div>\
            <asp:TextBox runat="server"></asp:TextBox>
            

        </div>--%>
    </form>
</body>
</html>

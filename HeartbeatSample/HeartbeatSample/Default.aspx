<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HeartbeatSample._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.7.1.min.js" type="text/javascript"></script>
    <script>
        $(document).ready(function() {        
            setHeartbeat();
            var textName = $("#txtName").val();
            var labelTest = $("#lblTest").text();
            alert(labelTest);

        });



        function setHeartbeat() {
      
            setTimeout("heartbeat()", 5000); //5 sec
        }

        function heartbeat() {
          
            $.get(
                "/ImStillAlive.aspx",
                { name: "Tanya"
                },
                function (data) {
                    alert(data);
   
                    setHeartbeat();
                }
            );
        }
        
    </script>
</head>
<body>
    <form id="form1" runat="server">

            

        <div>
            An alert should popup every 5 seconds. 
            <br />
            <asp:TextBox runat="server" ID="txtName" Text="Jane Doe"></asp:TextBox>
            <br />
            <asp:Label runat="server" ID="lblTest" Text="I'm a label"></asp:Label>
        </div>
    </form>
</body>
</html>

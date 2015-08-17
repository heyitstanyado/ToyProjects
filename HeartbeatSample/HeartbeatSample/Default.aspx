<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HeartbeatSample._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.7.1.min.js" type="text/javascript"></script>
    <script>
        $(document).ready(function() {        
            setHeartbeat();
        });



        function setHeartbeat() {
      
            setTimeout(heartbeat, 3000); //3 sec
        }

        function heartbeat() {
          
            $.get(
                "/ImStillAlive.aspx",
                null,
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

        <div class="heartbeat">&hearts;</div>

        <div>
        </div>
    </form>
</body>
</html>

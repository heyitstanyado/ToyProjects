<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SelectRadioListViaJquery._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script type="text/javascript">
        //Final copy
        //var reportType = $("[id$=rblFormat] input:checked").val();

        //if (reportType == "HTML") {
        //    $("div").removeClass("invisible");
        //}
        //else if (reportType == "Excel") {

        //}




        //$("#rblFormat input").click(
        //    function () {
        //        alert("hey " + $("#rblFormat input").index(this));
        //    });


        //$('#rblFormat input').click(function () {
        //    alert($('#rblFormat input').index(this));
        //});

        function onSubmit() {
            //function showOverlay() {
            //    var reportTypes = $("[id$=rblFormat] input:checked").val();// input:checked
            //    alert("this is the report type: " + reportTypes);


            //    // $("div").removeClass("invisible");
            //    //Implemented
            //};


            
            //JQUERY
            

            var radio2 = $("#rblFormat input:checked").val();
            alert("you picked: " + radio2);

         
            //JAVASCRIPT

            //var radiolist = document.getElementById("<%=rblFormat.ClientID%>");
            //var radio = radiolist.getElementsByTagName("input");
            //var radio = $("#rblFormat input");

            //var isChecked = false;
            //var checked;

            //for (var i = 0; i < radio.length; i++)
            //{
            //    if (radio[i].checked )
            //    {
            //        isChecked = true;
            //        var checked = radio[i].value;
            //    }
            //}


            //alert("you clicked submit: " + checked);
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:RadioButtonList ID="rblFormat" runat="server" RepeatDirection="Horizontal" ToolTip="Select format to view output data">
                <asp:ListItem Value="HTML" Text="HTML" />
                <asp:ListItem Value="Excel" Text="Excel" />
            </asp:RadioButtonList>

            <asp:Button ID="submit" runat="server" Text="Submit" OnClientClick="onSubmit()" />
        </div>
    </form>
</body>
</html>

<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>   
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <br />
        <ajaxToolkit:Rating ID="Rating1" runat="server" StarCssClass="star" WaitingStarCssClass="wait"
            FilledStarCssClass="fill" EmptyStarCssClass="wait">
        </ajaxToolkit:Rating>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Button ID="Button1" runat="server"  Text="store" 
           />
    </div>
        <table style="border:1px solid #888">
            <tr><th>Get Rate value from database</th></tr>
            <tr><td>
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Id of rating(in Digit) "></asp:TextBox>
                <asp:Button ID="Button2" runat="server" Text="Get" /></td></tr>
            <tr><td>
                <ajaxToolkit:Rating ID="Rating2" runat="server" StarCssClass="star" WaitingStarCssClass="wait"
                    FilledStarCssClass="fill" ReadOnly="true" EmptyStarCssClass="wait">
                </ajaxToolkit:Rating>
            </td></tr>
        </table>
    </form>
</body>
</html>

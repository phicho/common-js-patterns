<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModulePattern.aspx.cs" Inherits="TestWebJavascript.ModulePattern" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Module Pattern</title>
    <script>
        var Calculator = function(element) {
            var domElement = document.getElementById(element);
            return {
                add: function(a,b) {
                    return domElement.innerHTML= a + b;
                }  
            };
        }
    </script>
    <script>
        window.onload = function() {
            var calc = new Calculator("equal");
            calc.add(12, 31);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="equal">
    
    </div>
    </form>
</body>
</html>

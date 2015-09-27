<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RevealingModulePattern.aspx.cs" Inherits="TestWebJavascript.RevealingModulePattern" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Revealing Module Pattern</title>
</head>
    <script>
        
    </script>
    <script>
        window.onload = function (parameters) {
            calc.add(33, 22);
        }
    </script>
<body>
    <form id="form1" runat="server">
    <div id="equal">
    <script>
        var calc = function (element) {
            //private members 
            var domElement = document.getElementById(element),
                add = function(a, b) {
                    return domElement.innerHTML = a + b;
                };
            // public members
            return {
                add: add,
            };
        }("equal");
    </script>
    </div>
    </form>
</body>
</html>

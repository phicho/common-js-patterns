<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RevealingPrototypePattern.aspx.cs" Inherits="TestWebJavascript.RevealingPrototypePattern" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Revealing Prototype Pattern</title>
</head>
    <script>
        window.onload = function(parameters) {
            var calc = new Calculator("equal");
            calc.add(4, 3);
        }
    </script>
    <script>
        var Calculator = function(element) {
            this.domElement = document.getElementById(element);
        };
        Calculator.prototype = function () {
            var add = function(a, b) {
                return this.domElement.innerHTML = a + b;
            };
            return {
                add:add,
            };
        }();
    </script>
<body>
    <form id="form1" runat="server">
    <div id="equal">
    
    </div>
    </form>
</body>
</html>

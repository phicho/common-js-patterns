<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrototypeDemo.aspx.cs" Inherits="TestWebJavascript.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Prototype Demo</title>
    <script>
        // creating a namespace 
        var Namespace = Namespace || {};
        //creating an object 
        Namespace.Calculator = function (id) {
            // put here all variable initializations 
            // when you crate a new istance of this object all variables that are define here will be unique for that object
            // functions in the prototype part are shared for every instance 
            //every new has its own state of the variables 
            this.element = document.getElementById(id);
        };
        Namespace.Calculator.prototype = {
            //all instances will be having the same function definictions 
            //they are shared between all instances 
            add: function(a,b) {
                return this.element.innerHTML = a + b;
            }
        };
        window.onload = function () {
            Namespace.Calculator.prototype.add = function (a, b) {
                return this.element.innerHTML = a - b;
            };
            var calc = new Namespace.Calculator("equal");
            calc.add(5, 15);
        };
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="equal">
    
    </div>
        <br/>
        ------------
        <br/>
        <div id="test"></div>
    </form>
</body>
</html>

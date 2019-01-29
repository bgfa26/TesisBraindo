<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginTest.aspx.cs" Inherits="Braindo.View.IndexModule.LoginTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>PROBANDO INICIO DE SESION</h1>
        <label>Email</label>
        <asp:TextBox runat="server" id="email">
        </asp:TextBox>
        <label>Password</label>
        <asp:TextBox runat="server" id="password">
        </asp:TextBox>
        <asp:Button ID="btnChangeData" runat="server" Text="Iniciar Sesion" OnClick = "btnLogin_Click" ></asp:Button>
    </div>
    </form>
</body>
</html>

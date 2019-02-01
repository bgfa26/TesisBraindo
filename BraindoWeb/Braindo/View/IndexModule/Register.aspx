<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Braindo.View.IndexModule.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>PROBANDO Registro</h1>
        <label>Cedula</label>
        <asp:TextBox runat="server" id="cedula">
        </asp:TextBox>
        <label>Correo</label>
        <asp:TextBox runat="server" id="correo">
        </asp:TextBox>
        <label>Password</label>
        <asp:TextBox runat="server" id="pass">
        </asp:TextBox>
        <label>Primer Nombre</label>
        <asp:TextBox runat="server" id="primerNombre">
        </asp:TextBox>
        <label>Segundo Nombre</label>
        <asp:TextBox runat="server" id="segundoNombre">
        </asp:TextBox>
        <label>Primer Apellido</label>
        <asp:TextBox runat="server" id="primerApellido">
        </asp:TextBox>
        <label>Segundo Apellido</label>
        <asp:TextBox runat="server" id="segundoApellido">
        </asp:TextBox>
        <label>Numero de Registro</label>
        <asp:TextBox runat="server" id="registro">
        </asp:TextBox>
        <label>Numero de Registro</label>
        <input runat="server" id="date" type="date" required="required"/>

        <asp:Button ID="btnChangeData" runat="server" Text="Iniciar Sesion" OnClick = "btnRegister_Click" ></asp:Button>
    </div>
    </form>
</body>
</html>

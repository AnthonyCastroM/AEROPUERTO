<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AEROPUERTO.VISTAS.Login" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Login - Aeropuerto</title>
    <link href="CSS/login.css" rel="stylesheet" />
</head>
<body>
    <div class="main">
        <input type="checkbox" id="chk" aria-hidden="true">

        <div class="ingresar">
            <form id="form1" runat="server">

                <label for="chk" aria-hidden="true">Ingreso</label>
                <asp:TextBox CssClass="input" ID="tusuario" runat="server" placeholder="Correo"></asp:TextBox>
                <asp:TextBox ID="tclave" type="Password" runat="server"></asp:TextBox>
                <asp:Button ID="bingresar" class="button" runat="server" Text="Ingresar" OnClick="bingresar_Click" />
                <asp:Label ID="lmensaje" runat="server" style="display: block; justify-content: center; text-align:center; " ForeColor="Red"></asp:Label>
            </form>

        </div>
    </div>
</body>
</html>


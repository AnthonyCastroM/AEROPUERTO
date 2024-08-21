<%@ Page Title="Inicio - Aeropuerto" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="AEROPUERTO.VISTAS.Inicio" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body {
            margin: 0;
            padding: 0;
            background-image: url('IMAGENES/inicio.jpg');
            background-size: cover;   /* Asegura que la imagen cubra toda la pantalla */
            background-repeat: no-repeat;
            background-position: center;  /* Centra la imagen en la pantalla */
            background-attachment: fixed;  /* Hace que la imagen se quede fija al hacer scroll */
            height: 100vh;  /* Asegura que la altura del fondo cubra toda la pantalla */
            width: 100vw;   /* Asegura que la anchura del fondo cubra toda la pantalla */
        }
    </style>
</asp:Content>
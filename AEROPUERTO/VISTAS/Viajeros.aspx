<%@ Page Title="Viajeros - Aeropuerto" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="Viajeros.aspx.cs" Inherits="AEROPUERTO.VISTAS.Viajeros" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1>VIAJEROS</h1>

        <div class="col-6 mx-auto mt-3">

            <asp:GridView ID="GridViewViajeros" class="table table-bordered border-primary" runat="server" AutoGenerateColumns="True"></asp:GridView>
        </div>


    </div>
    <div class="accordion col-6 m-auto" id="accordionExample">
        <div class="accordion-item">
            <h2 class="accordion-header" id="headingOne">
                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                    ACCIONES
                </button>
            </h2>
            <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">ID VIAJERO:</span>
                        <asp:TextBox ID="TID" runat="server" type="number" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1"></asp:TextBox>
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">NOMBRE:</span>
                        <asp:TextBox ID="TNOMBRE" runat="server" type="text" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1"></asp:TextBox>
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">PRIMER APELLIDO:</span>
                        <asp:TextBox ID="TAPELLIDO1" runat="server" type="text" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1"></asp:TextBox>
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">SEGUNDO APELLIDO:</span>
                        <asp:TextBox ID="TAPELLIDO2" runat="server" type="text" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1"></asp:TextBox>
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">CORREO:</span>
                        <asp:TextBox ID="TCORREO" runat="server" type="email" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1"></asp:TextBox>
                    </div>

                                        <div class="d-grid gap-2">
                        <asp:Button ID="Button1" runat="server" type="button" class="btn btn-primary" Text="AGREGAR" OnClick="Button1_Click"/>
                    </div>
                                        <div class="d-grid gap-2 my-1">
                        <asp:Button ID="Editar" runat="server" type="button" class="btn btn-warning" Text="EDITAR" OnClick="Editar_Click1" />
                    </div>
                                        <div class="d-grid gap-2 my-1">
                        <asp:Button ID="Eliminar" runat="server" type="button" class="btn btn-danger mb-1" Text="ELIMINAR" OnClick="Eliminar_Click1"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

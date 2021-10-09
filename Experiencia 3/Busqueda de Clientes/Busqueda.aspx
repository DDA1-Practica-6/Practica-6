<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Busqueda.aspx.cs" Inherits="PRACTICA_6.Busqueda" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {}
        .auto-style2 {}
        .auto-style3 {}
        .auto-style4 {}
        .nuevoEstilo1 {
            background-color: #99FF99;
        }
        .nuevoEstilo2 {
            color: #FFFF99;
            background-color: #000000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       

        <div class="nuevoEstilo1">

            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" CssClass="nuevoEstilo2" Font-Size="XX-Large" Text="        Búsqueda de CLIENTES"></asp:Label>
            <br />
            <br />
            <br />
            Codigo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click1" Text="Buscar" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnLimpiar" runat="server" OnClick="btnLimpiar_Click" Text="Limpiar" />
            <br />
            <br />
            Nombres&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtNombres" runat="server" CssClass="auto-style1" ReadOnly="True" Width="242px"></asp:TextBox>
            <br />
            Direccion&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtDireccion" runat="server" CssClass="auto-style2" ReadOnly="True" Width="245px"></asp:TextBox>
            <br />
            <br />
            Telefono&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtTelefono" runat="server" ReadOnly="True"></asp:TextBox>
            <br />
            E-Mail&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtMail" runat="server" CssClass="auto-style3" ReadOnly="True" Width="248px"></asp:TextBox>
            <br />
            Edad&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtEdad" runat="server" CssClass="auto-style4" ReadOnly="True" Width="82px"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnMostrar" runat="server" OnClick="btnMostrar_Click" Text="Mostrar Rodos los Clientes" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <br />
            <br />
            <asp:Label ID="lblResult" runat="server" Text="Label"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>

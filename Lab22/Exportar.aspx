<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Exportar.aspx.vb" Inherits="Lab22.Exportar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 411px;
            left: 42px;
            width: 365px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 1410px">
    
        <asp:Panel ID="Panel1" runat="server" BackColor="Silver" Height="85px">
            <asp:Label ID="lblAlumnos1" runat="server" Text="Seleccionar asignatura a exportar:" style="position:absolute; top: 114px; left: 32px;" Font-Bold="True" Font-Size="X-Large"></asp:Label>
            <asp:Label ID="lblAlumnos0" runat="server" Font-Bold="True" Font-Size="X-Large" style="position:absolute; top: 62px; left: 565px;" Text="EXPORTAR TAREAS GENÉRICAS"></asp:Label>
            <asp:Label ID="lblAlumnos2" runat="server" Font-Bold="True" Font-Size="X-Large" style="position:absolute; top: 24px; left: 707px;" Text="PROFESOR"></asp:Label>
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" style="position:absolute; top: 44px; left: 1344px;" Font-Size="X-Large">Cerrar Sesión</asp:LinkButton>
        </asp:Panel>
    
    </div>
        <asp:DropDownList ID="DropDownList1" runat="server" style="position:absolute; top: 157px; left: 53px; height: 16px; width: 136px;" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Asignaturas" DataValueField="Asignaturas">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HADS-12-TareasConnectionString %>" SelectCommand="select gc.codigoasig as Asignaturas from profesoresgrupo as pg inner join gruposclase as gc on pg.codigogrupo = gc.codigo where pg.email=@profesor">
            <SelectParameters>
                <asp:SessionParameter Name="profesor" SessionField="correo" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" Text="Exportar XML" style="position:absolute; top: 299px; left: 36px; height: 51px; width: 160px;" />
        <asp:Button ID="Button2" runat="server" Text="Exportar XML(JSON)" style="position:absolute; top: 299px; left: 229px; height: 51px; width: 160px;" />
        <asp:HyperLink ID="HyperLink1" style="position:absolute; top: 457px; left: 44px; width: 116px; height: 14px;" runat="server" NavigateUrl="~/Profesor.aspx">Menu Profesor</asp:HyperLink>
       
        <asp:Panel ID="Panel2" style="position:absolute; top: 200px; left: 573px;" runat="server">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Codigo" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="codigo" HeaderText="codigo" ReadOnly="True" SortExpression="codigo" />
                    <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                    <asp:BoundField DataField="hestimadas" HeaderText="hestimadas" SortExpression="hestimadas" />
                    <asp:CheckBoxField DataField="explotacion" HeaderText="explotacion" SortExpression="explotacion" />
                    <asp:BoundField DataField="tipotarea" HeaderText="tipotarea" SortExpression="tipotarea" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HADS-12-TareasConnectionString %>" SelectCommand="SELECT * FROM [TareasGenericas] WHERE ([CodAsig] = @CodAsig)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="CodAsig" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:Panel>
        <p>
        <asp:Label ID="lblCorrecto" runat="server" Font-Bold="True" ForeColor="#CC3300" CssClass="auto-style1"></asp:Label>
        </p>
    </form>
</body>
</html>

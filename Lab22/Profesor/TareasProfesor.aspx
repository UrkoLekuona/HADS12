<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TareasProfesor.aspx.vb" Inherits="Lab22.TareasProfesor" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" BackColor="Silver" Height="85px">
            <asp:Label ID="lblAlumnos1" runat="server" Text="Seleccionar asignaturas:" style="position:absolute; top: 114px; left: 32px;" Font-Bold="True" Font-Size="X-Large"></asp:Label>
            <asp:Label ID="lblAlumnos0" runat="server" Font-Bold="True" Font-Size="X-Large" style="position:absolute; top: 62px; left: 565px;" Text="GESTIÓN DE TAREAS GENÉRICAS"></asp:Label>
            <asp:Label ID="lblAlumnos2" runat="server" Font-Bold="True" Font-Size="X-Large" style="position:absolute; top: 24px; left: 707px;" Text="PROFESOR"></asp:Label>
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" style="position:absolute; top: 44px; left: 1344px;" Font-Size="X-Large">Cerrar Sesión</asp:LinkButton>
        </asp:Panel>
        <div>
        </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:DropDownList ID="DropDownList1" style="position:absolute; top: 171px; left: 46px; width: 481px;" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="codigoasig" DataValueField="codigoasig">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HADS-12-TareasConnectionString %>" SelectCommand="select gc.codigoasig from profesoresgrupo as pg inner join gruposclase as gc on pg.codigogrupo = gc.codigo where pg.email=@profesor">
                <SelectParameters>
                    <asp:SessionParameter Name="profesor" SessionField="correo" />
                </SelectParameters>
                </asp:SqlDataSource>
            </ContentTemplate>       
        </asp:UpdatePanel>      
        <asp:Button ID="btnIns" style="position:absolute; top: 217px; left: 64px; height: 67px; width: 210px;" runat="server" Text="Insertar Nueva Tarea" />
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>
                <asp:GridView ID="GridView1" style="position:absolute; top: 322px; left: 55px; width: 362px; right: 1140px;" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="Codigo" DataSourceID="SqlDataSource1" GridLines="Horizontal">
                            <Columns>
                                <asp:CommandField ShowEditButton="True" />
                                <asp:BoundField DataField="Codigo" HeaderText="Codigo" ReadOnly="True" SortExpression="Codigo" />
                                <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                                <asp:BoundField DataField="CodAsig" HeaderText="CodAsig" SortExpression="CodAsig" />
                                <asp:BoundField DataField="HEstimadas" HeaderText="HEstimadas" SortExpression="HEstimadas" />
                                <asp:CheckBoxField DataField="Explotacion" HeaderText="Explotacion" SortExpression="Explotacion" />
                                <asp:BoundField DataField="TipoTarea" HeaderText="TipoTarea" SortExpression="TipoTarea" />
                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#333333" />
                            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="White" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#487575" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#275353" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:HADS-12-TareasConnectionString %>" DeleteCommand="DELETE FROM [TareasGenericas] WHERE [Codigo] = @original_Codigo AND (([Descripcion] = @original_Descripcion) OR ([Descripcion] IS NULL AND @original_Descripcion IS NULL)) AND (([CodAsig] = @original_CodAsig) OR ([CodAsig] IS NULL AND @original_CodAsig IS NULL)) AND (([HEstimadas] = @original_HEstimadas) OR ([HEstimadas] IS NULL AND @original_HEstimadas IS NULL)) AND (([Explotacion] = @original_Explotacion) OR ([Explotacion] IS NULL AND @original_Explotacion IS NULL)) AND (([TipoTarea] = @original_TipoTarea) OR ([TipoTarea] IS NULL AND @original_TipoTarea IS NULL))" InsertCommand="INSERT INTO [TareasGenericas] ([Codigo], [Descripcion], [CodAsig], [HEstimadas], [Explotacion], [TipoTarea]) VALUES (@Codigo, @Descripcion, @CodAsig, @HEstimadas, @Explotacion, @TipoTarea)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [TareasGenericas] WHERE ([CodAsig] = @CodAsig)" UpdateCommand="UPDATE [TareasGenericas] SET [Descripcion] = @Descripcion, [CodAsig] = @CodAsig, [HEstimadas] = @HEstimadas, [Explotacion] = @Explotacion, [TipoTarea] = @TipoTarea WHERE [Codigo] = @original_Codigo AND (([Descripcion] = @original_Descripcion) OR ([Descripcion] IS NULL AND @original_Descripcion IS NULL)) AND (([CodAsig] = @original_CodAsig) OR ([CodAsig] IS NULL AND @original_CodAsig IS NULL)) AND (([HEstimadas] = @original_HEstimadas) OR ([HEstimadas] IS NULL AND @original_HEstimadas IS NULL)) AND (([Explotacion] = @original_Explotacion) OR ([Explotacion] IS NULL AND @original_Explotacion IS NULL)) AND (([TipoTarea] = @original_TipoTarea) OR ([TipoTarea] IS NULL AND @original_TipoTarea IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_Codigo" Type="String" />
                                <asp:Parameter Name="original_Descripcion" Type="String" />
                                <asp:Parameter Name="original_CodAsig" Type="String" />
                                <asp:Parameter Name="original_HEstimadas" Type="Int32" />
                                <asp:Parameter Name="original_Explotacion" Type="Boolean" />
                                <asp:Parameter Name="original_TipoTarea" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Codigo" Type="String" />
                                <asp:Parameter Name="Descripcion" Type="String" />
                                <asp:Parameter Name="CodAsig" Type="String" />
                                <asp:Parameter Name="HEstimadas" Type="Int32" />
                                <asp:Parameter Name="Explotacion" Type="Boolean" />
                                <asp:Parameter Name="TipoTarea" Type="String" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="CodAsig" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Descripcion" Type="String" />
                                <asp:Parameter Name="CodAsig" Type="String" />
                                <asp:Parameter Name="HEstimadas" Type="Int32" />
                                <asp:Parameter Name="Explotacion" Type="Boolean" />
                                <asp:Parameter Name="TipoTarea" Type="String" />
                                <asp:Parameter Name="original_Codigo" Type="String" />
                                <asp:Parameter Name="original_Descripcion" Type="String" />
                                <asp:Parameter Name="original_CodAsig" Type="String" />
                                <asp:Parameter Name="original_HEstimadas" Type="Int32" />
                                <asp:Parameter Name="original_Explotacion" Type="Boolean" />
                                <asp:Parameter Name="original_TipoTarea" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
            </ContentTemplate>
        </asp:UpdatePanel>
        <p>
            <asp:Label ID="lblEntra" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>

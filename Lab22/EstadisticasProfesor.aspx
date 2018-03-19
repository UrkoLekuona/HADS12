<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="EstadisticasProfesor.aspx.vb" Inherits="Lab22.EstadisticasProfesor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" style="position:absolute; top: 159px; left: 46px;" Height="500px" Width="1500px">
                <Series>
                    <asp:Series Name="Series1" XValueMember="CodTarea" YValueMembers="HorasReales">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                        <AxisX IsStartedFromZero="False" TextOrientation="Horizontal" Interval="1">
                        </AxisX>
                        <AxisX2 IsStartedFromZero="False" TextOrientation="Horizontal" Interval="1">
                        </AxisX2>
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
            <asp:Panel ID="Panel1" runat="server" BackColor="Silver" Height="85px">
                <asp:Label ID="lblAlumnos1" runat="server" Font-Bold="True" Font-Size="X-Large" style="position:absolute; top: 114px; left: 32px;" Text="Horas medias reales de dedicación a cada tarea"></asp:Label>
                <asp:Label ID="lblAlumnos0" runat="server" Font-Bold="True" Font-Size="X-Large" style="position:absolute; top: 58px; left: 609px;" Text="GESTIÓN DE ESTADÍSTICAS"></asp:Label>
                <asp:Label ID="lblAlumnos2" runat="server" Font-Bold="True" Font-Size="X-Large" style="position:absolute; top: 24px; left: 707px;" Text="PROFESOR"></asp:Label>
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="X-Large" style="position:absolute; top: 44px; left: 1344px;">Cerrar Sesión</asp:LinkButton>
            </asp:Panel>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HADS-12-TareasConnectionString %>" SelectCommand="Select AVG(HReales) as HorasReales, CodTarea from EstudiantesTareas Group by CodTarea"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>

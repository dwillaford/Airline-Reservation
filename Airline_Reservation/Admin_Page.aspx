<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin_Page.aspx.cs" Inherits="Airline_Reservation.Admin_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    Update/Add changes to the schedule<asp:GridView ID="GV_Grid" runat="server" AutoGenerateColumns="False" Width="471px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" ForeColor="Black" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="FIID" DataSourceID="AirlineData" AutoGenerateEditButton="True">
    <Columns>
        <asp:BoundField DataField="FIID" HeaderText="FIID" ReadOnly="True" SortExpression="FIID" />
        <asp:BoundField DataField="FlightDate" HeaderText="FlightDate" SortExpression="FlightDate" />
        <asp:BoundField DataField="Departure" HeaderText="Departure" SortExpression="Departure" />
        <asp:BoundField DataField="Arrival" HeaderText="Arrival" SortExpression="Arrival" />
        <asp:BoundField DataField="Aircraft" HeaderText="Aircraft" SortExpression="Aircraft" />
        <asp:BoundField DataField="NetFare" HeaderText="NetFare" SortExpression="NetFare" />
    </Columns>
    <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
    <RowStyle BackColor="White" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
<asp:SqlDataSource ID="AirlineData" runat="server" ConnectionString="<%$ ConnectionStrings:Airline ReservationConnectionString3 %>" SelectCommand="SELECT * FROM [Flight_Schedules]" UpdateCommand="UPDATE [Flight_Schedules] Set [FlightDate]=@FlightDate, [Departure]=@Departure, [Arrival]=@Arrival, [Aircraft]=@Aircraft, [NetFare]=@NetFare Where [FIID]=@FIID" DeleteCommand="DELETE from [Flight_Schedules] where [FIID]=@FIID"></asp:SqlDataSource>
    <br />
</asp:Content>

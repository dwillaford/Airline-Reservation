<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Flights.aspx.cs" Inherits="Airline_Reservation.Flights" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p style="text-decoration: underline">
    <strong>One way trips</strong><asp:SqlDataSource ID="Flight_Reservation" runat="server" ConnectionString="<%$ ConnectionStrings:Airline ReservationConnectionString %>" SelectCommand="SELECT Route.Airport, Route.Destination FROM Route INNER JOIN AirFare ON Route.RtID = AirFare.Route INNER JOIN Flight_Schedules ON AirFare.AfID = Flight_Schedules.NetFare"></asp:SqlDataSource>
    </p>
<p>
    Flying out of:<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Flight_Reservation" DataTextField="Airport" DataValueField="Airport" Height="25px" Width="133px" BackColor="Silver" Font-Bold="True" ForeColor="Black">
    </asp:DropDownList>
</p>

<p>
    Flying to:<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="Flight_Reservation" DataTextField="Destination" DataValueField="Destination" Height="25px" Width="133px" BackColor="Silver" Font-Bold="True" ForeColor="Black">
    </asp:DropDownList>
</p>
<p>
    <asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="193px"></asp:TextBox>
&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Date" Width="74px" BackColor="Silver" BorderColor="Black" BorderStyle="Double" Font-Bold="True" ForeColor="Black" />
&nbsp;<asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False">
    </asp:Calendar>
   <asp:SqlDataSource ID="Flight_Reservation_Date" runat="server" ConnectionString="<%$ ConnectionStrings:Airline ReservationConnectionString %>" SelectCommand="SELECT Flight_Schedules.FlightDate, Flight_Schedules.Departure, Flight_Schedules.Arrival FROM Route INNER JOIN AirFare ON Route.RtID = AirFare.Route INNER JOIN Flight_Schedules ON AirFare.AfID = Flight_Schedules.NetFare">
        <FilterParameters>
            <asp:ControlParameter ControlID="Calendar1" Name="Calendar1" PropertyName="SelectedDate" Type="DateTime"/>
              <asp:ControlParameter ControlID="DropDownList1" Name="DropDownList1" PropertyName="SelectedItem" Type="String"/>
            <asp:ControlParameter ControlID="DropDownList2" Name="DropDownList2" PropertyName="SelectedItem" Type="String"/> 
        </FilterParameters>
    </asp:SqlDataSource>
</p>
    <asp:GridView ID="GV_Grid" runat="server" AutoGenerateColumns="False" Width="471px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" ForeColor="Black" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="Flight_Reservation_Date">
        <Columns>
            <asp:BoundField DataField="FlightDate" HeaderText="FlightDate" SortExpression="FlightDate" />
            <asp:BoundField DataField="Departure" HeaderText="Departure" SortExpression="Departure" />
            <asp:BoundField DataField="Arrival" HeaderText="Arrival" SortExpression="Arrival" />
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
<p>
    <%--breaks the code --%>
</p>
</asp:Content>

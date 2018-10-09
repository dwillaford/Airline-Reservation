<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Airline_Reservation.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>Contact Info</h2>
    <address>
        One Airport Way<br />
        Redmond, WA 98052-6399<br />
        <abbr title="Phone">P:</abbr>
        425.555.0100
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:Support@example.com">ITSupport@usairlines.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@usairlines.com</a>
    </address>
</asp:Content>
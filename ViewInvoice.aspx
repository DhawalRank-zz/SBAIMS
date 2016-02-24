<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewInvoice.aspx.cs" Inherits="SBAIMS.ViewInvoice" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<%--<div id="viewinvoice">
            <h4 align="center">
                View Invoices according to:
            </h4>
            <br />
            <table class="table table-borderless table-responsive" align="center" style="width: 70%;">
                <tr>
                    <td width="15%">
                        <b>Invoice ID: </b>
                    </td>
                    <td width="25%">
                        <input id="Text22" type="text" class="form-control" runat="server" />
                    </td>
                    <td width="20%">
                    </td>
                    <td width="15%">
                        <b>Customer Name: </b>
                    </td>
                    <td width="25%">
                        <input id="Text23" type="text" class="form-control" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td width="15%">
                        <b>Invoice Date: </b>
                    </td>
                    <td width="25%">
                        <input id="Text24" type="text" class="form-control" runat="server" />
                    </td>
                    <td width="20%">
                    </td>
                    <td width="15%">
                        <b>Customer City: </b>
                    </td>
                    <td width="25%">
                        <input id="Text25" type="text" class="form-control" runat="server" />
                    </td>
                </tr>
            </table>
        </div>--%>

        <div>
        <table>
            <tr>
                <th>
                    &nbsp;
                </th>
                <th>
                    View Invoice
                    <br />
                    <br />
                </th>
            </tr>
            <tr>
                <th>
                    &nbsp
                </th>
                <th style="text-align: right">
                    <%-- <asp:Label Text="Invoice No : " ID="Label4" runat="server"></asp:Label>
                    <asp:Label Text="Invoice No : 15" ID="lblInvoiceNo" runat="server"></asp:Label>--%>
                    &nbsp;
                </th>
            </tr>
            <tr>
                <th style="text-align: left" width="250px">
                    Enter Invoice No:
                </th>
                <th style="text-align: left">
                    <asp:TextBox ID="txtInvoiceNo" Width="250" runat="server"></asp:TextBox>
                </th>
            </tr>
            <tr>
                <th style="text-align: left" width="250px">
                    Select Customer:
                </th>
                <th style="text-align: left">
                    <asp:DropDownList runat="server" ID="ddCustomerName" Width="250">
                    </asp:DropDownList>
                </th>
            </tr>
            <tr>
                <th style="text-align: left" width="250px">
                    Select Date:
                </th>
                <th style="text-align: left">
                    <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
                    <asp:CalendarExtender ID="CalendarExtender1" runat="server" Enabled="True" TargetControlID="txtDate" CssClass=" black">
                    </asp:CalendarExtender>
                </th>
            </tr>
            <tr>
                <th style="text-align: left" width="250px">
                    Enter City Name:
                </th>
                <th style="text-align: left">
                    <asp:TextBox ID="txtCityName" Width="250" runat="server"></asp:TextBox>
                </th>
            </tr>
            <tr>
                <th>
                    &nbsp;
                </th>
                <td>
                    <asp:Button BackColor="#000099" ForeColor="White" ID="btnSearch" runat="server" Text="Search"
                        OnClick="btnSearch_Click" />
                </td>
            </tr>
            <tr>
                <th>
                    &nbsp;
                </th>
                <th>
                    <asp:GridView ID="gvInvoice" runat="server" AutoGenerateColumns="False" CellPadding="4"
                        ForeColor="#333333" GridLines="None" Width="100%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField HeaderText="Invoice No" DataField="T001_INVOICEOD">
                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="300px" Height="75px" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="Customer Name" DataField="C_Name">
                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="300px" Height="75px" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="Total Rs" DataField="T001_TOTALRS">
                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="300px" Height="75px" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="Net Rs" DataField="T001_NETRS">
                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="300px" Height="75px" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Print">
                                <ItemTemplate>
                                    <asp:ImageButton ID="imgBtnPrint" runat="server" CausesValidation="False" Height="20px"
                                        ImageUrl="~/css/images/edit-icn.gif" Width="20px" CommandArgument='<%# Eval("T002_INVOICEBOOKID") %>'
                                        OnCommand="imgbtnDelete_Command" />
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="50px" />
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" Height="35px"
                            HorizontalAlign="Left" VerticalAlign="Middle" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" Height="90px" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    </asp:GridView>
                </th>
            </tr>
        </table>
        </div>


</asp:Content>

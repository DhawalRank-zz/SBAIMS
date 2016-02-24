<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostback="true" MasterPageFile="~/Site.Master"
    AutoEventWireup="true" CodeBehind="CreateInvoice.aspx.cs" Inherits="SBAIMS.CreateInvoice" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="createinvoice">
        <h3 align="center">
            Generate Invoice</h3>
        <div class="panel panel-primary" id="crinvoice" style="margin-left: 10px; margin-right: 10px;
            width: 85%;" align="left">
            <div class="panel-heading">
                <h4>
                    Fill the following fields to CREATE INVOICE.</h4>
            </div>
            <div class="panel-body">
                <table class="table table-borderless table-condensed" width="80%">
                    <tr>
                        <td align="right">
                            <asp:Label Font-Size="Medium" Text="Invoice No : " ID="Label4" runat="server"></asp:Label>
                            <asp:Label Font-Size="Medium" Text="Invoice No : 15" ID="lblInvoiceNo" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
                <table class="table table-borderless table-responsive table-condensed" width="80%">
                    <tr>
                        <td style="text-align: left; font-size: large; vertical-align: top;">
                            Select Date:
                        </td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtDate" Width="220px" autocomplete="off" CssClass="form-control"
                                runat="server"></asp:TextBox>
                            <asp:CalendarExtender ID="txtDate_CalendarExtender" CssClass="black" runat="server"
                                Enabled="True" TargetControlID="txtDate">
                            </asp:CalendarExtender>
                            <asp:RequiredFieldValidator ID="rfvuserid1" runat="server" BackColor="#FFDFDF" ControlToValidate="txtDate"
                                ErrorMessage="Please Enter Date" ForeColor="#A40000" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left; font-size: large">
                            Select Customer:
                        </td>
                        <td style="text-align: left">
                            <asp:DropDownList runat="server" CssClass="form-control" ID="ddCustomerName" Width="250px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left; font-size: large">
                            Select Book:
                        </td>
                        <td style="text-align: left">
                            <asp:DropDownList ID="ddBookName" CssClass="form-control" runat="server" Width="250px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left; font-size: large; vertical-align: top;">
                            Enter Book Quantity:
                        </td>
                        <td style="text-align: left">
                            <asp:TextBox runat="server" autocomplete="off" CssClass="form-control" ID="txtQty"
                                Width="250px" EnableViewState="true" CausesValidation="false" OnTextChanged="txtQty_TextChanged"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BackColor="#FFDFDF"
                                ControlToValidate="txtQty" ErrorMessage="Please Enter Quantity" ForeColor="#A40000"
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <%-- <tr>
                <th style="text-align: left" width="250px">
                    Your Total Price:
                </th>
                <th style="text-align: left">
                    <asp:Label Text="100 rs" ID="lblTotalRs" runat="server"></asp:Label>
                </th>
            </tr>--%>
                    <%--<asp:UpdatePanel runat="server">
            </asp:UpdatePanel>--%>
                    <tr>
                        <td style="text-align: left" width="250px">
                            &nbsp
                        </td>
                        <td style="text-align: left">
                            <asp:Button ID="btnAddInvoice" CssClass="btn btn-primary btn-sm" Width="150px" runat="server"
                                Text="Add More Book" OnClick="btnAddInvoice_Click" Font-Size="Medium" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <asp:GridView ID="gvPhotoAlbum" CssClass="table table-bordered" runat="server" AutoGenerateColumns="False"
                                CellPadding="1" OnRowDataBound="gvPhotoAlbum_RowDataBound" Width="100%">
                                <AlternatingRowStyle BackColor="GhostWhite" />
                                <Columns>
                                    <asp:BoundField HeaderText="Book Title" DataField="B_Title">
                                        <ItemStyle Width="400px" Font-Size="Medium" />
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="Quantity" DataField="T002_QTY">
                                        <ItemStyle Width="80px" Font-Size="Medium" />
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="Each Price" DataField="B_Price">
                                        <ItemStyle Width="80px" Font-Size="Medium" />
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="Price" DataField="T002_TOTALRS">
                                        <ItemStyle Width="100px" Font-Size="Medium" />
                                    </asp:BoundField>
                                    <asp:TemplateField HeaderText="Remove">
                                        <ItemTemplate>
                                            <asp:Button ID="imgbtnDelete" Text="Delete" runat="server" CausesValidation="False"
                                                CssClass="btn btn-danger btn-xs" Width="70px" CommandArgument='<%# Eval("T002_INVOICEBOOKID") %>'
                                                OnCommand="imgbtnDelete_Command" />
                                        </ItemTemplate>
                                        <ItemStyle Width="70px" Font-Size="Medium" />
                                    </asp:TemplateField>
                                </Columns>
                                <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#111111" Font-Bold="True" ForeColor="White" Height="40px"
                                    HorizontalAlign="Left" VerticalAlign="Middle" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-size: large;" width="250px">
                            Total Amount:
                        </td>
                        <td>
                            <asp:Label ID="lblTotalRs" Text="" Font-Size="Large" Width="250px" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-size: large;" width="250px">
                            Discount (%):
                        </td>
                        <td>
                            <asp:TextBox ID="txtDiscount" Text="" CssClass="form-control" Font-Size="Large" Width="150px"
                                runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-size: large;" width="250px">
                            Tax (%):
                        </td>
                        <td>
                            <asp:TextBox ID="txtTax" Text="" CssClass="form-control" Font-Size="Large" Width="150px"
                                runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-size: large;" width="250px">
                            Net Payable Amount:
                        </td>
                        <td>
                            <asp:Label ID="netpayable" Text="" Font-Bold="true" Font-Size="Large" Width="250px"
                                runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td width="250px">
                            &nbsp;
                        </td>
                        <td>
                            <asp:Button ID="Button2" runat="server" CssClass="btn btn-success btn-sm" Width="200px"
                                Font-Size="Medium" Text="Generate Invoice" OnClick="Button2_Click" CausesValidation="False" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <div id="divaddcustomer">
        <div class="panel panel-info" id="addcustomer" style="margin-left: 10px; margin-right: 10px; width: 85%;">
            <div class="panel-heading">
                <h4>
                    INSERT data about the CUSTOMERS into the system.</h4>
            </div>
            <div class="panel-body">
                <h5>
                    New Customer? &nbsp Enter all data about the customer here.</h5>
                <br />

                <table class="table table-borderless table-responsive" style="width: 500px; background-color: transparent;">
                        <tr>
                            <td width="40%">
                                <b>Customer Name</b>
                            </td>
                            <td width="60%">
                                <input id="cname" type="text" class="form-control" runat="server" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* Field Required"
                                    ControlToValidate="cname" Display="Dynamic" SetFocusOnError="True" Font-Size="Medium"
                                    CssClass="rfvlabel" ValidationGroup="rfvc"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="* Enter Valid Name"
                                    Display="Dynamic" CssClass="rfvlabel" ControlToValidate="cname" ValidationGroup="rfvc"
                                    ValidationExpression="^[a-zA-Z''-'\s]{1,40}$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>Customer City</b>
                            </td>
                            <td>
                                <input id="ccity" type="text" class="form-control" runat="server" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="* Field Required"
                                    ControlToValidate="ccity" Display="Dynamic" SetFocusOnError="True" Font-Size="Medium"
                                    CssClass="rfvlabel" ValidationGroup="rfvc"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="* Enter Characters Only"
                                    Display="Dynamic" CssClass="rfvlabel" ControlToValidate="ccity" ValidationGroup="rfvc"
                                    ValidationExpression="^[a-zA-Z]*$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>Contact No.</b>
                            </td>
                            <td>
                                <input id="ccontact" type="text" class="form-control" placeholder="optional" runat="server" />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="* Enter Numbers Only"
                                    Display="Dynamic" CssClass="rfvlabel" ControlToValidate="ccontact" ValidationGroup="rfvc"
                                    ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>Email ID</b>
                            </td>
                            <td>
                                <input id="cemail" type="text" class="form-control" placeholder="optional" runat="server" />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="* Please Enter Valid Email ID"
                                    Display="Dynamic" CssClass="rfvlabel" ControlToValidate="cemail" ValidationGroup="rfvc"
                                    ValidationExpression="^([0-9a-zZ-Z]([-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>Address</b>
                            </td>
                            <td>
                                <asp:TextBox ID="caddress" CssClass="form-control" placeholder="optional" runat="server" TextMode="MultiLine" Rows="3" />
                            </td>
                        </tr>
                    </table>

                <table class="table table-borderless table-responsive" style="width:500px; background-color: transparent;">
                    <tr>
                        <td colspan=2 align=center>
                            <asp:Button Width="300px" ID="submitaddcus" runat="server" class="btn btn-primary btn-block" Text="+ Add"
                                Font-Size="Large" ValidationGroup="rfvc" />
                        </td>
                    </tr>
                </table>

            </div>
        </div>
    </div>
</asp:Content>

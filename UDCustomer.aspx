<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostback="true" MasterPageFile="~/Site.Master" 
    AutoEventWireup="true" CodeBehind="UDCustomer.aspx.cs" Inherits="SBAIMS.UDCustomer" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id="udcustomer">
    <h3 align="center">
        Update/Delete Customer Data
    </h3>

            <asp:UpdatePanel ID="UpdatePanelu3" UpdateMode="Conditional" runat="server">
            <ContentTemplate>
                <div id="divgv3">
                <hr width="80%" />
                <h4 align="center">
                    Narrow down the results by using any of the following filters.</h4>
                <br />
                <table class="table table-borderless table-responsive" align="center" style="width: 80%;">
                    <tr>
                        <td width="7%">
                            <b>By C_Id:</b>
                        </td>
                        <td width="24%">
                            <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server"></asp:TextBox>
                        </td>
                        <td width="12%">
                            <b>By Customer:</b>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="TextBox13" CssClass="form-control" runat="server"></asp:TextBox>
                        </td>
                        <td width="7%">
                            <b>By City:</b>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="TextBox12" CssClass="form-control" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                   
                </table>
                <div align="center"">
                    <asp:Button ID="Button1" Text="Search" runat="server" CssClass="btn btn-info cssesad" />
                </div>
                <br />
            </div>

                <div id="grdvw3" style="visibility: visible; padding: 5px 15px 5px 10px">

                <asp:GridView ID="GridView3" CssClass="table table-bordered table-responsive" runat="server"
                        AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White"
                        AlternatingRowStyle-BackColor="GhostWhite" BorderColor="#CCCCCC" BorderStyle="None"
                        BorderWidth="1px" CellPadding="4" DataKeyNames="C_Id" DataSourceID="SqlDataSource3"
                        ForeColor="Black" GridLines="Horizontal" PagerSettings-Position="TopAndBottom"
                        Width="100%" PagerStyle-Wrap="True" PagerStyle-CssClass="text text-primary spacing">
                        <AlternatingRowStyle BackColor="GhostWhite" />
                        <Columns>
                            <asp:TemplateField HeaderText="C_Id" InsertVisible="False" SortExpression="C_Id">
                                <EditItemTemplate>
                                    <asp:Label ID="Label1" Width="50px" runat="server" Text='<%# Eval("C_Id") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" Width="50px" runat="server" Text='<%# Bind("C_Id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Customer Name" SortExpression="C_Name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" Width="280px" runat="server" Text='<%# Bind("C_Name") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Text="*" ErrorMessage="* Customer Name is Required"
                                    ControlToValidate="TextBox1" Display="Dynamic" SetFocusOnError="True" Font-Size="Medium"
                                    CssClass="rfvlabel" ValidationGroup="vgv3"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Text="*" ErrorMessage="* Please enter a Valid Name for Customer"
                                    Display="Dynamic" CssClass="rfvlabel" ControlToValidate="TextBox1" ValidationGroup="vgv3"
                                    ValidationExpression="^[a-zA-Z''-'\s]{1,40}$"></asp:RegularExpressionValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" Width="280px" runat="server" Text='<%# Bind("C_Name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="City" SortExpression="C_City">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" Width="100px" runat="server" Text='<%# Bind("C_City") %>'></asp:TextBox>
                                     
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Text="*" ErrorMessage="* City is Required"
                                    ControlToValidate="TextBox2" Display="Dynamic" SetFocusOnError="True" Font-Size="Medium"
                                    CssClass="rfvlabel" ValidationGroup="vgv3"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" Text="*" ErrorMessage="* City name must be in characters"
                                    Display="Dynamic" CssClass="rfvlabel" ControlToValidate="TextBox2" ValidationGroup="vgv3"
                                    ValidationExpression="^[a-zA-Z]*$"></asp:RegularExpressionValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" Width="100px" runat="server" Text='<%# Bind("C_City") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Contact No." SortExpression="C_Contact">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" Width="100px" runat="server" Text='<%# Bind("C_Contact") %>'></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" Text="*" ErrorMessage="* Please enter a Valid Contact No."
                                    Display="Dynamic" CssClass="rfvlabel" ControlToValidate="TextBox3" ValidationGroup="vgv3"
                                    ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" Width="100px" runat="server" Text='<%# Bind("C_Contact") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Cusotmer Email ID" SortExpression="C_Email">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" Width="150px" runat="server" Text='<%# Bind("C_Email") %>'></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" Text="*" ErrorMessage="* Please Enter a Valid Email ID"
                                    Display="Dynamic" CssClass="rfvlabel" ControlToValidate="TextBox4" ValidationGroup="vgv3"
                                    ValidationExpression="^([0-9a-zZ-Z]([-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$"></asp:RegularExpressionValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" Width="150px" runat="server" Text='<%# Bind("C_Email") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>      
                            <asp:TemplateField HeaderText="Customer Address" SortExpression="C_Address">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox5" Width="190px" runat="server" Text='<%# Bind("C_Address") %>' TextMode="MultiLine" Rows="3"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" Width="190px" runat="server" Text='<%# Bind("C_Address") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ShowEditButton="True" HeaderText="Edit" HeaderStyle-ForeColor="#DBDBDB"
                                HeaderStyle-BackColor="#000079" ButtonType="Button" CausesValidation="true" ValidationGroup="vgv3">
                                <ControlStyle Width="70px" CssClass="btn btn-info btn-xs" />
                                <HeaderStyle Width="90px" BackColor="#000079" ForeColor="#DBDBDB" />
                            </asp:CommandField>
  
                        </Columns>             
                        
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerSettings Position="TopAndBottom" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Center" Font-Bold="True"
                            VerticalAlign="Middle" Font-Underline="True" Wrap="True" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                   
                    <asp:ValidationSummary ID="ValidationSummary1" CssClass="rfvlabel" ValidationGroup="vgv3" runat="server" />

                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:SBAIMSConnectionString %>" 
                        DeleteCommand="DELETE FROM [Customer_Master] WHERE [C_Id] = @C_Id" 
                        InsertCommand="INSERT INTO [Customer_Master] ([C_Id], [C_Name], [C_City], [C_Contact], [C_Email], [C_Address]) VALUES (@C_Id, @C_Name, @C_City, @C_Contact, @C_Email, @C_Address)" 
                        SelectCommand="SELECT * FROM [Customer_Master] ORDER BY [C_Id]" 
                        UpdateCommand="UPDATE [Customer_Master] SET [C_Name] = @C_Name, [C_City] = @C_City, [C_Contact] = @C_Contact, [C_Email] = @C_Email, [C_Address] = @C_Address WHERE [C_Id] = @C_Id">
                        <DeleteParameters>
                            <asp:Parameter Name="C_Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="C_Id" Type="Int32" />
                            <asp:Parameter Name="C_Name" Type="String" />
                            <asp:Parameter Name="C_City" Type="String" />
                            <asp:Parameter Name="C_Contact" Type="Int32" />
                            <asp:Parameter Name="C_Email" Type="String" />
                            <asp:Parameter Name="C_Address" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="C_Name" Type="String" />
                            <asp:Parameter Name="C_City" Type="String" />
                            <asp:Parameter Name="C_Contact" Type="Int32" />
                            <asp:Parameter Name="C_Email" Type="String" />
                            <asp:Parameter Name="C_Address" Type="String" />
                            <asp:Parameter Name="C_Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>


                     </ContentTemplate>
        </asp:UpdatePanel>
    </div>

</asp:Content>

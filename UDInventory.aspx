<%@ Page Title="Update Inventory" MaintainScrollPositionOnPostback="true" Language="C#"
    MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UDInventory.aspx.cs"
    Inherits="SBAIMS.ViewInventory" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="udinventory">
        <h3 align="center">
            Update / Delete Book Data
        </h3>
        <asp:UpdatePanel ID="UpdatePanelu1" UpdateMode="Conditional" runat="server">
            <ContentTemplate>
                <div id="divgv1">
                    <hr width="80%" />
                    <h4 align="center">
                        Narrow down the results by using any of the following filters.</h4>
                    <br />
                    <table class="table table-borderless table-responsive" align="center" style="width: 80%;">
                        <tr>
                            <td width="15%">
                                <b>By Title:</b>
                            </td>
                            <td width="25%">
                                <asp:TextBox ID="sbbt" CssClass="form-control" runat="server"></asp:TextBox>
                            </td>
                            <td width="20%">
                            </td>
                            <td width="15%">
                                <b>By Author:</b>
                            </td>
                            <td width="25%">
                                <asp:TextBox ID="sbba" CssClass="form-control" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td width="15%">
                                <b>By Genre:</b>
                            </td>
                            <td width="25%">
                                <asp:TextBox ID="sbbg" CssClass="form-control" runat="server"></asp:TextBox>
                            </td>
                            <td width="20%">
                            </td>
                            <td width="15%">
                                <b>By Publication:</b>
                            </td>
                            <td width="25%">
                                <asp:TextBox ID="sbbp" CssClass="form-control" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <div align="center">
                        <asp:Button ID="btnsd" Text="Search" runat="server" CssClass="btn btn-info cssesad" />
                    </div>
                    <br />
                </div>
                <div id="grdvw1" style="visibility: visible; padding: 5px 15px 5px 10px">
                    <asp:GridView ID="GridView1" CssClass="table table-bordered table-responsive" runat="server"
                        AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White"
                        AlternatingRowStyle-BackColor="GhostWhite" BorderColor="#CCCCCC" BorderStyle="None"
                        BorderWidth="1px" CellPadding="4" DataKeyNames="B_Id" DataSourceID="SqlDataSource1"
                        ForeColor="Black" GridLines="Horizontal" PagerSettings-Position="TopAndBottom"
                        Width="100%" PagerStyle-Wrap="True" PagerStyle-CssClass="text text-primary spacing">
                        <AlternatingRowStyle BackColor="GhostWhite" />
                        <Columns>
                            <asp:TemplateField HeaderText="B_Id" InsertVisible="False" SortExpression="B_Id">
                                <EditItemTemplate>
                                    <asp:Label ID="Label1" Width="50px" runat="server" Text='<%# Eval("B_Id") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" Width="50px" runat="server" Text='<%# Bind("B_Id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Book Title" SortExpression="B_Title">
                                <%-- <ItemStyle width="30%"> </ItemStyle>--%>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" Width="250px" runat="server" Text='<%# Bind("B_Title") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="*"
                                        ErrorMessage="* Book Title is Required" ControlToValidate="TextBox1" Display="Dynamic"
                                        SetFocusOnError="True" Font-Size="Medium" CssClass="rfvlabel" ValidationGroup="vgv1"></asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" Width="250px" runat="server" Text='<%# Bind("B_Title") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Author" SortExpression="B_Author">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" CssClass="form-control" Width="110px" runat="server" Text='<%# Bind("B_Author") %>'></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Text="*"
                                        ErrorMessage="* Enter A Valid Name for Author" ControlToValidate="TextBox2" Display="Dynamic"
                                        SetFocusOnError="True" Font-Size="Medium" CssClass="rfvlabel" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$"
                                        ValidationGroup="vgv1"></asp:RegularExpressionValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" Width="110px" runat="server" Text='<%# Bind("B_Author") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Quantity" SortExpression="B_Quantity">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" CssClass="form-control" Width="50px" runat="server" Text='<%# Bind("B_Quantity") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="*"
                                        ErrorMessage="* Quantity is Required" ControlToValidate="TextBox3" Display="Dynamic"
                                        SetFocusOnError="True" Font-Size="Medium" CssClass="rfvlabel" ValidationGroup="vgv1"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" Text="*"
                                        ErrorMessage="* Quantity must be a Numeric Value" ControlToValidate="TextBox3" Display="Dynamic"
                                        SetFocusOnError="True" Font-Size="Medium" CssClass="rfvlabel" ValidationExpression="^([0-9]*)$"
                                        ValidationGroup="vgv1"></asp:RegularExpressionValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" Width="50px" runat="server" Text='<%# Bind("B_Quantity") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Price" SortExpression="B_Price">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" CssClass="form-control" Width="50px" runat="server" Text='<%# Bind("B_Price") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Text="*"
                                        ErrorMessage="* Price is Required" ControlToValidate="TextBox4" Display="Dynamic"
                                        SetFocusOnError="True" Font-Size="Medium" CssClass="rfvlabel" ValidationGroup="vgv1"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator22" runat="server"
                                        Text="*" ErrorMessage="* Price must be a Numeric Value" ControlToValidate="TextBox4"
                                        Display="Dynamic" SetFocusOnError="True" Font-Size="Medium" CssClass="rfvlabel"
                                        ValidationExpression="^([0-9]*)$" ValidationGroup="vgv1"></asp:RegularExpressionValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" Width="50px" runat="server" Text='<%# Bind("B_Price") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Comm." SortExpression="B_Commission">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox5" CssClass="form-control" Width="50px" runat="server" Text='<%# Bind("B_Commission") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Text="*"
                                        ErrorMessage="* Commission is Required" ControlToValidate="TextBox5" Display="Dynamic"
                                        SetFocusOnError="True" Font-Size="Medium" CssClass="rfvlabel" ValidationGroup="vgv1"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator32" runat="server"
                                        Text="*" ErrorMessage="* Commission must be Numeric Value" ControlToValidate="TextBox5"
                                        Display="Dynamic" SetFocusOnError="True" Font-Size="Medium" CssClass="rfvlabel"
                                        ValidationExpression="^([0-9]*)$" ValidationGroup="vgv1"></asp:RegularExpressionValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" Width="50px" runat="server" Text='<%# Bind("B_Commission") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Low Alert" SortExpression="B_Low">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox10" CssClass="form-control" Width="40px" runat="server" Text='<%# Bind("B_Low") %>'></asp:TextBox>
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator42" runat="server"
                                        Text="*" ErrorMessage="* Alert Quantity must be Numeric Value" ControlToValidate="TextBox10"
                                        Display="Dynamic" SetFocusOnError="True" Font-Size="Medium" CssClass="rfvlabel"
                                        ValidationExpression="^([0-9]*)$" ValidationGroup="vgv1"></asp:RegularExpressionValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label13" Width="40px" runat="server" Text='<%# Bind("B_Low") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Shelf" SortExpression="B_Shelf">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox6" CssClass="form-control" Width="35px" runat="server" Text='<%# Bind("B_Shelf") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Text="*"
                                        ErrorMessage="* Shelf is Required" ControlToValidate="TextBox6" Display="Dynamic"
                                        SetFocusOnError="True" Font-Size="Medium" CssClass="rfvlabel" ValidationGroup="vgv1"></asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label7" Width="35px" runat="server" Text='<%# Bind("B_Shelf") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Genre" SortExpression="B_Genre">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox7" CssClass="form-control" Width="80px" runat="server" Text='<%# Bind("B_Genre") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Text="*"
                                        ErrorMessage="* Genre is Required" ControlToValidate="TextBox7" Display="Dynamic"
                                        SetFocusOnError="True" Font-Size="Medium" CssClass="rfvlabel" ValidationGroup="vgv1"></asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label8" Width="80px" runat="server" Text='<%# Bind("B_Genre") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Binding" SortExpression="B_Binding">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox8" CssClass="form-control" Width="55px" runat="server" Text='<%# Bind("B_Binding") %>'></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" Text="*"
                                        ErrorMessage="*Binding must be in Characters only." ControlToValidate="TextBox8"
                                        Display="Dynamic" SetFocusOnError="True" Font-Size="Medium" CssClass="rfvlabel"
                                        ValidationExpression="^([a-zA-Z]*)$" ValidationGroup="vgv1"></asp:RegularExpressionValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label9" Width="50px" runat="server" Text='<%# Bind("B_Binding") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Pages" SortExpression="B_Pages">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox9" CssClass="form-control" Width="40px" runat="server" Text='<%# Bind("B_Pages") %>'></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" Text="*"
                                        ErrorMessage="*Pages must be Numeric Value" ControlToValidate="TextBox9" Display="Dynamic"
                                        SetFocusOnError="True" Font-Size="Medium" CssClass="rfvlabel" ValidationExpression="^([0-9]*)$"
                                        ValidationGroup="vgv1"></asp:RegularExpressionValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label10" Width="40px" runat="server" Text='<%# Bind("B_Pages") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Imported?" SortExpression="Imported">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="DropDownList1" Width="50px" DataSourceID="SqlDataSource4" SelectedValue='<%# Bind("Imported") %>'
                                        DataTextField="Imported" DataValueField="Imported" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="No" Text="No">No</asp:ListItem>
                                        <asp:ListItem Value="Yes" Text="Yes">Yes</asp:ListItem>
                                    </asp:DropDownList>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label11" Width="50px" runat="server" Text='<%# Bind("Imported") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="P_Id" SortExpression="P_Id">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox11" CssClass="form-control" Width="50px" runat="server" Text='<%# Bind("P_Id") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label12" Width="50px" runat="server" Text='<%# Bind("P_Id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ShowEditButton="True" HeaderText="Edit" HeaderStyle-ForeColor="#DBDBDB"
                                HeaderStyle-BackColor="#000079" ButtonType="Button" CausesValidation="true" ValidationGroup="vgv1">
                                <ControlStyle CssClass="btn btn-info btn-xs" Width="60px" />
                                <HeaderStyle Width="70px" BackColor="#000079" ForeColor="#DBDBDB" />
                            </asp:CommandField>
                            <asp:CommandField ButtonType="Button" HeaderText="Delete" ShowDeleteButton="True">
                                <ControlStyle CssClass="btn btn-danger btn-xs" Width="60px" />
                                <HeaderStyle Width="70px" BackColor="#000079" ForeColor="#DBDBDB" />
                            </asp:CommandField>
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerSettings Position="TopAndBottom" />
                        <PagerStyle HorizontalAlign="Center" Font-Bold="True" Font-Size="Large" VerticalAlign="Middle" Wrap="True" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                    
                    <asp:ValidationSummary ID="ValidationSummary1" CssClass="rfvlabel" DisplayMode="List" ValidationGroup="vgv1" runat="server" />

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SBAIMSConnectionString %>"
                        DeleteCommand="DELETE FROM [Book_Master] WHERE [B_Id] = @B_Id" InsertCommand="INSERT INTO [Book_Master] ([B_Title], [B_Author], [B_Quantity], [B_Price], [B_Commission], [B_Shelf], [B_Genre], [B_Binding], [B_Pages], [Imported], [P_Id]) VALUES (@B_Title, @B_Author, @B_Quantity, @B_Price, @B_Commission, @B_Shelf, @B_Genre, @B_Binding, @B_Pages, @Imported, @P_Id)"
                        SelectCommand="SELECT * FROM [Book_Master] ORDER BY [B_Id]" UpdateCommand="UPDATE [Book_Master] SET [B_Title] = @B_Title, [B_Author] = @B_Author, [B_Quantity] = @B_Quantity, [B_Price] = @B_Price, [B_Commission] = @B_Commission, [B_Shelf] = @B_Shelf, [B_Genre] = @B_Genre, [B_Binding] = @B_Binding, [B_Pages] = @B_Pages, [Imported] = @Imported, [P_Id] = @P_Id WHERE [B_Id] = @B_Id">
                        <DeleteParameters>
                            <asp:Parameter Name="B_Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="B_Title" Type="String" />
                            <asp:Parameter Name="B_Author" Type="String" />
                            <asp:Parameter Name="B_Quantity" Type="String" />
                            <asp:Parameter Name="B_Price" Type="Int32" />
                            <asp:Parameter Name="B_Commission" Type="Int32" />
                            <asp:Parameter Name="B_Shelf" Type="String" />
                            <asp:Parameter Name="B_Genre" Type="String" />
                            <asp:Parameter Name="B_Binding" Type="String" />
                            <asp:Parameter Name="B_Pages" Type="Int32" />
                            <asp:Parameter Name="Imported" Type="String" />
                            <asp:Parameter Name="P_Id" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="B_Title" Type="String" />
                            <asp:Parameter Name="B_Author" Type="String" />
                            <asp:Parameter Name="B_Quantity" Type="String" />
                            <asp:Parameter Name="B_Price" Type="Int32" />
                            <asp:Parameter Name="B_Commission" Type="Int32" />
                            <asp:Parameter Name="B_Shelf" Type="String" />
                            <asp:Parameter Name="B_Genre" Type="String" />
                            <asp:Parameter Name="B_Binding" Type="String" />
                            <asp:Parameter Name="B_Pages" Type="Int32" />
                            <asp:Parameter Name="Imported" Type="String" />
                            <asp:Parameter Name="P_Id" Type="Int32" />
                            <asp:Parameter Name="B_Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:SBAIMSConnectionString %>"
                        SelectCommand="SELECT distinct(Imported) FROM [Book_Master] "></asp:SqlDataSource>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>

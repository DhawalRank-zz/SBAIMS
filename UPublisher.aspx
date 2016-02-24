<%@ Page Title="Update Publisher" MaintainScrollPositionOnPostback="true" Language="C#"
    MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UPublisher.aspx.cs"
    Inherits="SBAIMS.UPublisher" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="upublisher">
        <h3 align="center">
            Update Publisher Data
        </h3>
        <asp:UpdatePanel ID="UpdatePanelu2" UpdateMode="Conditional" runat="server">
            <ContentTemplate>
                <div id="divgv2">
                    <hr width="80%" />
                    <h4 align="center">
                        Narrow down the results by using any of the following filters.</h4>
                    <br />
                    <table class="table table-borderless table-responsive" align="center" style="width: 80%;
                        font-size: 13px">
                        <tr>
                            <td width="7%">
                                <b>By P_Id:</b>
                            </td>
                            <td width="23%">
                                <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server"></asp:TextBox>
                            </td>
                            <td width="12%">
                                <b>By Publication:</b>
                            </td>
                            <td width="23%">
                                <asp:TextBox ID="TextBox13" CssClass="form-control" runat="server"></asp:TextBox>
                            </td>
                            <td width="12%">
                                <b>By Publisher:</b>
                            </td>
                            <td width="23%">
                                <asp:TextBox ID="TextBox12" CssClass="form-control" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <div align="center">
                        <asp:Button ID="Button1" Text="Search" runat="server" CssClass="btn btn-info cssesad" />
                    </div>
                    <br />
                </div>
                <div id="grdvw2" style="visibility: visible; padding: 5px 10px 5px 15px">
                    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True"
                        AutoGenerateColumns="False" DataKeyNames="P_Id" DataSourceID="SqlDataSource2"
                        CssClass="table table-bordered" BackColor="White" AlternatingRowStyle-BackColor="GhostWhite"
                        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black"
                        GridLines="Horizontal" Width="100%" PagerStyle-Wrap="True" PagerStyle-CssClass="text text-primary spacing" PagerSettings-Position="TopAndBottom">
                        <AlternatingRowStyle BackColor="GhostWhite" />
                        <Columns>
                            <asp:TemplateField HeaderText="P_Id" InsertVisible="False" SortExpression="P_Id">
                                <EditItemTemplate>
                                    <asp:Label ID="Label1" Width="50px" runat="server" Text='<%# Eval("P_Id") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" Width="50px" runat="server" Text='<%# Bind("P_Id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Publication" SortExpression="Publication">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" Width="220px" runat="server" Text='<%# Bind("Publication") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" Text="*"
                                        ErrorMessage="* Publication Name is Required" ControlToValidate="TextBox1" Display="Dynamic"
                                        SetFocusOnError="True" Font-Size="Medium" CssClass="rfvlabel" ValidationGroup="vgv2"></asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" Width="220px" runat="server" Text='<%# Bind("Publication") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Publisher" SortExpression="Publisher">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" Width="170px" runat="server" Text='<%# Bind("Publisher") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" Text="*"
                                        ErrorMessage="* Publisher is Required" ControlToValidate="TextBox2" Display="Dynamic"
                                        SetFocusOnError="True" Font-Size="Medium" CssClass="rfvlabel" ValidationGroup="vgv2"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" Text="*"
                                        ErrorMessage="* Enter a Valid Name for Publisher" ControlToValidate="TextBox2"
                                        Display="Dynamic" SetFocusOnError="True" Font-Size="Medium" CssClass="rfvlabel"
                                        ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" ValidationGroup="vgv2"></asp:RegularExpressionValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" Width="170px" runat="server" Text='<%# Bind("Publisher") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Contact 1" SortExpression="P_Contact">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" Width="100px" runat="server" Text='<%# Bind("P_Contact") %>'></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server"
                                        Text="*" ErrorMessage="* Please enter a Valid Contact No. 1" ControlToValidate="TextBox3" Display="Dynamic"
                                        SetFocusOnError="True" Font-Size="Medium" CssClass="rfvlabel" ValidationExpression="^([0-9]*)$"
                                        ValidationGroup="vgv2"></asp:RegularExpressionValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" Width="100px" runat="server" Text='<%# Bind("P_Contact") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Contact 2" SortExpression="P_Contact2">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" Width="100px" runat="server" Text='<%# Bind("P_Contact2") %>'></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator18" runat="server"
                                        Text="*" ErrorMessage="* Please enter a Valid Contact No. 2" ControlToValidate="TextBox4" Display="Dynamic"
                                        SetFocusOnError="True" Font-Size="Medium" CssClass="rfvlabel" ValidationExpression="^([0-9]*)$"
                                        ValidationGroup="vgv2"></asp:RegularExpressionValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" Width="100px" runat="server" Text='<%# Bind("P_Contact2") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Email ID" SortExpression="P_Email">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox5" Width="200px" runat="server" Text='<%# Bind("P_Email") %>'></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server"
                                        Text="*" ErrorMessage="* Please enter a Valid Email ID" Display="Dynamic" CssClass="rfvlabel"
                                        ControlToValidate="TextBox5" ValidationGroup="vgv2" ValidationExpression="^([0-9a-zZ-Z]([-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$"></asp:RegularExpressionValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" Width="200px" runat="server" Text='<%# Bind("P_Email") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Bank A/c No." SortExpression="P_BankAccount">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox6" Width="130px" runat="server" Text='<%# Bind("P_BankAccount") %>'></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server"
                                        Text="*" ErrorMessage="* Bank A/C No. must be a Numeric Value" ControlToValidate="TextBox6" Display="Dynamic"
                                        SetFocusOnError="True" Font-Size="Medium" CssClass="rfvlabel" ValidationExpression="^([0-9]*)$"
                                        ValidationGroup="vgv2"></asp:RegularExpressionValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label7" Width="130px" runat="server" Text='<%# Bind("P_BankAccount") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ShowEditButton="True" HeaderText="Edit" HeaderStyle-ForeColor="#DBDBDB"
                                HeaderStyle-BackColor="#000079" ButtonType="Button" CausesValidation="true" ValidationGroup="vgv2">
                                <ControlStyle CssClass="btn btn-info btn-xs" Width="70px" />
                                <HeaderStyle Width="90px" BackColor="#000079" ForeColor="#DBDBDB" />
                            </asp:CommandField>
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                         <PagerSettings Position="TopAndBottom" />
                        <PagerStyle HorizontalAlign="Center" Font-Bold="True" Font-Size="Large" VerticalAlign="Middle"
                            Wrap="True" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>

                    <asp:ValidationSummary ID="ValidationSummary2" CssClass="rfvlabel" DisplayMode="List" ValidationGroup="vgv2" runat="server" />
                    
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SBAIMSConnectionString %>"
                        DeleteCommand="DELETE FROM [Publication_Master] WHERE [P_Id] = @P_Id" InsertCommand="INSERT INTO [Publication_Master] ([Publication], [Publisher], [P_Contact], [P_Contact2], [P_Email], [P_BankAccount]) VALUES (@Publication, @Publisher, @P_Contact, @P_Contact2, @P_Email, @P_BankAccount)"
                        SelectCommand="SELECT * FROM [Publication_Master] ORDER BY [P_Id]" UpdateCommand="UPDATE [Publication_Master] SET [Publication] = @Publication, [Publisher] = @Publisher, [P_Contact] = @P_Contact, [P_Contact2] = @P_Contact2, [P_Email] = @P_Email, [P_BankAccount] = @P_BankAccount WHERE [P_Id] = @P_Id">
                        <DeleteParameters>
                            <asp:Parameter Name="P_Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Publication" Type="String" />
                            <asp:Parameter Name="Publisher" Type="String" />
                            <asp:Parameter Name="P_Contact" Type="String" />
                            <asp:Parameter Name="P_Contact2" Type="String" />
                            <asp:Parameter Name="P_Email" Type="String" />
                            <asp:Parameter Name="P_BankAccount" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Publication" Type="String" />
                            <asp:Parameter Name="Publisher" Type="String" />
                            <asp:Parameter Name="P_Contact" Type="String" />
                            <asp:Parameter Name="P_Contact2" Type="String" />
                            <asp:Parameter Name="P_Email" Type="String" />
                            <asp:Parameter Name="P_BankAccount" Type="String" />
                            <asp:Parameter Name="P_Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>

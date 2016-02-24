<%@ Page Title="View Inventory" Language="C#" MaintainScrollPositionOnPostback="true" MasterPageFile="~/Site.Master"
    AutoEventWireup="true" CodeBehind="ViewInventory.aspx.cs" Inherits="SBAIMS.UpdateInventory" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id="viewinventory">
    <h3 align="center">
    View Inventory
    </h3>

        <div class="tab-content table-responsive">
            <div class="tab-pane fade in active table-responsive" id="abtable">
                <hr width="80%"/>
                <h4 align="center">Narrow down the results by using any of the following filters.</h4>
                <br />
                <table class="table table-borderless table-responsive" align="center" style="width: 70%;">
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
                <div align="center" class=" table-responsive">
                    <asp:Button ID="btnsd" Text="Search" runat="server" CssClass="btn btn-info cssesad" />
                </div>
                <br /><br />
                <%--</div>
                            <div class="tab-pane fade table-responsive" id="charts">
                                <table class="table table-borderless table-responsive">
                                    <tr>
                                        <td align="center">
                                            <ul class="nav nav-tabs nav-justified" style="width: 45%;">
                                                <li class="active" style="font-size: 15px"><a data-toggle="tab" href="#barchart">Bar
                                                    Chart</a></li>
                                                <li style="font-size: 15px"><a data-toggle="tab" href="#piechart">Pie Chart</a></li>
                                                <li style="font-size: 15px"><a data-toggle="tab" href="#zpcharts">Zoomable Partition
                                                    Layout</a></li>
                                            </ul>
                                        </td>
                                    </tr>
                                </table>
                                <div class="tab-content">
                                    <div class="tab-pane fade in active" id="barchart">
                                        <h3>
                                            Bar Chart of Inventory Stocks will appear here.</h3>
                                    </div>
                                    <div class="tab-pane fade" id="piechart">
                                        <h3>
                                            Pie Chart of Inventory Stocks will appear here.</h3>
                                    </div>
                                    <div class="tab-pane fade" id="zpcharts">
                                        <h3>
                                            The 'Zoomable Partition Layout' chart will appear here. It is extremely appealing
                                            & interactive chart.</h3>
                                    </div>
                                </div>
                            </div>--%>
            </div>
        </div>
 
                <div id="grdvw3">
                    <h3>
                        Inventory Data
                    </h3>
                    <asp:GridView ID="GridView3" CssClass="table table-responsive table-bordered" runat="server"
                        AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="B_Id,P_Id"
                        DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Horizontal" PagerStyle-CssClass="text-primary spacing"
                        PagerSettings-Position="TopAndBottom" Width="100%" BackColor="White" AlternatingRowStyle-BackColor="GhostWhite"
                        BorderColor="#CCCCCC" BorderWidth="1px" CellPadding="4" PageSize="12">
                        <AlternatingRowStyle BackColor="GhostWhite" />
                        <Columns>
                            <asp:TemplateField HeaderText="B_Id" InsertVisible="False" SortExpression="B_Id">
                                <EditItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("B_Id") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("B_Id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Book Title" SortExpression="B_Title">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("B_Title") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("B_Title") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Quantity" SortExpression="B_Quantity">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("B_Quantity") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("B_Quantity") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Price" SortExpression="B_Price">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("B_Price") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("B_Price") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Shelf" SortExpression="B_Shelf">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("B_Shelf") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("B_Shelf") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Genre" SortExpression="B_Genre">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("B_Genre") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("B_Genre") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Author" SortExpression="B_Author">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("B_Author") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("B_Author") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Publication" SortExpression="Publication">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Publication") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("Publication") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="P_Id" InsertVisible="False" SortExpression="P_Id">
                                <EditItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("P_Id") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("P_Id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <HeaderStyle BackColor="Black" ForeColor="#E4E4E4" />
                        <PagerSettings Position="TopAndBottom"></PagerSettings>
                        <PagerStyle Font-Bold="true" HorizontalAlign="Center" VerticalAlign="Middle"></PagerStyle>
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SBAIMSConnectionString %>"
                        SelectCommand="SELECT B_Id,B_Title,B_Quantity,B_Price,B_Shelf,B_Genre,B_Author,Publication,B.P_Id FROM Book_Master A JOIN Publication_Master B ON A.P_Id=B.P_Id">
                    </asp:SqlDataSource>
                </div>
          
                <%--  <div id="updateinventory">
        <table width="100%" class="table table-borderless">
            <tr>
                <td width="50%" style="vertical-align: top;">
                    <div class="panel panel-info" id="updatebii">
                        <div class="panel-heading">
                            <h4>
                                UPDATE data about the existing BOOKS.</h4>
                        </div>
                        <div class="panel-body">
                            <h5>
                                Enter the Book ID for which you want to change data. You can view Book ID from View
                                Inventory Tab</h5>
                            <br />
                            <table width="500px" class="table table-borderless" align="center">
                                <tr>
                                    <td align="center">
                                        <asp:Label ID="labelupdatebooks" runat="server" Font-Size="Medium" Text="The Update Was Successful !!"
                                            CssClass="alert alert-success alcntr" Visible="False"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                            <table class="table table-borderless" align="center" style="width: 500px; background-color: transparent;
                                position: relative; top: 25px;">
                                <tr>
                                    <td width="40%">
                                        <b>Enter Book ID</b>
                                    </td>
                                    <td width="60%">
                                        <input id="cubid" type="text" class="form-control" runat="server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="* Field Required"
                                            ControlToValidate="cubid" Display="Dynamic" SetFocusOnError="True" Font-Size="Medium"
                                            CssClass="rfvlabel" ValidationGroup="rfvub"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b>Book's Title</b>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="cubt" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b>Quantity</b>
                                    </td>
                                    <td>
                                        <input id="cuqty" type="text" class="form-control" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b>Price</b>
                                    </td>
                                    <td>
                                        <input id="cuprc" type="text" class="form-control" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b>Commission %</b>
                                    </td>
                                    <td>
                                        <input id="cucomsn" type="text" class="form-control" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b>Genre</b>
                                    </td>
                                    <td>
                                        <input id="cugenre" type="text" class="form-control" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b>Author's Name</b>
                                    </td>
                                    <td>
                                        <input id="cuan" type="text" class="form-control" placeholder="optional" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b>Shelf No.</b>
                                    </td>
                                    <td>
                                        <input id="cusno" type="text" class="form-control" placeholder="optional" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b>Binding</b>
                                    </td>
                                    <td>
                                        <input id="cubndng" type="text" class="form-control" placeholder="optional" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b>No. of Pages</b>
                                    </td>
                                    <td>
                                        <input id="cunp" type="text" class="form-control" placeholder="optional" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b>Imported ?</b>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="cuimprtd" runat="server" CssClass="form-control">
                                            <asp:ListItem>No</asp:ListItem>
                                            <asp:ListItem>Yes</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                            </table>

                    <br />
        <table class="table table-borderless table-responsive" align="center" style="width: 300px;
            background-color: transparent; position: relative;">
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="updatebooks" runat="server" class="btn btn-info btn-block" Text="Update"
                        OnClick="updatebooks_Click" ValidationGroup="rfvub" />
                </td>
            </tr>
        </table>
    </div>
    </div> 
    </td>
    <td width="50%" style="vertical-align: top;">
        <div class="panel panel-danger" id="deletebri">
            <div class="panel-heading">
                <h4>
                    DELETE data about the BOOKS</h4>
            </div>
            <div class="panel-body">
                <h5>
                    Enter Book ID of book-title you want to delete from the inventory. You can view
                    Book ID from the View Inventory Tab.</h5>
                <br />
                <table width="500px" class="table table-borderless" align="center">
                    <tr>
                        <td align="center">
                            <asp:Label ID="labeldeletebooks" runat="server" Font-Size="Medium" Text="Entry Was Successfully Deleted !!"
                                CssClass="alert alert-success alcntr" Visible="False"></asp:Label>
                        </td>
                    </tr>
                </table>
                <table class="table table-borderless" align="center" style="width: 500px; background-color: transparent;
                    position: relative; top: 25px;">
                    <tr>
                        <td width="40%">
                            <b>Enter Book ID</b>
                        </td>
                        <td width="60%">
                            <asp:TextBox ID="ddbid" runat="server" CssClass="form-control" placeholder="Enter Book ID"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="* Field Required"
                                ControlToValidate="ddbid" Display="Dynamic" SetFocusOnError="True" Font-Size="Medium"
                                CssClass="rfvlabel" ValidationGroup="rfvdb"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
                <br />
                <table class="table table-borderless" align="center" style="width: 300px; background-color: transparent;
                    position: relative;">
                    <tr>
                        <td colspan="2" align="center">
                            <asp:Button ID="ddinventory" data-toggle="modal" Text="Delete" CssClass="btn btn-danger btn-block"
                                href="#confirmdelete" runat="server" ValidationGroup="rfvdb"></asp:Button>
                            <!-- <a data-toggle="modal" href="#confirmdelete" id="uidinventory" class="btn btn-danger btn-block"
                                        runat="server">Delete</a> -->
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </td>
    </tr>
    <tr>
        <td width="50%" style="vertical-align: top;">
            <div class="panel panel-info" id="updatepii">
                <div class="panel-heading">
                    <h4>
                        UPDATE data about the existing PUBLISHERS.</h4>
                </div>
                <div class="panel-body">
                    <h5>
                        Enter Publisher ID for which you want to change data. You can view Publisher ID
                        from View Inventory Tab</h5>
                    <br />
                    <table width="500px" class="table table-borderless" align="center">
                        <tr>
                            <td align="center">
                                <asp:Label ID="labelupdatepub" runat="server" Font-Size="Medium" Text="The Update Was Successful !!"
                                    CssClass="alert alert-success alcntr" Visible="False"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <table class="table table-borderless" align="center" style="width: 500px; background-color: transparent;
                        position: relative; top: 25px;">
                        <tr>
                            <td>
                                <b>Publisher ID</b>
                            </td>
                            <td>
                                <input id="Text21" type="text" class="form-control" placeholder="Enter Publisher ID"
                                    runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>Publication Name</b>
                            </td>
                            <td>
                                <input id="Text15" type="text" class="form-control" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>Publisher (Owner) Name</b>
                            </td>
                            <td>
                                <input id="Text16" type="text" class="form-control" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>Contact No. 1</b>
                            </td>
                            <td>
                                <input id="Text17" type="text" class="form-control" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>Contact No. 2</b>
                            </td>
                            <td>
                                <input id="Text18" type="text" class="form-control" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>Publisher Bank A/C No.</b>
                            </td>
                            <td>
                                <input id="Text19" type="text" class="form-control" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>Pub. Email ID</b>
                            </td>
                            <td>
                                <input id="Text20" type="text" class="form-control" runat="server" />
                            </td>
                        </tr>
                    </table>
                    <br />
                    <table class="table table-borderless" align="center" style="width: 300px; background-color: transparent;
                        position: relative;">
                        <tr>
                            <td colspan="2" align="center">
                                <button id="Button2" type="button" class="btn btn-primary btn-block" runat="server">
                                    Update</button>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </td>
    </tr>
    </table> </div>--%>
          
        
    </div>
</asp:Content>

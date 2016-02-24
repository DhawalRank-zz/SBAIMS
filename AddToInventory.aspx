<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="AddToInventory.aspx.cs" Inherits="SBAIMS.addtoinventory" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div id="addtoinventory">
        <table width="100%" class="table table-borderless table-responsive">
            <tr>
                <td width="50%" style="vertical-align: top;">
                    <div class="panel panel-info" id="addbooks">
                        <div class="panel-heading">
                            <h4>
                                INSERT data about the BOOKS into the system.</h4>
                        </div>
                        <div class="panel-body">
                            <h5>
                                If the new books are not from existing publisher then first enter the data about
                                the publisher.</h5>
                            <br />
                            <table width="500px" class="table table-borderless" align="center">
                                <tr>
                                    <td align="center">
                                        <asp:Label ID="addbookssubmit" runat="server" Font-Size="Medium" Text="The Entry Was Successful !!"
                                            CssClass="alert alert-success alcntr" Visible="False"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                            <table class="table table-borderless table-responsive fs15" align="center" style="width: 500px; background-color: transparent;">
                                <tr>
                                    <td width="40%">
                                        Select Publication
                                    </td>
                                    <td width="60%">
                                        <asp:TextBox ID="aspub" class="form-control" runat="server" AutoPostBack="True" 
                                            ontextchanged="aspub_TextChanged"></asp:TextBox>
                                        <asp:AutoCompleteExtender ID="AutoCompleteExtender1" TargetControlID="aspub" MinimumPrefixLength="1"
                                            EnableCaching="true" CompletionSetCount="1" CompletionInterval="100" ServiceMethod="GetPublication"
                                            runat="server" OnClientItemSelected="ClientItemSelected1">
                                        </asp:AutoCompleteExtender>
                                        <script type="text/javascript">
                                            function ClientItemSelected1(sender, e) {
                                                $get("<%=HiddenField1.ClientID %>").value = e.get_value();
                                            }
                                        </script>


                                        <asp:HiddenField ID="HiddenField1" runat="server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Field Required"
                                            ControlToValidate="aspub" Display="Dynamic" SetFocusOnError="True" Font-Size="Medium"
                                            CssClass="rfvlabel" ValidationGroup="rfvab"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Book's Title
                                    </td>
                                    <td>
                                        <asp:TextBox ID="abktitle" class="form-control" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Field Required"
                                            ControlToValidate="abktitle" Display="Dynamic" SetFocusOnError="True" Font-Size="Medium"
                                            CssClass="rfvlabel" ValidationGroup="rfvab"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Quantity
                                    </td>
                                    <td>
                                        <asp:TextBox ID="abkqty" CssClass="form-control" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* Field Required"
                                            ControlToValidate="abkqty" Display="Dynamic" SetFocusOnError="True" Font-Size="Medium"
                                            CssClass="rfvlabel" ValidationGroup="rfvab"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="* Numbers Only" 
                                            ControlToValidate="abkqty" Display="Dynamic" SetFocusOnError="True" Font-Size="Medium"
                                            CssClass="rfvlabel" ValidationExpression="^([0-9]*)$" ValidationGroup="rfvab"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Price
                                    </td>
                                    <td>
                                        <asp:TextBox ID="abkprice" CssClass="form-control" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="* Field Required"
                                            ControlToValidate="abkprice" Display="Dynamic" SetFocusOnError="True" Font-Size="Medium"
                                            CssClass="rfvlabel" ValidationGroup="rfvab"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="* Numbers Only"
                                            ControlToValidate="abkprice" Display="Dynamic" SetFocusOnError="True" Font-Size="Medium"
                                            CssClass="rfvlabel" ValidationExpression="^([0-9]*)$" ValidationGroup="rfvab"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Commission (%)
                                    </td>
                                    <td>
                                        <asp:TextBox ID="abkcomm" CssClass="form-control" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="* Field Required"
                                            ControlToValidate="abkcomm" Display="Dynamic" SetFocusOnError="True" Font-Size="Medium"
                                            CssClass="rfvlabel" ValidationGroup="rfvab"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="* Numbers Only" 
                                            ControlToValidate="abkcomm" Display="Dynamic" SetFocusOnError="True" Font-Size="Medium"
                                            CssClass="rfvlabel" ValidationExpression="^([0-9]*)$" ValidationGroup="rfvab"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Genre
                                    </td>
                                    <td>
                                        <asp:TextBox ID="abkgenre" CssClass="form-control" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="* Field Required"
                                            ControlToValidate="abkgenre" Display="Dynamic" SetFocusOnError="True" Font-Size="Medium"
                                            CssClass="rfvlabel" ValidationGroup="rfvab"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Shelf No.
                                    </td>
                                    <td>
                                        <asp:TextBox ID="absno" CssClass="form-control" runat="server"></asp:TextBox>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="* Field Required"
                                            ControlToValidate="absno" Display="Dynamic" SetFocusOnError="True" Font-Size="Medium"
                                            CssClass="rfvlabel" ValidationGroup="rfvab"></asp:RequiredFieldValidator>

                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Author's Name
                                    </td>
                                    <td>
                                        <asp:TextBox ID="abkauthor" CssClass="form-control" placeholder="optional" runat="server"></asp:TextBox>
                                         <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="* Enter characters or valid symbols" 
                                            ControlToValidate="abkauthor" Display="Dynamic" SetFocusOnError="True" Font-Size="Medium"
                                            CssClass="rfvlabel" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" ValidationGroup="rfvab"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Low Qty. Alert
                                    </td>
                                    <td>
                                        <asp:TextBox ID="abklqa" CssClass="form-control" placeholder="optional" runat="server"></asp:TextBox>
                                         <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="* Numbers Only" 
                                            ControlToValidate="abklqa" Display="Dynamic" SetFocusOnError="True" Font-Size="Medium"
                                            CssClass="rfvlabel" ValidationExpression="^[0-9]*$" ValidationGroup="rfvab"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Binding
                                    </td>
                                    <td>
                                        <asp:TextBox ID="abbinding" CssClass="form-control" placeholder="optional" runat="server"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="*Characters Only." 
                                        ControlToValidate="abbinding" Display="Dynamic" SetFocusOnError="True" Font-Size="Medium"
                                            CssClass="rfvlabel" ValidationExpression="^([a-zA-Z]*)$" ValidationGroup="rfvab"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        No. of Pages
                                    </td>
                                    <td>
                                        <asp:TextBox ID="abknp" CssClass="form-control" placeholder="optional" runat="server"></asp:TextBox>
                                         <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="* Numbers Only" 
                                            ControlToValidate="abknp" Display="Dynamic" SetFocusOnError="True" Font-Size="Medium"
                                            CssClass="rfvlabel" ValidationExpression="^([0-9]*)$" ValidationGroup="rfvab"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Imported ?
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="abimported" runat="server" CssClass="form-control">
                                            <asp:ListItem Text="No" Value="No" Selected="True">No</asp:ListItem>
                                            <asp:ListItem Text="Yes" Value="Yes">Yes</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <table class="table table-borderless table-responsive" align="center" style="width: 300px;
                                background-color: transparent;">
                                <tr>
                                    <td colspan="2" align="center">
                                        <asp:Button ID="submitaddbooks" runat="server" class="btn btn-primary btn-block" Font-Size=Large
                                            Text="+ Add" OnClick="submitaddbooks_Click" ValidationGroup="rfvab" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </td>
                <td width="50%" style="vertical-align: top;">
                    <div class="panel panel-info" id="addpublisher">
                        <div class="panel-heading">
                            <h4>
                                INSERT data about the PUBLISHERS into the system.</h4>
                        </div>
                        <div class="panel-body">
                            <h5>
                                New Publisher? &nbsp Enter all data about the publisher here.</h5>
                            <br />
                            <table width="500px" class="table table-borderless" align="center">
                                <tr>
                                    <td align="center">
                                        <asp:Label ID="labeladdpub" runat="server" Font-Size="Medium" Text="The Entry Was Successful !!"
                                            CssClass="alert alert-success alcntr" Visible="False"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                            <table class="table table-borderless table-responsive fs15" align="center" style="width: 500px;
                                background-color: transparent;">
                                <tr>
                                    <td width="40%">
                                        Publication Name
                                    </td>
                                    <td width="60%">
                                        <asp:TextBox ID="bkpub" CssClass="form-control" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="* Field Required"
                                            ControlToValidate="bkpub" Display="Dynamic" SetFocusOnError="True" Font-Size="Medium"
                                            CssClass="rfvlabel" ValidationGroup="rfvap"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Publisher (/Distributor) Name
                                    </td>
                                    <td>
                                        <asp:TextBox ID="bkpname" CssClass="form-control" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="* Field Required"
                                            ControlToValidate="bkpname" Display="Dynamic" SetFocusOnError="True" Font-Size="Medium"
                                            CssClass="rfvlabel" ValidationGroup="rfvap"></asp:RequiredFieldValidator>
                                              <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ErrorMessage="* Enter characters or valid symbols" ControlToValidate="bkpname" Display="Dynamic" SetFocusOnError="True" Font-Size="Medium"
                                            CssClass="rfvlabel" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" ValidationGroup="rfvap"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Contact No. 1
                                    </td>
                                    <td>
                                        <asp:TextBox ID="bkpc1" CssClass="form-control" placeholder="optional" runat="server"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ErrorMessage="* Numbers Only" 
                                            ControlToValidate="bkpc1" Display="Dynamic" SetFocusOnError="True" Font-Size="Medium"
                                            CssClass="rfvlabel" ValidationExpression="^([0-9]*)$" ValidationGroup="rfvap"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Contact No. 2
                                    </td>
                                    <td>
                                       <asp:TextBox ID="bkpc2" CssClass="form-control" placeholder="optional" runat="server"></asp:TextBox>
                                          <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ErrorMessage="* Numbers Only" 
                                            ControlToValidate="bkpc2" Display="Dynamic" SetFocusOnError="True" Font-Size="Medium"
                                            CssClass="rfvlabel" ValidationExpression="^([0-9]*)$" ValidationGroup="rfvap"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Publisher Bank A/C No.
                                    </td>
                                    <td>
                                      <asp:TextBox ID="bkpban" CssClass="form-control" placeholder="optional" runat="server"></asp:TextBox>
                                       <asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server" ErrorMessage="* Numbers Only" 
                                            ControlToValidate="bkpban" Display="Dynamic" SetFocusOnError="True" Font-Size="Medium"
                                            CssClass="rfvlabel" ValidationExpression="^([0-9]*)$" ValidationGroup="rfvap"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Pub. Email ID
                                    </td>
                                    <td>
                                        <asp:TextBox ID="bkpemail" CssClass="form-control" placeholder="optional" runat="server"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server" ErrorMessage="* Please Enter Valid Email ID"
                                            Display="Dynamic" CssClass="rfvlabel" ControlToValidate="bkpemail" ValidationGroup="rfvap"
                                            ValidationExpression="^([0-9a-zZ-Z]([-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <table class="table table-borderless table-responsive" align="center" style="width: 300px;
                                background-color: transparent;">
                                <tr>
                                    <td colspan="2" align="center">
                                        <asp:Button ID="submitaddpub" runat="server" class="btn btn-primary btn-block" Text="+ Add" Font-Size=Large
                                            OnClick="submitaddpub_Click" ValidationGroup="rfvap" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

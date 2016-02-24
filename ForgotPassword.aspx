<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs"
    Inherits="SBAIMS.ForgotPassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="icon" type="image/ico" href="/SBAicon.ico" />
    <script src="Scripts/jquery-2.1.0.js" type="text/javascript"></script>
    <script src="Scripts/bootstrap.js" type="text/javascript"></script>
    <script src="Scripts/Site.js" type="text/javascript"></script>
    <link href="Styles/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="Styles/jquery-ui-1.10.4.custom.css" rel="stylesheet" type="text/css" />
    <link href="Styles/Site.css" rel="stylesheet" type="text/css" />
    <title>SBAIMS Password Recovery</title>
</head>
<body>
    <form id="forgotpassword" runat="server">
    <div class="table-responsive">
        <table class="table table-borderless table-condensed black table-responsive" style="position: fixed;
            width: 100%; z-index: 2;">
            <tr>
                <td align="center">
                    <p style="color: #E2E2E2; vertical-align: middle; font-size: 35px;">
                        S.B.A.I.M.S.</p>
                    <p style="color: #E2E2E2; vertical-align: middle; font-size: 15px;">
                        (Shantinath Book Agency Inventory Management System)</p>
                </td>
            </tr>
        </table>
    </div>
    <div class="jumbotron table-responsive" align="center">
        <div class="table-responsive" style="margin-top: 70px">
            <table width="800px" class="table table-borderless">
                
                <tr>
                <td width="35%">
                </td>
                <td width="30%" align="center" style="padding-bottom: 20px;">
                    <img src="sbalarge.png" style="vertical-align: middle;" class="img img-responsive" alt="SBA_Logo" height="110" width="200">
                </td>
                <td width="35%">
                </td>
                </tr>
                
                <tr>
                
                <td colspan=3 align="center">
                    <h4>Please Enter Valid User ID to have the forgotten password sent to 'shantinathbookagency@gmail.com'.</h4>
                </td>
                
                </tr>
                
                <tr>
                <td></td>
                <td>
                    <asp:TextBox ID="chkuserid" CssClass="form-control" runat="server" placeholder="Enter User ID"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Field Required"
                        ControlToValidate="chkuserid" Display="Dynamic" SetFocusOnError="True" Font-Size="Medium"
                        CssClass="rfvlabel" ValidationGroup="rfvuserid"></asp:RequiredFieldValidator>
                    <asp:Label ID="labeluid" runat="server" Visible="false" CssClass="label-warning btn-block" Font-Size="Larger" Text="Username is Icorrect."></asp:Label>
                    <asp:Label ID="pwd" runat="server" Visible="false" Enabled="false" Text=""></asp:Label>
                </td>
                <td></td>
                </tr>
                
                <tr>
                <td></td>
                <td>
                    <asp:Button ID="fpsendmail" ValidationGroup="rfvuserid" CssClass="btn btn-primary btn-block"
                        runat="server" Text="Send Email" OnClick="checkuserid_Click" Font-Size="Medium" />
                </td>
                <td></td>
                </tr>

                <tr>
                <td></td>
                <td align="center">
                    <asp:Button ID="backtologin" OnClick="backtologin_Click" CssClass="form-control btn btn-success" 
                        runat="server" Text="Go Back" Font-Size="Medium"/>
                </td>
                <td></td>
                </tr>

            </table>
        </div>
    </div>
    <p align="center">
        &copy 2014 Copyrights Reserved: S.B.A.I.M.S.</p>
      
    </form>
</body>
</html>

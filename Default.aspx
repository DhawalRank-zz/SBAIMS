<%@ Page Title="SBAIMS Login" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs"
    Inherits="SBAIMS._Default" %>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <link rel="icon" type="image/ico" href="/SBAicon.ico" />
    <script src="Scripts/jquery-2.1.0.js" type="text/javascript"></script>
    <script src="Scripts/bootstrap.js" type="text/javascript"></script>
    <script src="Scripts/Site.js" type="text/javascript"></script>
    <link href="Styles/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="Styles/jquery-ui-1.10.4.custom.css" rel="stylesheet" type="text/css" />
    <link href="Styles/Site.css" rel="stylesheet" type="text/css" />

<title>SBAIMS Login</title>
</head>
<body>
    <form id="mainlogin" runat="server">
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
                    <td>
                    </td>
                    <td>
                        <input type="text" class="form-control" id="userid" placeholder="Enter User ID" runat="server" />
                    </td>
                    <td align="left" valign="top" style="padding-left: 40px; padding-top: 7px;">
                        <asp:RequiredFieldValidator ID="rfvuserid1" runat="server" BackColor="#FFDFDF" ControlToValidate="userid"
                            ErrorMessage="Please Enter User ID" ForeColor="#A40000" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
               
                <tr>
                    <td>
                    </td>
                    <td>
                        <input type="password" class="form-control" id="password" placeholder="Enter Password" runat="server" />
                    </td>
                    <td valign="top" align="left" style="padding-top: 7px; padding-left: 40px">
                        <asp:RequiredFieldValidator ID="rfvpassword1" runat="server" BackColor="#FFDFDF"
                            ControlToValidate="password" ErrorMessage="Please Enter Password" ForeColor="#A40000"
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                
                <tr>
                    <td>
                    </td>
                    <td>
                        <asp:Button CssClass="form-control btn btn-primary btn-block" Text="Log In" Font-Size="Medium" runat="server" ID="login1" OnClick="login1_Click"></asp:Button>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td align="center">
                        <a href="ForgotPassword.aspx" class="form-control btn btn-danger btn-sm" id="forgotpwd" style="font-size:14px;" runat="server">Forgot Password?</a>
                    </td>
                    <td>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <p align="center">
        &copy 2014 Copyrights Reserved: S.B.A.I.M.S.</p>
</form>
</body>
</html>

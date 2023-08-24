<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductRegistration.aspx.cs" Inherits="Assignment10.ProductRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

    <title>Product Registration</title>
    <style type="text/css">
        .auto-style1 {
            width: 515px;
        }
        .auto-style3 {
            width: 515px;
            height: 27px;
        }
        .auto-style4 {
            height: 27px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                 <div class="col-md-4">Apple Product</div>

            </div>
            <div class="row">
                <div class="col-md-4"><asp:Image runat="server" ID="Image3" ImageUrl="~/Image/1.jpg"
                    Width="150" Height="150" CssClass="img-fluid"/></div>
                </div>
        </div>
        <table class="w-100">
            <tr>
                <td class="auto-style1">Product Name</td>
                <td>
                    <asp:TextBox ID="TxtPName" runat="server" Width="279px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtPName" ErrorMessage="Product Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Category</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DdlCategory" runat="server">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DdlCategory" ErrorMessage="Category is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Price</td>
                <td>
                    <asp:TextBox ID="TxtPrice" runat="server" CssClass="offset-sm-0" Width="215px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtPrice" ErrorMessage="Price is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Description</td>
                <td>
                    <asp:TextBox ID="TxtDescription" runat="server" TextMode="MultiLine" Width="304px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtDescription" ErrorMessage="Desciption is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Release Date</td>
                <td>
                    <asp:Calendar ID="CalRD" runat="server" Font-Names="Verdana" Font-Size="8pt" ForeColor="#3333FF" Height="200px" ShowGridLines="True" Width="220px"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="BtnRegister" runat="server" Text="Register Product" OnClick="BtnRegister_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="LblInfo" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
       



    </form>
</body>
</html>

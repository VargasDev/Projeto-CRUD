<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="TrabalhoProg.Clientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Clientes</title>
    <!-- estilo da pág !-->
    <style type="text/css">
        .btn{
            padding:5px;
            border:5px;
        }
        .container{
            width:450px;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 20%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="2" style="font-size: x-large; color: #000000">Complete CRUD in PROG/INFORMATIZE</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td id="CodLabel" class="auto-style2">Código </td>
                    <td>
                        <asp:TextBox class="container" ID="TextBox1" runat="server" MaxLength="8"></asp:TextBox>
                        <asp:Button class="btn" ID="Button4" runat="server" BackColor="#3333FF" Font-Bold="True" ForeColor="White" Text="Get" BorderStyle="Dotted" OnClick="Button4_Click" />
                    </td>
                </tr>
                <tr>
                    <td id="NomeLabel" class="auto-style2">Nome </td>
                    <td>
                        <asp:TextBox class="container" ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td id="EndLabel" class="auto-style2">Endereço</td>
                    <td>
                        <asp:TextBox class="container" ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button class="btn" ID="Button1" runat="server" BackColor="#009933" Font-Bold="True" ForeColor="White" Text="Insert" BorderStyle="Dotted" OnClick="Button1_Click" />
                        <asp:Button class="btn" ID="Button2" runat="server" BackColor="#FF6600" Font-Bold="True" ForeColor="White" Text="Update" BorderStyle="Dotted" OnClick="Button2_Click" />
                        <asp:Button class="btn" ID="Button3" runat="server" BackColor="#FF3300" Font-Bold="True" ForeColor="White" Text="Delete" BorderStyle="Dotted" OnClick="Button3_Click" OnClientClick="return confirm(&quot;Confirmar exclusão?&quot;);" />
           
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:GridView class="tablestyle" ID="GridView1" runat="server" Width="1137px">
                            <HeaderStyle BackColor="#333333" ForeColor="White" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

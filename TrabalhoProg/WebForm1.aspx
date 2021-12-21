<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TrabalhoProg.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>TrabalhoProg</title>
     <!-- estilo da pág !-->
    <style>
        h1{
            text-align:center;
        }
        .buttonini{
            text-align:center;
        }
    </style>
     <!-- estilo da pág !-->
</head>
<body>
    <form id="Loja" runat="server">
       <h1> Loja </h1>
            <div class="buttonini">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Cliente" />
            </div>     
    </form>
</body>
</html>

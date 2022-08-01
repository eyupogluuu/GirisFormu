<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="veriler.aspx.cs" Inherits="GirisFormu.veriler" %>

<!DOCTYPE html>
<html>
<head>
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style>
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
        }

        li {
            float: left;
        }

            li a {
                display: block;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

                li a:hover {
                    background-color: #b924a8;
                }
    </style>
</head>
<body>

    <ul>
        <li><a class="active" href="#home">Anasayfa</a></li>
        <li><a href="#news">Kullanıcılar</a></li>
        <li><a href="#contact">Şifreler</a></li>
        <li><a href="#about">Yeni Kullanıcı</a></li>
    </ul>
    <form method="post" runat="server">
    <table class="table table-bordered">
        <tr>
            <th>ID </th>
            <th>Kullanıcı Adı</th>
            <th>Şifre</th>
            <th>Sil</th>
            <th>Güncelle</th>
        </tr>

        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("AdminID") %></td>
                    <td><%# Eval("KullaniciAdi") %></td>
                    <td><%# Eval("Sifre") %></td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Sil" class="btn btn-danger" /></td>
                    <td><asp:Button ID="Button2" runat="server" Text="Güncelle" class="btn btn-success" /></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
</form>
</body>
</html>



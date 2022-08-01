<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="GirisFormu._default" %>

<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Admin Giriş Paneli</title>
<link href='http://fonts.googleapis.com/css?family=Droid+Sans' rel='stylesheet' type='text/css'>
<link href="purple_loginform-pack/css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<!-- -->
<script>var __links = document.querySelectorAll('a');function __linkClick(e) { parent.window.postMessage(this.href, '*');} ;for (var i = 0, l = __links.length; i < l; i++) {if ( __links[i].getAttribute('data-t') == '_blank' ) { __links[i].addEventListener('click', __linkClick, false);}}</script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script>$(document).ready(function(c) {
	$('.alert-close').on('click', function(c){
		$('.message').fadeOut('slow', function(c){
	  		$('.message').remove();
		});
	});	  
});
</script>
</head>
<body>
<!-- contact-form -->	
<div class="message warning">
<div class="inset">
	<div class="login-head">
		<h1>Giriş Formu</h1>
		 <div class="alert-close"> </div> 			
	</div>
		<form method="post" runat="server">
			<li>
				<asp:TextBox ID="Textkuladi" runat="server" placeholder="Kullanıcıadı"></asp:TextBox>
			</li>
				<div class="clear"> </div>
			<li>
					<asp:TextBox ID="Textsifre" runat="server" placeholder="********" TextMode="Password"></asp:TextBox>
			</li>
			<div class="clear"> </div>
			<div class="submit">
				<asp:Button ID="Button1" runat="server" Text="Giriş Yap" CssClass="btn btn-dark" OnClick="Button1_Click" />
				<h4><a href="#">Şifreni mi Unuttun?</a></h4>
						  <div class="clear">  </div>	
			</div>
				
		</form>
		</div>					
	</div>
	</div>
	<div class="clear"> </div>
<!--- footer --->
<div class="footer">
	<p>Tasarım <a >Onur Eyupoglu</a></p>
</div>
</body>
</html>

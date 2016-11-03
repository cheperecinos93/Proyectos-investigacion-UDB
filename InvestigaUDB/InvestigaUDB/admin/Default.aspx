<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="InvestigaUDB.admin.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="../Content/bootstrap.min.css" />
    <link rel="stylesheet" href="../Content/custom-style.css"/>
    <link rel="stylesheet" href="../Content/simple-sidebar.css"/>
    <link rel="stylesheet" href="../font-awesome/css/font-awesome.min.css"/>
    <script type="text/javascript" src="../Scripts/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="../Scripts/jquery-ui.min.js"></script>
    <script type="text/javascript" src="../Scripts/bootstrap.min.js"></script>
    <title>Investiga UDB</title>
</head>
<body>
    <div class="container-fluid">
	    <div class="row">
            <nav class='navbar navbar-default navbar-fixed-top navigation' style="background-color:#367fa9; border-bottom-color:#367fa9;">
	            <div class='container-fluid'>
                <div class='navbar-header'>
                  <button type='button' class='navbar-toggle collapsed' data-toggle='collapse' data-target='#bs-example-navbar-collapse-1'>
                    <span class='sr-only'>Toggle navigation</span>
                    <span class='icon-bar'></span>
                    <span class='icon-bar'></span>
                    <span class='icon-bar'></span>
                  </button>
                  <a class='navbar-brand' id="menu-toggle" href="#menu-toggle"><i class="fa fa-bars"></i>&nbsp;&nbsp;</a><b class='navbar-brand'>UDB INVESTIGA</b>
	            </div>
	            <!-- OPCIONES DE MENU NAVBAR -->
	            <div class='collapse navbar-collapse' id='bs-example-navbar-collapse-1'>	
	            <ul class='nav navbar-nav navbar-right'>
                    <li><a href='#'  style="color:white;" id="loginbtn">ADMNINISTRADOR DEMO <i class="fa fa-angle-double-down"></i></a></li>
                </ul>
                </div>
                </div>
            </nav><br /><br />
            <div id="wrapper">
		        <!-- OPCIONES MENU LATERAL -->
		        <div id="sidebar-wrapper">
		        <ul class="sidebar-nav">
			        <li><a href="#" style="cursor:default;" id="headbar"><br></a></li><style>#headbar:hover {background-color: #222d32;}</style>
                    <li style="text-indent: 0px; margin-bottom:8px;"><center><img src='../Content/img/udb-logo-only.png' width="75" height="85"/></center></li>
                    <li style="text-indent: 35px;"><a href="#" style="cursor:default; background-color:#1a2226; color:#4b646f; font-size:14px; box-sizing: border-box;">MENU</a></li>
                    <li><a href="#" ><span class="fa fa-home"></span> INICIO</a></li>
                    <li><a href="#" ><span class="fa fa-building-o"></span> FACULTAD</a></li>
                    <li><a href="#" ><span class="fa fa-users"></span> GRUPOS</a></li>
                    <li><a href="#" ><span class="fa fa-user"></span> PERSONAS</a></li>
                    <li><a href="#" ><span class="fa fa-bullhorn"></span> NOTICIAS</a></li>                    
                    <li><a href="#" ><span class="fa fa-calendar"></span> CALENDARIO</a></li>
                    <li style="text-indent: 35px;"><a href="#" style="cursor:default; background-color:#1a2226; color:#4b646f; font-size:14px; box-sizing: border-box;">NUEVOS CONTACTOS</a></li>
                    <li><a href="#" ><span class="fa fa-envelope-square"></span> CONTACTOS</a></li>
                </ul>
                </div>
                <div id="page-content-wrapper">
                </div>
            </div>
            <script>
		        $("#menu-toggle").click(function(e) {
			        e.preventDefault();
			        $("#wrapper").toggleClass("toggled");
		        });
	        </script>
        </div>
    </div>
</body>
</html>

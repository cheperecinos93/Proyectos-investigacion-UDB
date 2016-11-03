<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="InvestigaUDB.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
    <link rel="stylesheet" href="Content/custom-style.css"/>
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css"/>
    <script type="text/javascript" src="Scripts/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="Scripts/jquery-ui.min.js"></script>
    <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
    <title>Investiga UDB</title>
</head>
<body>
    <div class="loginFloat bar-close" id="loginfloatarea">
        <div class="contentloginFloat">
            <center>
                <h4 id="textoanimado" style="color:white;">INICIAR SESION</h4>
                <input type="text" class="form-control input-sm" placeholder="Usuario" /><br />            
                <input type="password" class="form-control input-sm" placeholder="Contrase&ntilde;a" /><br />                               
            </center>
            <span class="pull-right"><a href="admin/" class="btn btn-warning btn-sm">INICIAR SESION</a>&nbsp;&nbsp;<a href="#" id="cerrarloginfloatarea" class="btn btn-primary btn-sm">&nbsp;&nbsp;&nbsp;CANCELAR&nbsp;&nbsp;&nbsp;</a> </span> 
        </div>
    </div> 
    <div class="container-fluid">
       <nav class='navbar navbar-default navbar-fixed-top navigation' style="background-color:#367fa9; border-bottom-color:#367fa9;">
	        <div class='container-fluid'>
            <div class='navbar-header'>
              <button type='button' class='navbar-toggle collapsed' data-toggle='collapse' data-target='#bs-example-navbar-collapse-1'>
                <span class='sr-only'>Toggle navigation</span>
                <span class='icon-bar'></span>
                <span class='icon-bar'></span>
                <span class='icon-bar'></span>
              </button>
              <b class='navbar-brand'>UDB INVESTIGA</b>
	        </div>
	        <!-- OPCIONES DE MENU NAVBAR -->
	        <div class='collapse navbar-collapse' id='bs-example-navbar-collapse-1'>	
	        <ul class='nav navbar-nav navbar-right'>
                <li><a href='#'  style="color:white;" id="loginbtn">Iniciar sesi&oacute;n</a></li>
            </ul>
            </div>
            </div>
        </nav><br /><br />
        <section class="row" style="background-color:#EEE; padding:1%;">
            <div class="col-lg-2 col-md-2 col-sm-2 col-xs-12"> 
                <center><img src="Content/img/logoudb.png" width="170" height="180"/></center>
            </div>
            <div class="col-lg-10  col-md-10 col-sm-10 col-xs-12">                
                <h3><b>FACULTAD DE INGENIER&Iacute;A</b></h3>
                <h4>Fue establecida desde la misma fundaci&oacute;n de la Universidad Don Bosco con el prop&oacute;sito de promover una permanente transferencia tecnol&oacute;gica a trav&eacute;s de sus programas acad&eacute;micos.</h4>
                <h4> La Facultad est&aacute; organizada en seis escuelas que administran nueve carreras legalmente constituidas que abarcan las diversas &aacute;reas de la ingenier&iacute;a. Cuenta adem&aacute;s con todas las facilidades humanas, materiales y de infraestructura para el desarrollo de las diversas actividades docentes, de investigaci&oacute;n y extensi&oacute;n universitaria.</h4>                
            </div>    
        </section><br />
        <section class="row" style="background-color:#FFF;">
            <div class="col-lg-4 col-md-4 col-sm-4">
                <center><h4><b>GRUPOS DE INVESTIGACION</b></h4></center>
                <hr class="divisionhr"/><br />                         
				<div class="list-group">
                    <a href='#' class='list-group-item'>Grupo 1</a>
                    <a href='#' class='list-group-item'>Grupo 2</a>
                    <a href='#' class='list-group-item'>Grupo 3</a>
                    <a href='#' class='list-group-item'>Grupo 4</a>
                    <a href='#' class='list-group-item'>Grupo 5</a>
                    <a href='#' class='list-group-item'>Grupo 6</a>
				</div>		    
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4">
                <center><h4><b>NOTICIAS</b></h4></center>
                <hr class="divisionhr"/><br />                                 
				<div class="list-group">
                    <a href='#' class='list-group-item'>Noticia 1</a>
                    <a href='#' class='list-group-item'>Noticia 2</a>
                    <a href='#' class='list-group-item'>Noticia 3</a>
                    <a href='#' class='list-group-item'>Noticia 4</a>
                    <a href='#' class='list-group-item'>Noticia 5</a>
                    <a href='#' class='list-group-item'>Noticia 6</a>
				</div>			    
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4">
                <center><h4><b>CALENDARIO</b></h4></center>
                <hr class="divisionhr"/><br />                          
				<div class="list-group">
                    <a href='#' class='list-group-item'>Noticia 1</a>
                    <a href='#' class='list-group-item'>Noticia 2</a>
                    <a href='#' class='list-group-item'>Noticia 3</a>
                    <a href='#' class='list-group-item'>Noticia 4</a>
                    <a href='#' class='list-group-item'>Noticia 5</a>
                    <a href='#' class='list-group-item'>Noticia 6</a>
				</div>			    
            </div>                       
        </section>
        <section class="row" style="background-color:#EEE;">
            <div class="col-lg-4 col-md-4 col-sm-4">
                <center><h4><b>MISION</b></h4></center>
                <hr class="divisionhr"/><br /> 
                <p>Nuestra principal misi&oacute;n es la generaci&oacute;n,  producci&oacute;n, integraci&oacute;n, aplicaci&oacute;n y divulgaci&oacute;n de  conocimientos cient&iacute;ficos pertinentes, resultantes de  los diferentes procesos investigativos e innovadores  de tal forma que contribuyan al desarrollo de la  ciencia y la tecnolog&iacute;a</p>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4">
                <center><h4><b>VISION</b></h4></center>
                <hr class="divisionhr"/><br /> 
                <p>Ser una Facultad reconocida a nivel nacional e  internacional por la generaci&oacute;n de proyectos de  investigaci&oacute;n de primer nivel y la producci&oacute;n de  publicaciones cient&iacute;ficas con altos est&aacute;ndares de  calidad.</p>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4">
                <center><h4><b>PORQUE LO HACEMOS</b></h4></center>
                <hr class="divisionhr"/><br />
                <p>Como parte del cambio hacia una cultura de  investigaci&oacute;n y la generaci&oacute;n de proyectos, se plantea un modelo basado en grupos de investigaci&oacute;n.<br>
                Los grupos y l&iacute;neas de investigaci&oacute;n se han  seleccionado acorde al estado del arte actual y bajo un  concepto de excelencia y desarrollo de investigaci&oacute;n de primer nivel.
                </p> 
            </div>
        </section>
        <section class="row" style="background-color:#FFF;">
            <div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-12">
                <center><h4><b>CONTACTA CON NOSOTROS</b></h4></center>
                <hr class="divisionhr"/><br />
                <form role="form" action="" method="post">
	                <div class="row">                   
	                <div class="col-lg-6">
                    <div class="form-group">
                     <label for="nombre">Nombre:</label>
                     <input type="text" class="form-control" id="nombre" name="nombre" required placeholder="Nombre">
                    </div>
                    <div class="form-group">
                     <label for="facultad">Correo:</label>
                     <input type="email" class="form-control" id="correo" name="correo" required placeholder="Correo">
                    </div>
                    </div>
                    <div class="col-lg-6">
                    <div class="form-group">
                     <label for="comen">Comentario:</label>
                     <textarea class="form-control" rows="5" id="comen" name="comen" required placeholder="Comentarios"></textarea>
                    </div>
                    </div>
                    </div>
                    <hr>
                    <div class="text-center">
                        <button type="submit" name="boton" class="btn btn-primary"><i class="fa fa-paper-plane"></i> Enviar</button><br /><br />
                    </div>
               </form>
            </div>
        </section>
        <section class="row" style="background-color:#EEE;">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <center><h4><b>MAPA DEL CAMPUS</b></h4></center>
                <hr class="divisionhr"/><br />
            </div>
            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d3876.041957026599!2d-89.15588738563952!3d13.715908701820638!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses-419!2ssv!4v1450278698916" width="100%" height="30%" frameborder="0" style="border:0" allowfullscreen></iframe>
            <br /><br /><br /><br />
        </section>        
    </div>
    <div class="footerFloat">
        <center><b>Copyright &copy; Facultad de Ingenier&iacute;a - UDB INVESTIGA</b></center>
    </div>
    <script>
        $("#loginbtn").click(function () {
            $("#loginfloatarea").show('fade', 1000).removeClass("bar-close").addClass("bar-open");
        });
        cerrarloginfloatarea
        $("#cerrarloginfloatarea").click(function () {
            $("#loginfloatarea").hide('fade', 1000).removeClass("bar-open").addClass("bar-close");
        });
    </script>    
</body>
</html>

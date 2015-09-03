<% if (env === 'prod') { %>
    <?php
    defined('BASEPATH') OR exit('No direct script access allowed');
    ?>
<% } %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="Es una firma dedicada a la generación de desarrollos inmobiliarios">
    <meta name="author" content="">
    <link rel="icon" href="app/img/favicon.png">

    <title>Concepto NEA</title>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,800' rel='stylesheet' type='text/css'>
    <div class="container-fluid container-top">
      <div class="container container-top-inner">
        <div class="row">
          <img class="col-xs-6 col-xs-offset-3 col-md-offset-4 col-md-4 col-sm-offset-4 col-sm-4 marca-top" src="app/img/marca-01.png">
        </div>
        <div class="row">
          <h1 class="col-md-12 hidden-xs">CONCEPTO NEA</h1>
          <p class="col-md-12">Es una firma dedicada a la generación de desarrollos inmobiliarios que junto al grupo FIDES y a la empresa constructora SCALA y a un equipo interdisciplinario de profesionales asociaciados, pretende seguir cada uno de los proyectos y desarrollos inmobiliarios, para lograr un producto eficiente al alcance de sus manos.</p>
        </div>
      </div>
        <picture class="fachada">
          <source 
            media="(min-width: 1200px)"
            srcset="app/img/fachada-large.jpg">
          <source 
            media="(min-width: 992px)"
            srcset="app/img/fachada-pc.jpg">
          <source 
            media="(min-width: 768px)"
            srcset="app/img/fachada-tablet.jpg">
          <img 
            src="app/img/fachada-mobile.jpg" 
            alt="">
        </picture>
    </div>

    <script type="text/template" id="modal-template">
      <div class="modal-header hidden-md hidden-lg">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title"></h4>
      </div>
      <div class="modal-body">
        <picture class="fachada">
          <source 
            media="(min-width: 768px)"
            srcset="app/img/{{normal-img}}">
          <img 
            src="app/img/{{mobile-img}}" 
            alt="a cute kitten">
        </picture>
      </div>
    </script>

    <div class="container-fluid">
      <div class="row thumbnails">
        <div class="thumbnail-col col-xs-6 col-sm-3 col-md-3 col-xl-3">
          <a href="#" class="thumbnail"
            data-toggle="modal"
            data-modal-title="foto interior"
            data-modal-image="modal-prototipos.jpg"
            data-modal-image-mobile="modal-prototipos-mobile.jpg"
            data-target="#thumbnail-modal">
            <img src="app/img/thumbnail-00.jpg" alt="foto interior 2">
          </a>
        </div>
        <div class="thumbnail-col col-xs-6 col-sm-3 col-md-3 col-xl-3">
          <a href="#" class="thumbnail"
            data-toggle="modal"
            data-modal-title="foto interior"
            data-modal-image="modal-cocina.jpg"
            data-modal-image-mobile="modal-cocina-mobile.jpg"
            data-target="#thumbnail-modal">
            <img src="app/img/thumbnail-01.jpg" alt="foto interior 2">
          </a>
        </div>
        <div class="thumbnail-col col-xs-6 col-sm-3 col-md-3 col-xl-3">
          <a href="#" class="thumbnail"
            data-toggle="modal"
            data-modal-image="modal-mesa.jpg"
            data-modal-image-mobile="modal-mesa-mobile.jpg"
            data-modal-title="foto interior"
            data-target="#thumbnail-modal">
            <img src="app/img/thumbnail-02.jpg" alt="foto interior 3">
          </a>
        </div>
        <div class="thumbnail-col col-xs-6 col-sm-3 col-md-3 col-xl-3">
          <a href="#" class="thumbnail"
            data-toggle="modal"
            data-modal-image="modal-terraza.jpg"
            data-modal-image-mobile="modal-terraza-mobile.jpg"
            data-modal-title="foto interior"
            data-target="#thumbnail-modal">
            <img src="app/img/thumbnail-03.jpg" alt="foto interior 4">
          </a>
        </div>
      </div>
      <!-- Modal -->
    <div id="thumbnail-modal" class="modal fade modal-wide" role="dialog">
      <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
        </div>
      </div>
    </div>
  </div>

  <div class="container">
    <div class="row">
      <div class="col-proyecto col-md-12">
        <h2>PROYECTO</h2>
        <p>
          SUPERFICIE TOTAL: 1200 m2 · PLANTA BAJA + 3 NIVELES · 2 LOCALES COMERCIALES EN
          PB · MONO AMBIENTES DE 1, 2 Y 3 DORMITORIOS · COCHERAS · QUINCHO Y PARRILLAS
          EN TERRAZA · PISCINA SOLARIUM EN TERRAZA · PARRILLA INDIVIDUALES EN BALCONES
        </p>
      </div>
    </div>
  </div>

  <div id="message-modal" class="modal fade" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title"></h4>
        </div>
        <div class="modal-body">
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
        </div>
      </div>
    </div>
  </div>

  <div class="container-fluid container-mapa">
    <div id="map-canvas"></div>
  </div>

  <div class="container container-contacto">

      <div class="row row-contacto">
        <div class="col-md-2 col-contacto">
          <h3>CONTACTO</h3>
          <p>
            Av. Italia 1550<br>
            0365 - 44885
          </p>
          <div class="row">
            <div class="col-md-12 col-marca-contacto">
              <img src="app/img/marca-02.png">
            </div>
          </div>
          <div class="row">
            <div class="col-md-12 col-marca-contacto">
              <img class="marca-03" src="app/img/marca-03.png">
            </div>
          </div>
        </div>
        <form class="contact-form col-md-8 col-md-offset-2">
          <h3>ESCRÍBANOS</h3>
          <div class="form-group">
            <input type="text" class="form-control" name="nombre" placeholder="NOMBRE*" required>
          </div>
          <div class="form-group">
            <input type="email" class="form-control" name="email" placeholder="EMAIL*" required>
          </div>
          <div class="form-group">
            <textarea class="form-control" name="mensaje" rows="3" placeholder="MENSAJE*" required></textarea>
          </div>
          <div class="form-group">
            <input type="text" class="form-control" name="telefono" placeholder="TELÉFONO">
          </div>
          <button type="submit" class="btn btn-default btn-block btn-enviar">ENVIAR</button>
        </form>
      </div>
      <footer class="footer row">
        <p>Desarrollado por <a href="https://www.facebook.com/estudioliba"><strong>Liba</strong></a></p>
      </footer>

    </div> <!-- /container -->
    <% if (environment === 'dev') { %>
        <script data-main="app/config" src="bower_components/requirejs/require.js"></script>
    <% } else { %>
        <link rel="stylesheet" href="webapp/dist/require.css"></link>
        <script data-main="app/config" src="webapp/dist/require.min.js"></script>
    <% } %>
  </body>
</html>



    <?php
    defined('BASEPATH') OR exit('No direct script access allowed');
    ?>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Narrow Jumbotron Template for Bootstrap</title>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <div class="container">

      <div class="jumbotron"></div>

      <div class="row">
        <div class="col-xs-12 col-sm-6 col-md-3">
          <a class="thumbnail" data-toggle="modal" data-modal-title="foto interior" data-target="#thumbnail-modal">
            <img src="app/img/interior1.jpg" alt="foto interior 1">
          </a>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-3">
          <a href="#" class="thumbnail" data-toggle="modal" data-modal-title="foto interior"  data-target="#thumbnail-modal">
            <img src="app/img/interior2.jpg" alt="foto interior 2">
          </a>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-3">
          <a href="#" class="thumbnail" data-toggle="modal" data-modal-title="foto interior"  data-target="#thumbnail-modal">
            <img src="app/img/interior3.jpg" alt="foto interior 3">
          </a>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-3">
          <a href="#" class="thumbnail" data-toggle="modal" data-modal-title="foto interior"  data-target="#thumbnail-modal">
            <img src="app/img/interior4.jpg" alt="foto interior 4">
          </a>
        </div>
      </div>

      <div class="row">
        <div class="col-md-6">
          <h2>Sub titulo</h2>
          <p>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
          </p>
        </div>
        <div class="col-md-6">
          <h2>Sub titulo</h2>
          <p>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
          </p>
        </div>
      </div>

      <div class="row row-centered">
        <div class="col-xs-12 col-md-9 col-centered">
          <div class="trade col-xs-12 col-md-4 col-centered"><div class="thumbnail">lorem ipsum</div></div>
          <div class="trade col-xs-12 col-md-4 col-centered"><div class="thumbnail">lorem ipsum</div></div>
          <div class="trade col-xs-12 col-md-4 col-centered"><div class="thumbnail">lorem ipsum</div></div>
        </div>
      </div>

      <!-- Modal -->
    <div id="thumbnail-modal" class="modal fade" role="dialog">
      <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
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

      <div class="row">
        <div class="col-md-6">
          <div id="map-canvas"></div>
        </div>

        <form class="contact-form col-md-4 col-md-offset-1">
          <div class="form-group">
            <input type="text" class="form-control" placeholder="Nombre">
          </div>
          <div class="form-group">
            <input type="email" class="form-control" placeholder="Email">
          </div>
          <div class="form-group">
            <textarea class="form-control" rows="3"></textarea>
          </div>
          <button type="submit" class="btn btn-default btn-block">Submit</button>
        </form>
      </div>
      <footer class="footer row">
        <p>&copy; Company 2014</p>
      </footer>

    </div> <!-- /container -->
    
        <link rel="stylesheet" href="webapp/dist/require.css"></link>
        <script data-main="app/config" src="webapp/dist/require.min.js"></script>
    
  </body>
</html>


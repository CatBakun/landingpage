define([
    'async!https://maps.googleapis.com/maps/api/js?v=3.exp',
    'jquery',
    'bootstrapJS',
    'css!bootstrapCSS',
    'css!../app/css/jumbotron-narrow.css',
    'css!../app/css/map.css',
    'css!../app/css/contact-form.css',
    'css!../app/css/footer.css',
    'css!../app/css/modal.css',
    '../app/js/ie10-viewport-bug-workaround'
], function() {
    var map = new google.maps.Map(document.getElementById('map-canvas'), {
        zoom: 16,
        center: {lat: -27.472346, lng: -58.832968} 
    });
    new google.maps.Marker({
        position: map.getCenter(),
        map: map,
        title: 'Click to zoom'
    });

    $('[data-target="#thumbnail-modal"]').on('click', function(e){
        $('#thumbnail-modal .modal-body').html($(this).find('img').clone());
        $('#thumbnail-modal .modal-title').html($(this).data('modal-title'));
    });

    $('form').on('submit', function(e){
        e.preventDefault();
        console.log($(this));
        $.post( "/index.php/contact", $( "form" ).serialize())
        .done(function(data){
            $('#thumbnail-modal .modal-title').text('Mensaje enviado');
            $('#thumbnail-modal .modal-body').text('Nos vamos a contactar con usted.');
            $('#thumbnail-modal').modal('show');
        })
        .fail(function(){
            $('#thumbnail-modal .modal-title').text('No se envió el mensaje ');
            $('#thumbnail-modal .modal-body').text('Verifique su conexion a internet o intente mas tarde.');
            $('#thumbnail-modal').modal('show');
        });
    });
});

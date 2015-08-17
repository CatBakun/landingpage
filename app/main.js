define([
    'jquery',
    'async!https://maps.googleapis.com/maps/api/js?v=3.exp',
    'bootstrapJS',
    'css!bootstrapCSS',
    'css!../app/css/jumbotron-narrow.css',
    'css!../app/css/map.css',
    'css!../app/css/contact-form.css',
    'css!../app/css/footer.css',
    'css!../app/css/modal.css',
    '../app/js/ie10-viewport-bug-workaround'
], function($) {
    var map = new google.maps.Map(document.getElementById('map-canvas'), {
        zoom: 17,
        scrollwheel: false,
        navigationControl: false,
        mapTypeControl: false,
        scaleControl: false,
        draggable: false,
        center: {lat: -27.442668, lng: -58.9684809}
    });
    new google.maps.Marker({
        position: map.getCenter(),
        map: map,
        title: 'Av. Italia 1550'
    });

    $('[data-target="#thumbnail-modal"]').on('click', function(){
        $('#thumbnail-modal .modal-content').html(
            $('#modal-template').text()
            .replace('{{normal-img}}', $(this).data('modal-image'))
            .replace('{{mobile-img}}', $(this).data('modal-image-mobile'))
        );
        $('#thumbnail-modal .modal-title').html('&nbsp');
    });

    $('form').on('submit', function(e){
        e.preventDefault();
        $('#message-modal .modal-title').text('Espre');
        $('#message-modal .modal-body').text('Su mensaje se esta enviando');
        $('#message-modal .modal-body').attr('disabled', 'disabled');
        $('#message-modal').one('shown.bs.modal', function(){
            $.post( "/index.php/contact", $( "form" ).serialize())
            .done(function(){
                $('#message-modal .modal-title').text('Mensaje enviado');
                $('#message-modal .modal-body').text('Nos vamos a contactar con usted.');
                $('form').find('input, textarea').val('');
            })
            .fail(function(){
                $('#message-modal .modal-title').text('No se envió el mensaje ');
                $('#message-modal .modal-body').text('Verifique su conexion a internet o intente mas tarde.');
            })
            .always(function(){
                $('#message-modal .modal-body').removeAttr('disabled');
            });
        });
        $('#message-modal').modal('show');
    });
});

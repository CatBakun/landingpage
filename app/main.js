define([
    'async!https://maps.googleapis.com/maps/api/js?v=3.exp',
    'jquery',
    'bootstrapJS',
    'css!bootstrapCSS',
    'css!../app/css/jumbotron-narrow.css',
    'css!../app/css/map.css',
    'css!../app/css/contact-form.css',
    'css!../app/css/footer.css',
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
});

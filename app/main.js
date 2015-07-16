// to depend on a bower installed component:
// define(['bower_components/componentName/file'])

define([
    "jquery",
    'bootstrapJS',
    'css!bootstrapCSS',
    'css!../app/css/jumbotron-narrow.css',
    '../app/js/ie10-viewport-bug-workaround'
], function() {
  window.title = 'Landing page';
});

require.config({
  // make components more sensible
  // expose jquery
  paths: {
    'components': '../bower_components',
    'jquery': '../bower_components/jquery/dist/jquery',
    'bootstrapJS': '../bower_components/bootstrap/dist/js/bootstrap',
    'bootstrapCSS': '../bower_components/bootstrap/dist/css/bootstrap',
    'async': '../bower_components/requirejs-plugins/src/async'
  },
  shim: {
      'bootstrapJS': {
          deps: ['jquery']
      }
  },
  map: {
      '*': {
        'css': '../bower_components/require-css/css' // or whatever the path to require-css is
      }
    }
});

if (!window.requireTestMode) {
  require(['main'], function(){ });
}






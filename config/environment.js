/* jshint node: true */

module.exports = function(environment) {
  var ENV = {
    modulePrefix: 'app',
    environment: environment,
    baseURL: '/',
    locationType: 'auto',
    EmberENV: {
      FEATURES: {
        // Here you can enable experimental features on an ember canary build
        // e.g. 'with-controller': true
      }
    },

    APP: {
      // Here you can pass flags/options to your application instance
      // when it is created
      API_HOST: 'http://localhost:3000'
    }
  };

  // http://ember-simple-auth.com/
  // requests to a backend server that requires authorization
  ENV['simple-auth'] = {
    serverTokenRevocationEndpoint: '/revoke',
    authorizer: 'simple-auth-authorizer:oauth2-bearer'
  };

  // authenticator would by default use the same domain and port to send the authentication requests
  ENV['simple-auth-oauth2'] = {
    serverTokenEndpoint: 'http://localhost:3000/oauth/token'
  }

  // disable coffeescript blueprints
  ENV.coffeeOptions = {
    blueprints: true
  }

  if (environment === 'development') {
    // ENV.APP.LOG_RESOLVER = true;
    // ENV.APP.LOG_ACTIVE_GENERATION = true;
    // ENV.APP.LOG_TRANSITIONS = true;
    // ENV.APP.LOG_TRANSITIONS_INTERNAL = true;
    // ENV.APP.LOG_VIEW_LOOKUPS = true;

    ENV.APP.API_HOST = 'http://localhost:3000';
  }

  if (environment === 'test') {
    // Testem prefers this...
    ENV.baseURL = '/';
    ENV.locationType = 'none';

    // keep test console output quieter
    ENV.APP.LOG_ACTIVE_GENERATION = false;
    ENV.APP.LOG_VIEW_LOOKUPS = false;

    ENV.APP.rootElement = '#ember-testing';
    ENV.APP.API_HOST = 'http://localhost:3000';
  }

  if (environment === 'production') {
    ENV.APP.API_HOST = 'http://localhost:3000';
  }

  return ENV;
};

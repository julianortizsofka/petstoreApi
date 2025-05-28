function fn() {
  var env = karate.env;
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    appId: 'https://petstore.swagger.io/v2/user'
  };
  if (env == 'stage') {
    // over-ride only those that need to be
    config.someUrlBase = 'https://petstore.swagger.io/v2/user';
  } else if (env == 'e2e') {
    config.someUrlBase = 'https://petstore.swagger.io/v2/user';
  }
  // don't waste time waiting for a connection or if servers don't respond within 5 seconds
  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);
  return config;
}
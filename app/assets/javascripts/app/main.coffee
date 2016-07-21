app = angular.module('app', ['ngRoute','templates', 'asset-path'])
app.config ['$routeProvider',
  ($routeProvider) ->
    $routeProvider.
      otherwise({
        templateUrl: 'index.html'
        controller: 'HomeController'
      })
]

app = angular.module('app', ['ngRoute','templates'])
app.config ['$routeProvider',
  ($routeProvider) ->
    $routeProvider.
      otherwise({
        templateUrl: 'index.html'
        controller: 'HomeController'
      })
]

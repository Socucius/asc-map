app = angular.module('app', ['templates'])
app.config ['$routeProvider',
  ($routeProvider) ->
    $routeProvider.
      otherwise({
        templateUrl:
        controller: 'HomeController'
      })
]

app = angular.module('app', [])
app.config ['$routeProvider',
  ($routeProvider) ->
    $routeProvider.
      otherwise({
        templateUrl:
        controller: 'HomeController'
      })
]

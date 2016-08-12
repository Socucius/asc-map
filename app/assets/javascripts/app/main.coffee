angular.module('factories', [])
dependencies = [
  'factories',
  'ngRoute',
  'ngResource',
  'templates',
  'asset-path'
]
app = angular.module('app', dependencies)
app.config ['$routeProvider'
  ($routeProvider) ->
    $routeProvider.
      otherwise({
        templateUrl: 'index.html'
        controller: 'HomeController'
        resolve:
          categories: (Category) ->
            Category.query().$promise
      })
]

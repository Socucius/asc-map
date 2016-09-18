angular.module('factories', [])
dependencies = [
  'factories',
  'ngRoute',
  'restangular',
  'templates',
  'asset-path'
]
app = angular.module('app', dependencies)
app.constant('_', window._)
app.run ($rootScope) ->
  $rootScope._ = window._
app.config ['$routeProvider', 'RestangularProvider'
  ($routeProvider, RestangularProvider) ->
    RestangularProvider.setBaseUrl('/api/v1')
    $routeProvider.
      otherwise({
        templateUrl: 'index.html'
        controller: 'HomeController'
        resolve:
          categories: ['Restangular', (Restangular) ->
            Restangular.all('categories').getList()
          ]
      })
]

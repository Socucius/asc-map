angular.module('factories', [])
dependencies = [
  'factories',
  'ui.router',
  'restangular',
  'templates',
  'asset-path',
  'ngMap'
]
app = angular.module('app', dependencies)
app.constant('_', window._)
app.run ($rootScope) ->
  $rootScope._ = window._
app.config ['$stateProvider', '$urlRouterProvider', 'RestangularProvider'
  ($stateProvider, $urlRouterProvider, RestangularProvider) ->
    RestangularProvider.setBaseUrl('/api/v1')
    $stateProvider
      .state('map', {
        url: '/map/:categoryId'
        templateUrl: 'map/index.html'
        controller: 'MapController'
        resolve:
          places: ['Restangular', (Restangular) ->
            
          ]
      })
      .state('home', {
        url: '/'
        templateUrl: 'index.html'
        controller: 'HomeController'
        resolve:
          categories: ['Restangular', (Restangular) ->
            Restangular.all('categories').getList()
          ]
      })
    $urlRouterProvider.otherwise('/')

]
app.run ['$rootScope', ($rootScope) ->
  $rootScope.gmapsApi = "https://maps.google.com/maps/api/js"
]

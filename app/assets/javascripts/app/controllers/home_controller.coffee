angular.module('app').controller 'HomeController', [
  '$scope', 'categories', '$rootScope'
  ($scope, categories, $rootScope) ->
    $scope.categories = categories
    console.log 'HOME'
]

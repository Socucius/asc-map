angular.module('app').controller 'HomeController', [
  '$scope', 'categories'
  ($scope, categories) ->
    $scope.categories = categories
]

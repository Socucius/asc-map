angular.module('app').controller 'HomeController', [
  '$scope', 'categories', 'Category'
  ($scope, categories, Category) ->
    console.log categories
    Category.query().$promise.then (d) ->
      console.log d
]

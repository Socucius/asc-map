angular.module('factories').factory 'Category', ($resource) ->
  return $resource('/api/v1/categories/:id')

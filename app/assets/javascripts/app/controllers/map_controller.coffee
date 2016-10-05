angular.module('app').controller 'MapController', [
  '$scope', '$rootScope', 'places'
  ($scope, $rootScope, places) ->
    $scope.places = places

    convertPlacesPositions = (places) ->
      angular.forEach places, (place, key) ->
        place.position = [parseInt(place.latitude), parseInt(place.longitude)]

    convertPlacesPositions($scope.places)

]

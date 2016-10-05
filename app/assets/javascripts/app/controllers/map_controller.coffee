angular.module('app').controller 'MapController', [
  '$scope', '$rootScope', 'places', '$uibModal'
  ($scope, $rootScope, places, $uibModal) ->
    $scope.places = places

    convertPlacesPositions = (places) ->
      angular.forEach places, (place, key) ->
        place.position = [parseInt(place.latitude), parseInt(place.longitude)]

    convertPlacesPositions($scope.places)


    $scope.showPlace = (place) ->
      console.log place
      $uibModal.open({
        animation: true,
        ariaLabelledBy: 'modal-title',
        ariaDescribedBy: 'modal-body',
        templateUrl: 'place.html',
        controller: 'ShowPlaceController',
        size: 'lg',
        resolve: {
        }
      });

]

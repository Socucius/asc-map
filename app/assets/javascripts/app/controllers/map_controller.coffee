angular.module('app').controller 'MapController', [
  '$scope', '$rootScope', 'places', '$uibModal'
  ($scope, $rootScope, places, $uibModal) ->
    $scope.places = places

    convertPlacesPositions = (places) ->
      angular.forEach places, (place, key) ->
        place.position = [parseInt(place.latitude), parseInt(place.longitude)]

    $scope.showPlace = (place) ->
      console.log place
      $uibModal.open({
        animation: true,
        ariaLabelledBy: 'modal-title',
        ariaDescribedBy: 'modal-body',
        templateUrl: 'places/index.html',
        controller: 'ShowPlaceController',
        size: 'lg',
        resolve:
          place: ['Restangular', '$stateParams', (Restangular, $stateParams) ->
            Restangular.one('categories', $stateParams.categoryId).one('places', place.id).get()
          ]
      })


    # init

    convertPlacesPositions($scope.places)
]

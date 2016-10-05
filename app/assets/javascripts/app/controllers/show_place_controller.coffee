angular.module('app').controller 'ShowPlaceController', [
  '$scope', '$uibModal', 'placeData'
  ($scope, $uibModal, placeData) ->
    $scope.place = placeData.place
]

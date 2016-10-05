angular.module('app').controller 'ShowPlaceController', [
  '$scope', '$uibModal', 'place'
  ($scope, $uibModal, place) ->
    $scope.place = place
]

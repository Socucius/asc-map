angular.module('app').controller 'ShowPlaceController', [
  '$scope', '$uibModal', 'place'
  ($scope, $uibModal, place) ->
    console.log place
]
